const users = [
  { id: 1, name: "Anna", age: 22, city: "Moscow", isActive: true },
  { id: 2, name: "Oleg", age: 17, city: "Kazan", isActive: false },
  { id: 3, name: "Ivan", age: 30, city: "Moscow", isActive: true },
  { id: 4, name: "Maria", age: 25, city: "Sochi", isActive: false }
];

function getActiveUsers(usersArray) {
  return usersArray.filter(user => user.isActive);
}

const getUserNames = (usersArray) => {
  return usersArray.map(user => user.name);
};

function findUserById(usersArray, id) {
  const foundUser = usersArray.find(user => user.id === id);
  return foundUser || null;
}

function getUsersStatistics(usersArray) {
  const total = usersArray.length;
  const active = usersArray.filter(user => user.isActive).length;
  
  return {
    total: total,
    active: active,
    inactive: total - active
  };
}

function getAverageAge(usersArray) {
  if (usersArray.length === 0) return 0;
  
  const totalAge = usersArray.reduce((sum, user) => sum + user.age, 0);
  return totalAge / usersArray.length;
}

function groupUsersByCity(usersArray) {
  return usersArray.reduce((result, user) => {
    if (!result[user.city]) {
      result[user.city] = [];
    }
    result[user.city].push(user);
    return result;
  }, {});
}


console.log("Активные пользователи:");
console.log(getActiveUsers(users));

console.log("\nИмена пользователей:");
console.log(getUserNames(users));

console.log("\nПоиск пользователя по ID (3):");
console.log(findUserById(users, 3));

console.log("\nПоиск пользователя по ID (99):");
console.log(findUserById(users, 99));

console.log("\nСтатистика пользователей:");
console.log(getUsersStatistics(users));

console.log("\nСредний возраст:");
console.log(getAverageAge(users).toFixed(2));

console.log("\nГруппировка по городам:");
console.log(groupUsersByCity(users));