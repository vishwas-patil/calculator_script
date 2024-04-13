Here's the improved text content for your project description:

---

I've developed a calculator's `add` method based on the requirements outlined in the following link: [TDD Assessment](https://blog.incubyte.co/blog/tdd-assessment/).

The project consists of four files:

1. **calci.rb**: This file acts as the entry point, orchestrating the execution of other files.
   
2. **install_dependencies.rb**: This script checks for and installs necessary libraries if they are not already installed on your Ubuntu machine.

3. **add_numbers.rb**: Here, a function is defined to fulfill all input scenarios described in the requirement link. It handles the sum of positive numbers, delimiter context, negative number handling, and new line handling.

4. **add_numbers_spec.rb**: This file contains RSpec tests for each context covered in the `add_numbers.rb` file's `add` function.

Steps to run the project:

1. Run `ruby calci.rb`:
   - This command first executes `install_dependencies.rb`. If Ruby and RSpec are not installed, it installs these libraries.
   - Then, it runs `add_numbers.rb` and performs the `add` function for all input operations.
   - Finally, it executes `add_numbers_spec.rb`, running all the test cases.

You can also run specific files individually using the following commands:
- `ruby add_numbers.rb`
- `ruby add_numbers_spec.rb`

Also watch attached video for more understanding


Feel free to explore and run specific files as needed. If you encounter any issues or have questions, don't hesitate to reach out!

