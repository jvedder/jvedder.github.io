#!/bin/sh
# download-images.sh
# Run this script once from the root of the site folder to download all images.
# Usage:  sh download-images.sh

mkdir -p images

download() {
  echo "Downloading $2 ..."
  curl -L -o "images/$2" "$1"
}

# About / shared
download "https://aldenvedder.com/wp-content/uploads/2024/01/Cropped-2024-Headshot-angle-Blue-gray-background-1-1024x1024.jpg" \
         "about-headshot.jpg"

# Chainsaw Sawmill
download "https://aldenvedder.com/wp-content/uploads/2024/01/IMG_20200516_085406-1024x768.jpg" \
         "sawmill-fallen-pine-tree.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/IMG_20200606_190136-768x1024.jpg" \
         "sawmill-log-butt-end.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/IMG_20200618_204207-1024x768.jpg" \
         "sawmill-mill-in-use.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/IMG_20200615_203927-768x1024.jpg" \
         "sawmill-mill-detail.jpg"

# Propane Gas Forge
download "https://aldenvedder.com/wp-content/uploads/2024/01/20191111_152634-1-1024x576.jpg" \
         "propane-forge-overview.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/01/20191111_152631-576x1024.jpg" \
         "propane-forge-burner-side.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/01/20191111_160426-576x1024.jpg" \
         "propane-forge-burner-detail.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/01/20191111_160437-1024x576.jpg" \
         "propane-forge-interior.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/01/IMG_20191006_162049-1024x768.jpg" \
         "propane-forge-early-build.jpg"

# Charcoal Forge
download "https://aldenvedder.com/wp-content/uploads/2024/01/IMG_0121-1024x768.jpg" \
         "charcoal-forge-completed.jpg"

# Miscellaneous Projects
download "https://aldenvedder.com/wp-content/uploads/2024/09/20190502_185212-576x1024.jpg"         "misc-01.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/IMG_20191201_125633-768x1024.jpg"     "misc-02.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/IMG_20200410_134838-1024x768.jpg"     "misc-03.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/IMG_20200504_215105-768x1024.jpg"     "misc-04.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/IMG_20200506_212420-1024x768.jpg"     "misc-05.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/IMG_20200506_214407-1024x768.jpg"     "misc-06.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/PXL_20201222_203702986-768x1024.jpg"  "misc-07.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/PXL_20201224_185208984-1024x768.jpg"  "misc-08.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/PXL_20201226_162356945-768x1024.jpg"  "misc-09.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/PXL_20201226_162500015-1024x768.jpg"  "misc-10.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/PXL_20220710_175246569-1024x768.jpg"  "misc-11.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/PXL_20221009_173803545-1024x768.jpg"  "misc-12.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/PXL_20221009_173808504-1024x768.jpg"  "misc-13.jpg"
download "https://aldenvedder.com/wp-content/uploads/2024/09/PXL_20231007_201309270.jpg"           "misc-14.jpg"

echo ""
echo "Done. $(ls images/*.jpg 2>/dev/null | wc -l) images in images/"
