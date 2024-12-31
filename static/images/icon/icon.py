from PIL import Image, ImageDraw, ImageFont

def generate_letter_image(letter, color, font_size=256, font_path='arial.ttf'):
    """Generates a PNG image of the given letter in the specified color."""

    # Create a new image with a transparent background
    img = Image.new('RGBA', (font_size, font_size), (0, 0, 0, 0))

    # Get a drawing context
    draw = ImageDraw.Draw(img)

    # Load the font
    font = ImageFont.truetype(font_path, font_size)

    # Calculate text position to center it
    text_width, text_height = draw.textsize(letter, font=font)
    x = (font_size - text_width) // 2
    y = (font_size - text_height) // 2

    # Draw the text on the image
    draw.text((x, y), letter, fill=color, font=font)

    return img

# Generate the image
letter_image = generate_letter_image('B', '#236076')

# Save the image as PNG
letter_image.save('letter_B.png', 'PNG')