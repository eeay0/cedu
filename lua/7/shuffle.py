import random


def shuffle_file_entries(file_path):
    # Read the entries from the file
    with open(file_path, 'r') as file:
        entries = file.readlines()

    # Strip newline characters from each entry
    entries = [entry.strip() for entry in entries]

    # Shuffle the entries
    random.shuffle(entries)

    with open(file_path, 'w') as file:
        for entry in entries:
            file.write(entry + '\n')


def main():
    file_path = './fruit_vegetable_list.txt'
    shuffle_file_entries(file_path)


if __name__ == "__main__":
    main()
