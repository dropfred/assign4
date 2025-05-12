// Practice1: finish SpikyPlatform
class SpikyPlatform extends Platform {
  int damage = 1;

  SpikyPlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }

  void interact(Player player) {
    super.interact(player);
    player.takeDamage(damage);
    damage = 0; // Damage only once
  }

  void display() {
    // Use a different image for spiky platforms
    image(spikyPlatformImage, x, y, w, h);
  }

  void playPlatformSound() {
    spikyPlatformSound.play(); // Play the spiky platform sound
  }
}
