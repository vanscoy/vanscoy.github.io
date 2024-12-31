using BibTeX

cd("G:\\My Drive\\website\\hugo\\utils")


bibfile = "G:\\My Drive\\website\\hugo\\data\\publications.bib"


function ref_item(label, entry)

    if entry["type"] == "article"
        return bibtex_article(label, entry)
    else
        return label
    end
    # io = IOBuffer()

    # author = entry["author"]
        
    # # author_last, author_first = strip.(split(author, ","))

    # write(io, "<li id=\"#$label\">")
    # write(io, """$author, <span style="font-style:italic;">$(entry["title"])</span>. $(entry["year"]) $(entry["booktitle"])""")
    # write(io, "</li>")
    # return String(take!(io))
end

function string_vec_to_html_list(strvec)
    str = "<ul>"
    for s in strvec
        str *= "<li>" * s * "</li>"
    end
    str *= "</ul>"

    return str
end

function bibtex_author(author)
    author = replace(author, "\\BV" => "Van Scoy, Bryan")
    author = replace(author, "\\' { e } " => "&eacute;")
    author = replace(author, "\\' { i } " => "&iacute;")

    author_string = ""
    author_list = split(author, " and ")
    first, last = "", ""
    for (k,a) in enumerate(author_list)
        if contains(a, ",")
            first_last = strip.(split(a, ","), ' ')
            if length(first_last) >= 2
                first = first_last[2]
                last  = first_last[1]
            end
        else
            first_last = rsplit(a, limit=1)
            first = first_last[1]
            last = (length(first_last) >= 2 ? first_last[2] : "")
        end

        author_list[k] = first * " " * last

        author_string *= author_list[k]

        if k < length(author_list)-1
            author_string *= ", "
            elseif k == length(author_list)-1
            if length(author_list) >= 3
                author_string *= ", and "
            else
                author_string *= " and "
            end
        end
    end

    return author_string
end

function bibtex_title(title)
    title = strip(title, ['{','}',' ',','])
end

function bibtex_journal(journal)
    journal = replace(journal, "\\TCNS" => "IEEE Transactions on Control of Network Systems")
    journal = replace(journal, "\\CSL"  => "IEEE Control Systems Letters")
    journal = replace(journal, "\\CSM"  => "IEEE Control Systems Magazine")
end

function bibtex_pages(pages)
    if contains(pages, "-")
        pages = split(pages, "-", limit=2)[1] * "&ndash;" * rsplit(pages, "-", limit=2)[2]
    end
    if !isempty(pages)
        pages = ", pp. $pages"
    end
    return pages
end

function bibtex_volume(volume)
    if !isempty(volume)
        volume = ", vol. $volume"
    end
    return volume
end

function bibtex_number(number)
    if !isempty(number)
        number = ", no. $number"
    end
    return number
end

function bibtex_year(year)
    if !isempty(year)
        year = ", $year"
    end
    return year
end

function bibtex_article(label, entry)
    author  = entry["author"]
    title   = entry["title"]
    journal = entry["journal"]
    volume  = entry["volume"]
    number  = entry["number"]
    pages   = entry["pages"]
    year    = entry["year"]
    url     = entry["url"]
    doi     = entry["doi"]
    
    return """$label, $(bibtex_author(author)), &ldquo;$(bibtex_title(title)),&rdquo; <span style="font-style:italic;">$(bibtex_journal(journal))</span>$(bibtex_volume(volume))$(bibtex_number(number))$(bibtex_pages(pages))$(bibtex_year(year))."""
end

function publications(file)
    _, refs = parse_bibtex(read(file, String))

    out = IOBuffer()

    journal_papers = filter(p -> last(p)["type"] == "article", refs)
    journal_papers = sort(collect(journal_papers), by=p->last(p)["year"], rev=true)
    write(out, "<h2>Journal Publications</h2>\n")
    write(out, "<ul class='journal-papers'>\n")
    for (label, entry) in journal_papers
        write(out, "<li>\n" * ref_item(label, entry) * "\n</li>\n")
    end
    write(out, "</ul>")

    conference_papers = filter(p -> last(p)["type"] == "inproceedings", refs)
    write(out, "<h2>Conference Proceedings</h2>\n")
    write(out, "<ul class='conference-papers'>\n")
    for (label, entry) in conference_papers
        write(out, "<li>\n" * ref_item(label, entry) * "\n</li>\n")
    end
    write(out, "</ul>\n")
    
    
    return String(take!(out))
end

open("G:\\My Drive\\website\\hugo\\content\\publications\\index.html", "w") do file
    write(file, publications(bibfile))
end
