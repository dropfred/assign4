// Practice3: finish HealPlatform
class HealPlatform extends Platform {
  int healingAmount = 1;
  float potionW = 20, potionH = 20;

  HealPlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }

  void interact(Player player) {
    super.interact(player);
    if (healingAmount != 0) {
      // Check if player catches the potion
      if (player.x < x + (w + potionW) / 2 && player.x + player.w > x + (w - potionW) / 2) {
        healSound.play();
        player.health += healingAmount;
        healingAmount = 0; // Heal only once
      }
    }
  }

  void display() {
    super.display();
    // Draw the potion
    if (healingAmount != 0) {
      float positionY = y - potionH - 5 - 10 * sin(TWO_PI * (frameCount / 60.0));
      image(healPotionImage, x + (w - potionW) / 2, positionY, 20, 20);
    }
  }
}
