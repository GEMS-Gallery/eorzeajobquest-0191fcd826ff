import Array "mo:base/Array";
import Text "mo:base/Text";

actor {
  // Define a type for FFXIV jobs
  type Job = {
    name: Text;
    role: Text;
  };

  // Create a stable array to store FFXIV jobs
  stable let jobs: [Job] = [
    { name = "Paladin"; role = "Tank" },
    { name = "Warrior"; role = "Tank" },
    { name = "Dark Knight"; role = "Tank" },
    { name = "Gunbreaker"; role = "Tank" },
    { name = "White Mage"; role = "Healer" },
    { name = "Scholar"; role = "Healer" },
    { name = "Astrologian"; role = "Healer" },
    { name = "Sage"; role = "Healer" },
    { name = "Monk"; role = "DPS" },
    { name = "Dragoon"; role = "DPS" },
    { name = "Ninja"; role = "DPS" },
    { name = "Samurai"; role = "DPS" },
    { name = "Reaper"; role = "DPS" },
    { name = "Bard"; role = "DPS" },
    { name = "Machinist"; role = "DPS" },
    { name = "Dancer"; role = "DPS" },
    { name = "Black Mage"; role = "DPS" },
    { name = "Summoner"; role = "DPS" },
    { name = "Red Mage"; role = "DPS" },
    { name = "Blue Mage"; role = "DPS" }
  ];

  // Public query function to get all jobs
  public query func getAllJobs() : async [Job] {
    jobs
  };
};
