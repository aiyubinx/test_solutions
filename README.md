# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Functional/Product Requirement

- There should be 100 list items, each should be set at 0 initially and user can increment its
  count.
- The count incremented by user should be persisted when he scrolls the list.

# Task:

- Solve the functional requirement. 
    Solved
- Review this file from Code Review perspective, list the issues and what changes should be made,
  perform the changes to the file.
    Issues were : 
            1. Took the main List widget stateless and internal stateful. So, there were no control on the list widget
            2. Counter declared in the inner widget which can be initialised when the List item initialised
            3. Due to recycling the list widgets, each widget gets refreshed and takes initial value to 0
- Think of it as a intern checked in this code and as a senior has to code review and fix the code
  from implementation perspective to make it correct and efficient.
  To make it correct and efficient : 
            1. Need the main List widget stateful had the global array of counters [initialize based on requirement]
            2. List widget need to be configure based on counter array
            3. Set a callback function to increment counter
- Send the fixed file back to the recruiter.
   Sent 
