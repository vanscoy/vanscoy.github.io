---
title: Signals and Systems
subtitle: ECE 306
slug: ECE306
layout: "single"
content:
  - part: Fundamentals
    lectures:
      - title: Introduction
        tags: [signal, system]
        links:
          - name: slides
            url: intro.html
      - title: Signal properties and transformations
        tags: [time, domain, codomain, dimensionality, Periodic Signal, signal-transformation]
      - title: Common signals and sampling
        tags: [step-signal, impulse-signal, sinusoid, exponential-signal]
      - title: Complex exponentials
        tags: [complex-exponential-signal, complex-number]
  - part: Fourier Series
    lectures:
      - title: Introduction
        tags: [fourier-series]
      - title: Continuous time
        tags: [continuous-time-fourier-series]
      - title: Discrete time
        tags: [discrete-time-fourier-series]
  - part: Discrete-Time LTI Systems
    lectures:
    - title: System properties
      tags: [causality, dimensionality, dynamics, linearity, time, time-invariance]
    - title: LTI systems
      tags: []
    - title: Impulse response and convolution
      tags: [impulse-response, convolution, geometric-series]
    - title: Zero-state response
      tags: [zero-state-response]
    - title: z-Transform properties and pairs
      tags: [z-transform]
    - title: Inverse z-transform
      tags: [inverse-z-transform]
    - title: Transfer function and difference equations
      tags: [transfer-function, difference-equation]
    - title: Total response using the z-transform
      tags: []
    - title: Solving difference equations
      tags: []
    - title: Stability
      tags: [stability]
    - title: Frequency response
      tags: [frequency-response]
    - title: Filters
      tags: [filter]
  - part: Continuous-Time LTI Systems
    lectures:
    - title: Continuous-time impulse response and convolution
      tags: [impulse-respnse, convolution]
    - title: Laplace transform
      tags: [laplace-transform]
    - title: Fourier transform
      tags: [fourier-transform]
---

Study of the principles of signals and systems. The course combines lectures and simulation laboratory exercises to expose students to the theories and concepts of both continuous-time and discrete-time forms of signals and systems, as well as their applications in communication systems, control systems, and signal processing.

<!--more-->

<div class="course">
  <table border="1">
    <tr>
      <th class="col1"></th>
      <th class="col2">Topic</th>
      <th class="col3">References</th>
    </tr>
    <tr>
      <td class="col1">1</td>
      <td class="col2">Introduction</td>
      <td class="col3">Sections 1.3 and 1.6</td>
    </tr>
    <tr>
      <td class="col1">2</td>
      <td class="col2">Classification of systems</td>
      <td class="col3">Sections 1.7 and 3.4</td>
    </tr>
    <tr>
      <td class="col1">3</td>
      <td class="col2">Difference equations and transfer functions</td>
      <td class="col3">Section 3.5</td>
    </tr>
    <tr>
      <td class="col1">4</td>
      <td class="col2">Simulation diagrams</td>
      <td class="col3">Section 5.4</td>
    </tr>
    <tr>
      <td class="col1">5</td>
      <td class="col2">Zero-input response</td>
      <td class="col3">Section 3.6</td>
    </tr>
    <tr>
      <td class="col1">6</td>
      <td class="col2">Zero-state response</td>
      <td class="col3">Sections 3.8 and 3.9</td>
    </tr>
    <tr>
      <td class="col1">7</td>
      <td class="col2">Impulse response</td>
      <td class="col3">Section 3.7</td>
    </tr>
    <tr>
      <td class="col1">8</td>
      <td class="col2">Convolution</td>
      <td class="col3">Section 3.8</td>
    </tr>
    <tr>
      <td class="col1">9</td>
      <td class="col2">$z$-Transform</td>
      <td class="col3">Sections 5.1&ndash;5.2</td>
    </tr>
  </table>
</div>

<br>

<div class="course tab-content material">

<div class="tab-content material">
  <table border="1">
    <tr>
      <td class="col1">10</td>
      <td class="col2">Inverse $z$-transform</td>
      <td class="col3">Mar 8</td>
      <td class="col4">Section 5.1</td>
    </tr>
    <tr>
      <td class="col1">11</td>
      <td class="col2">System analysis using the $z$-transform</td>
      <td class="col3">Mar 10</td>
      <td class="col4">Section 5.3</td>
    </tr>
    <tr>
      <td class="col1">12</td>
      <td class="col2">Frequency response</td>
      <td class="col3">Mar 15</td>
      <td class="col4">Section 5.5</td>
    </tr>
    <tr>
      <td class="col1">13</td>
      <td class="col2">Frequency-selective filters</td>
      <td class="col3">Mar 17</td>
      <td class="col4">Section 5.6</td>
    </tr>
    <tr>
      <td class="col1">14</td>
      <td class="col2">Linear algebra</td>
      <td class="col3">Mar 22</td>
      <td class="col4">Section B.6</td>
    </tr>
    <tr>
      <td class="col1">15</td>
      <td class="col2">State-space description</td>
      <td class="col3">Mar 24</td>
      <td class="col4">Sections 10.1&ndash;10.2 and 10.6</td>
    </tr>
    <tr>
      <td class="col1">16</td>
      <td class="col2">Solving the state equations</td>
      <td class="col3">Mar 29</td>
      <td class="col4">Sections 10.3 and 10.6</td>
    </tr>
    <tr>
      <td class="col1">17</td>
      <td class="col2">Steady-state analysis</td>
      <td class="col3">Mar 31</td>
      <td class="col4"></td>
    </tr>
    <tr>
      <td class="col1">18</td>
      <td class="col2">Continuous-to-discrete transforms</td>
      <td class="col3">Apr 14</td>
      <td class="col4">Section 5.7</td>
    </tr>
    <tr>
      <td class="col1">19</td>
      <td class="col2">Sampling period and aliasing</td>
      <td class="col3">Apr 19</td>
      <td class="col4">Sections 5.5-2 and 8.1&ndash;8.2</td>
    </tr>
  </table>

  <p class="part">Part VI: Signal Transforms</p>

  <table border="1">
    <tr>
      <td class="col1">20</td>
      <td class="col2">Fourier series</td>
      <td class="col3">Apr 21</td>
      <td class="col4">Sections 6.1, 6.3, and 6.5</td>
    </tr>
    <tr>
      <td class="col1">21</td>
      <td class="col2">Fourier transform</td>
      <td class="col3">Apr 26</td>
      <td class="col4">Sections 7.1&ndash;7.3</td>
    </tr>
    <tr>
      <td class="col1">22</td>
      <td class="col2">Laplace transform</td>
      <td class="col3">Apr 28</td>
      <td class="col4">Sections 4.1&ndash;4.2 and 4.7</td>
    </tr>
    <tr>
      <td class="col1">23</td>
      <td class="col2">Discrete Fourier transform</td>
      <td class="col3">May 3</td>
      <td class="col4">Sections 8.5 and 9.1</td>
    </tr>
    <tr>
      <td class="col1">24</td>
      <td class="col2">Discrete-time Fourier transform</td>
      <td class="col3">May 5</td>
      <td class="col4">Sections 9.2&ndash;9.3</td>
    </tr>
  </table>
</div>
</div>