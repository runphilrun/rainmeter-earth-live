# EarthLive: a dynamic wallpaper powered by Rainmeter
EarthLive is a [Rainmeter](https://www.rainmeter.net/) skin that fetches the latest daily natural color imagery of Earth from the [EPIC camera onboard the DSCOVR spacecraft](https://epic.gsfc.nasa.gov/) and displays it as the system wallpaper.

This project was inspired by the unofficial Twitter bot ([@dscovr_epic](https://twitter.com/dscovr_epic?lang=en)) created by [russss](https://github.com/russss/dscovr-epic).

## How it works
The skin uses Rainmeter's [WebParser plugin](https://docs.rainmeter.net/manual/plugins/webparser/) to fetch data provided by the [DSCOVR: EPIC API](https://epic.gsfc.nasa.gov/about/api) developed by NASA.
Image name, date, lat/long of the centroid, and more information is accessible as text from simply visiting a URL.
The image file is located at a systematic location with only the name changing for each picture.

Once data is fetched from NASA, the image is displayed and the date it was taken is overlaid on top.

The skin updates once per second. NASA's server is pinged once every 10 minutes.

## Settings
Settings may be changed by commenting/uncommenting chunks of code in `Settings.ini`. 
Currently the only available setting is whether to fetch "natural" color or "enhanced" color images.

## Plans for future versions
*  Aesthetically pleasing photoprocessing, such as the processing done by the [@dscovr_epic](https://twitter.com/dscovr_epic?lang=en)
*  Geolocation from the lat/long coordinates of the image's centroid that are included in image metadata
*  "Slide show" mode that fetches multiple recent images and forms an animated wallpaper

## About DSCOVR: EPIC
From [EPIC's API _about_ section](https://epic.gsfc.nasa.gov/about/api):
> The EPIC API provides information on the daily imagery collected by DSCOVR's Earth Polychromatic Imaging Camera (EPIC) instrument. Uniquely positioned at the Earth-Sun Lagrange point, EPIC provides full disc imagery of the Earth and captures unique perspectives of certain astronomical events such as lunar transits using a 2048x2048 pixel CCD (Charge Coupled Device) detector coupled to a 30-cm aperture Cassegrain telescope.
