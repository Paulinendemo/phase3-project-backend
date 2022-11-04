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
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Harry_Maguire_2019.jpg/1200px-Harry_Maguire_2019.jpg",
        position: "Defender",
        goals: 0,
        assists: 0,
        team_id: 1
    },
    {
        name: "Serhio Aguero",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Sergio_Ag%C3%BCero_2019.jpg/1200px-Sergio_Ag%C3%BCero_2019.jpg",
        position: "Forward",
        goals: 10,
        assists: 0,
        team_id: 2
    },
])

puts "✅ Done seeding!"
