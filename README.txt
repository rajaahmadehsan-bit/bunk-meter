BUNK METER - Assignment 2 (Project UI)

HOW TO RUN
1. Unzip this folder (e.g. to C:\Users\<you>\bunk_meter).
2. Open a terminal inside the folder and run ONCE:
       flutter create . --project-name bunk_meter
   (this adds the android/web/windows platform folders; your lib/ code stays)
3. Then:
       flutter pub get
       flutter run -d chrome
   or open the folder in VS Code, pick Chrome (bottom-right), open lib/main.dart, press F5.

TO SEE OTHER SCREENS
Change only the "home:" line in lib/main.dart, then hot restart (Shift+R).

IMAGES
assets/images/ contains placeholder images. Replace with your own using the SAME filenames:
logo.png, banner.png, study.png
