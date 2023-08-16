// Get the form element
const form = document.getElementById('studentForm');

// Get the table element
const table = document.getElementById('studentTable');

// Add an event listener to the form on submit
form.addEventListener('submit', function (event) {
    event.preventDefault(); // Prevent form submission

    // Get the form values
    const firstName = document.getElementById('firstName').value;
    const lastName = document.getElementById('lastName').value;
    const dob = document.getElementById('dob').value;
    const parentName = document.getElementById('parentName').value;
    const address = document.getElementById('address').value;
    const city = document.getElementById('city').value;
    const phone = document.getElementById('phone').value;
    const grade = document.getElementById('grade').value;

    // Create a new row in the table
    const row = table.insertRow(-1);

    // Insert cells into the row
    const firstNameCell = row.insertCell(0);
    const lastNameCell = row.insertCell(1);
    const dobCell = row.insertCell(2);
    const parentNameCell = row.insertCell(3);
    const addressCell = row.insertCell(4);
    const cityCell = row.insertCell(5);
    const phoneCell = row.insertCell(6);
    const gradeCell = row.insertCell(7);

    // Set the cell values
    firstNameCell.innerHTML = firstName;
    lastNameCell.innerHTML = lastName;
    dobCell.innerHTML = dob;
    parentNameCell.innerHTML = parentName;
    addressCell.innerHTML = address;
    cityCell.innerHTML = city;
    phoneCell.innerHTML = phone;
    gradeCell.innerHTML = grade;

    // Reset the form
    form.reset();
});
