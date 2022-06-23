math.randomseed(os.time())

user_score = 0
comp_score = 0

lookup = {};
lookup["rock"] = {rock ="draw", paper = "lose", scissors = "win"}
lookup["paper"] = {rock ="win", paper = "draw", scissors = "lose"}
lookup["scissors"] = {rock ="lose", paper = "win", scissors = "draw"}

function randommove()
    local int_to_name = {"scissors", "rock", "paper"}


    return int_to_name[math.random(3)]
end

function GuessScore()
    print("your guess" ..user_guess, "comp_guess" ..comp_guess)

    if (lookup[user_guess][comp_guess] == win) then
        print("you just won against a machine that randomly chooses")
        user_score = user_score + 1
    
    elseif(lookup[user_guess][comp_guess] == lose) then 
        print("u are really bad at this")
        comp_score = comp_score + 1
    else
        print("draw")
        print(lookup[user_guess][comp_guess])
    end    
end

print("q = quit")
print()

loop = true
while loop do
    print("user: " ..user_score "comp: " ..comp_score)
    user_guess = io.stdin:read "*I"
    local letter_to_string = {s = "scissors", r = "rock", p = "paper"}

    if user_guess == "q" then
        loop = false
    elseif (user_guess == "r") or (user_guess == "p") or (user_guess == "s") then
        com_guess = randommove()
        EvaluateTheGuesses(letter_to_string[user_guess], com_guess)
    else
        print("Not Valid")
    end
end

