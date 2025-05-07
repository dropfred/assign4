// Practice2: finish FragilePlatform
final int FRAGILE_PLATFORM_DURATION = 50; // Duration before the platform breaks

class FragilePlatform extends Platform {
  int duration = FRAGILE_PLATFORM_DURATION;

  FragilePlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }

  void interact(Player player) {
    if (duration > 0) {
      super.interact(player);
      if (duration == FRAGILE_PLATFORM_DURATION) {
        fragilePlatformSound.play(); // Play the fragile platform sound  
      }
      duration--;
      if (duration == 0) {
        fragilePlatformBrokenSound.play(); // Play the broken fragile platform sound  
      }
    }
  }

  void display() {
    // Use a different image for fragile platforms
    PImage image = (duration > 0) ? fragilePlatformImage : fragilePlatformBrokenImage;
    image(image, x, y, w, h);
  }
}
