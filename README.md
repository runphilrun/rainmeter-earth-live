# Blue Marble: a dynamic wallpaper powered by Rainmeter
EarthLive is a [Rainmeter](https://www.rainmeter.net/) skin that fetches the latest daily color imagery of Earth from the [EPIC camera onboard the DSCOVR spacecraft](https://epic.gsfc.nasa.gov/) and displays it as the system wallpaper.

This project was inspired by the unofficial Twitter bot ([@dscovr_epic](https://twitter.com/dscovr_epic?lang=en)) created by [russss](https://github.com/russss/dscovr-epic).

## How it works
The skin uses Rainmeter's [WebParser plugin](https://docs.rainmeter.net/manual/plugins/webparser/) to fetch data provided by the [DSCOVR: EPIC API](https://epic.gsfc.nasa.gov/about/api) developed by NASA.
Image name, date, lat/long of the centroid, and more information is accessible as text from simply visiting a URL.
Image files are located at a systematic location with only the name changing for each picture.
When the API is queried for recent data, it serves between 8 and 20 images over a single day (~00:00 thru 23:59 UTC) for the most recent day.

NASA's server is pinged once every 10 minutes.
This skin scrubs the API data for these images and their metadata.
All images are downloaded and stored in the skin's DownloadFile directory.
An image is displayed and its timestamp is overlaid on top.
Images are cycled in order to make a "slideshow" of the most recent images of Earth for one full day.
When a new set of images is posted, the new set will be downloaded and replace existing images.

## Installation
* Run the included `.rmskin` package to automatically install the skin.
* Place `BlueMarble.ini` and `Settings.ini` in a directory within `C:\User\your-username\Documents\Rainmeter\Skins` and load the `BlueMarble.ini` skin from the Rainmeter Manage window.

## Settings
Settings may be changed by commenting/uncommenting chunks of code in `Settings.ini`.
Available settings:
* Display natural or enhanced color images (both are served by NASA DSCOVR EPIC)
* Fetch PNG or JPG images
* Caption font size and color
* Rate at which the slideshow cycles through images

## Plans for future versions
*  Aesthetically pleasing photoprocessing, such as the processing done by the [@dscovr_epic](https://twitter.com/dscovr_epic?lang=en).
*  Geolocation from the lat/long coordinates of the image's centroid that are included in image metadata.
*  Separate the timestamp from the image meter so that it can be adjusted by the user.

## About DSCOVR: EPIC
__[Earth Polychromatic Imaging Camera (EPIC)](https://epic.gsfc.nasa.gov/epic)__:
> EPIC (Earth Polychromatic Imaging Camera) is a 10-channel spectroradiometer (317 – 780 nm) onboard NOAA’s DSCOVR (Deep Space Climate Observatory) spacecraft. EPIC provides 10 narrow band spectral images of the entire sunlit face of Earth using a 2048x2048 pixel CCD (Charge Coupled Device) detector coupled to a 30-cm aperture Cassegrain telescope (Figure 1).
>
> ![Figure 1. EPIC 30 cm f/9.6 Cassegrain telescope showing the area containing the CCD (red) filter wheel (green).](https://epic.gsfc.nasa.gov/assets/Image_002.jpg)
>
> The DSCOVR spacecraft is located at the Earth-Sun Lagrange-1 (L-1) point giving EPIC a unique angular perspective that will be used in science applications to measure ozone, aerosols, cloud reflectivity, cloud height, vegetation properties, and UV radiation estimates at Earth's surface.

__[EPIC's API](https://epic.gsfc.nasa.gov/about/api)__:
> The EPIC API provides information on the daily imagery collected by DSCOVR's Earth Polychromatic Imaging Camera (EPIC) instrument. Uniquely positioned at the Earth-Sun Lagrange point, EPIC provides full disc imagery of the Earth and captures unique perspectives of certain astronomical events such as lunar transits using a 2048x2048 pixel CCD (Charge Coupled Device) detector coupled to a 30-cm aperture Cassegrain telescope.

__[Image Use Policy]()__:
> Materials published by the NASA EPIC Team, including imagery, are freely available for re-production or re-use, including commercial purposes. All DSCOVR EPIC data products are archived and publicly distributed through the NASA Langley Atmospheric Science Data Center (ASDC): https://eosweb.larc.nasa.gov.
