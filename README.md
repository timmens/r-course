# Introduction to Programming using R

[![Contributors][contributors-shield]][contributors-url]
[![MIT License][license-shield]][license-url]

## Table of Contents

* [About the course](#about-the-project)
* [Changing the Script](#changing-the-script)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)

## About The Course

On this page we provide all materials for the *Introductory R Course*.
The course starts on the 10.2.2020 (Monday) and goes until the 14.2.2020 (Friday).

### Script

The script can be found in the folder `script` and a nicely rendered version is available here: [online script](https://htmlpreview.github.io/?https://github.com/timmens/r-course/blob/master/script/script.html).

### Lecture Notes

All notes that were written during the live coding are available in the folder `lecture-notes`.

### Exercises

Solutions to the exercises can be found in the folder `exercises`, in which we also store the data which is needed to solve the exercises. (As of right now we cannot upload the exercises due to copyright issues.)
At the moment the exercise sheets themselves cannot be found online.

<!-- 
### Pizza

In the folder `pizza` we include the collected data on preferences over pizza types and the corresponding r script to aggregate the preferences using [Borda count](https://en.wikipedia.org/wiki/Borda_count). (Which we do because on Friday we order pizza for everyone.)
-->

### Outlook

On Friday I present on whats possible with R which I summarize in a small [outlook](https://htmlpreview.github.io/?https://github.com/timmens/r-course/blob/master/outlook/outlook.html).


## Changing the Script

If you wish to change the script feel free to do so. The script is rendered from an
r-markdown file which is found in ``script/script.Rmd``. Just open the file in RStudio
and run the following commands in the console

``R
rmarkdown::render("path/to/script.Rmd", output_format="tufte_html")
rmarkdown::render("path/to/script.Rmd", output_format="tufte_handout")
``

Hopefully RStudio will tell you which packages you need to install before you can run
these commands; however, since there are a thousand things that can go wrong with the
package versions or latex you might need to get your hands dirty on stackoverflow. Just
as an example I had to reinstall some latex related packages (on my linux machien) with

``zsh
$ sudo apt-get install texlive-xetex texlive-extra-utils texlive-fonts-recommended
``

but for your system you might need to do something very different.


## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create.
Any contributions you make are **greatly appreciated**, even if its just about a typo.
What you need to do in this case:

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Tim Mensinger - tim.mensinger@uni-bonn.de


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/timmens/r-course
[contributors-url]: https://github.com/timmens/r-course/graphs/contributors
[license-shield]: https://img.shields.io/badge/License-MIT-yellow.svg
[license-url]: https://github.com/timmens/r-course/blob/master/LICENSE
