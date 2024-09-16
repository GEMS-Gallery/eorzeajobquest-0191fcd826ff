import Array "mo:base/Array";
import Text "mo:base/Text";

actor {
  // Define a type for FFXIV jobs
  type Job = {
    name: Text;
    role: Text;
    image: Text;
  };

  // Create a stable array to store FFXIV jobs
  stable let jobs: [Job] = [
    { name = "Paladin"; role = "Tank"; image = "https://example.com/images/paladin.jpg" },
    { name = "Warrior"; role = "Tank"; image = "https://example.com/images/warrior.jpg" },
    { name = "Dark Knight"; role = "Tank"; image = "https://example.com/images/dark_knight.jpg" },
    { name = "Gunbreaker"; role = "Tank"; image = "https://example.com/images/gunbreaker.jpg" },
    { name = "White Mage"; role = "Healer"; image = "https://example.com/images/white_mage.jpg" },
    { name = "Scholar"; role = "Healer"; image = "https://example.com/images/scholar.jpg" },
    { name = "Astrologian"; role = "Healer"; image = "https://example.com/images/astrologian.jpg" },
    { name = "Sage"; role = "Healer"; image = "https://example.com/images/sage.jpg" },
    { name = "Monk"; role = "DPS"; image = "https://example.com/images/monk.jpg" },
    { name = "Dragoon"; role = "DPS"; image = "https://example.com/images/dragoon.jpg" },
    { name = "Ninja"; role = "DPS"; image = "https://example.com/images/ninja.jpg" },
    { name = "Samurai"; role = "DPS"; image = "https://example.com/images/samurai.jpg" },
    { name = "Reaper"; role = "DPS"; image = "https://example.com/images/reaper.jpg" },
    { name = "Bard"; role = "DPS"; image = "https://example.com/images/bard.jpg" },
    { name = "Machinist"; role = "DPS"; image = "https://example.com/images/machinist.jpg" },
    { name = "Dancer"; role = "DPS"; image = "https://example.com/images/dancer.jpg" },
    { name = "Black Mage"; role = "DPS"; image = "https://example.com/images/black_mage.jpg" },
    { name = "Summoner"; role = "DPS"; image = "https://example.com/images/summoner.jpg" },
    { name = "Red Mage"; role = "DPS"; image = "https://example.com/images/red_mage.jpg" },
    { name = "Blue Mage"; role = "DPS"; image = "https://example.com/images/blue_mage.jpg" }
  ];

  // Public query function to get all jobs
  public query func getAllJobs() : async [Job] {
    jobs
  };
};
