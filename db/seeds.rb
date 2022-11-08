puts "🌱 Seeding spices..."



teams = Team.create([
    {
        name: "Manchester United",
        logo: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1200px-Manchester_United_FC_crest.svg.png",
        matches_played: 0,
        matches_won: 0,
        matches_lost: 0,
        matches_drawn: 0,
        points: 0,
        coach: "Ole Gunnar Solskjaer"
    },
    {
        name: "Manchester City",
        logo: "https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png",
        matches_played: 0,
        matches_won: 0,
        matches_lost: 0,
        matches_drawn: 0,
        points: 0,
        coach: "Pep Guardiola"
    },

])

arsenal = Team.create(
    name: "Arsenal",
    logo: "https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Arsenal_FC.svg/1200px-Arsenal_FC.svg.png",
    matches_played: 0,
    matches_won: 0,
    matches_lost: 0,
    matches_drawn: 0,
    points: 0,
    coach: "Mikel Arteta"
)


players = Player.create([
    {
        name: "Harry Maguire",
        image: "https://img.a.transfermarkt.technology/portrait/header/177907-1663841733.jpg?lm=1",
        position: "Defender",
        goals: 0,
        assists: 0,
        team_id: 1
    },
    {
        name: "Serhio Aguero",
        image: "https://img.a.transfermarkt.technology/portrait/header/26399-1580460866.jpg?lm=1",
        position: "Forward",
        goals: 10,
        assists: 0,
        team_id: 2
    },
])

puts "✅ Done seeding!"
