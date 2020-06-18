def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, snack_to_check)
  for snack in person[:favourites][:snacks]
    if (snack == snack_to_check)
      return true
    end 
  end
  return false
end

def add_friend(person, new_friend)
  person[:friends] << new_friend
end

def remove_friend(person, old_friend)
  person[:friends].delete(old_friend)
end

def total_money(array_of_people)
group_money = 0  
  for person in array_of_people
    group_money += person[:monies]
  end
  return group_money
end

def loan_money(lender, borrower, value)
  lender[:monies] -= value
  borrower[:monies] += value
end

def group_snacks(group)
  array_of_snacks =[]
  for member in group
    for snack in member[:favourites][:snacks]
      array_of_snacks << snack
    end
  end
  return array_of_snacks
end