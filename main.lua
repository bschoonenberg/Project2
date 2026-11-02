require("L5")

colors = {'pink', 'yellow', 'blue', 'purple', 'magenta'}
ringColors = {}

counter = 0

function setup()
  size(800, 400)
  windowTitle("Project2")

  pickColor = random(colors)

  for i = 1, 5 do
    ringColors[i] = random(colors)
  end
end

function draw()

--purple nebula
  for i = 1, 40 do
    noStroke()
    fill(180, 80, 220, 8)
    circle(random(50, 750), random(50, 350), random(50, 180))
  end

--draws background rectangle to fade out previois frames
  noStroke()
  fill(83, 0, 94, 25)
  rect(0, 0, 800, 400)

--generates 30 stars with random position/size
  for i = 1, 30 do
    noStroke()
    fill('white')
   circle(random(0, 800), random(0, 400), random(1, 4))
  end
  
noFill()
strokeWeight(8)

--draws overlapping rings behind black hole
  for i = 1, 2 do
    push()
      translate(400, 200)
      rotate(50 + i * 3)

      noFill()
      stroke(random(colors))
      strokeWeight(6)

    --randomizes width/heigh
      ellipse(0, 0, random(600, 700), random(50, 75))
      ellipse(0, 0, random(300, 400), random(50, 150))
     ellipse(0, 0, random(400, 600), random(30, 60))
    pop()
  end

--draws black hole edge
  fill(random(colors))
  noStroke()
  circle(400, 200, 210)

--adds transparent purple glow around black hole
  noStroke()
  fill(180, 70, 255, 15)
  circle(400, 200, 250)

--pink glow
  fill(255, 120, 200, 35)
  circle(400, 200, 225)

--black hole
  fill('black')
  circle(400, 200, 200)

end