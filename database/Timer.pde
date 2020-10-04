class Timer {

  float startSek;
  float sek;
  float a = frameRate;
  boolean klar;

  Timer ( float sek_ ) {
    startSek = sek_;
    sek = sek_;
    klar = true;
  }

  void reset() {
    sek = startSek;
  }

  void countDown() {
    if ( !klar ) {
      sek -= 0.0167;
      if ( sek <= 0 ) {
        klar = !klar;
        reset();
      }
    }
  }
}
