package internal

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

// Функция для парсинга инпута с консоли
func ParseInput(inp string) (int, int) {
	inp = strings.TrimSpace(inp) // Убираем лишние пробелы на концах

	var inpSlice []string
	if strings.ContainsAny(inp, ",") { // Если строка содержит запятые
		inpSlice = strings.Split(inp, ", ") // Разделяем по запятой и пробелу числа
	} else {
		inpSlice = strings.Split(inp, " ") // Если запятых нет - разделяем по пробелу
	}

	// Если введено не два числа выводим ошибку
	if len(inpSlice) != 2 {
		fmt.Println("Ты ввел не два числа")
		os.Exit(1)
	}

	// Парсим строки в int
	a, err1 := strconv.Atoi(inpSlice[0])
	n, err2 := strconv.Atoi(inpSlice[1])

	// Если хотя бы одно из введеных чисел не распарсилось значит это не int - выводим ошибку
	if err1 != nil || err2 != nil {
		fmt.Println("Одно из введеных значений не является int-ом")
		os.Exit(1)
	}

	return a, n
}
