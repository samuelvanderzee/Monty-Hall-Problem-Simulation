i = 0
nochange = 0
while i < 100
car = randi([1,3])
guess = randi([1, 3])
if car == guess
  nochange++
end
i++
end
j = 0
withchange = 0
while j < 100
  car = randi([1,3])
guess = randi([1, 3])
for k = 1:3
  if k~= car && k~= guess
    revealed = k
  end
end
for l = 1:3
  if l~=guess && l~= revealed
    guess2 = l
  end
end

if car == guess2
  withchange++
end
j++
end
y = [nochange, withchange]
bar(y)
