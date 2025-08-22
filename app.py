import streamlit as st
import pandas as pd

# Add a title to the app
st.title("My Data Science Project")

# Add a header
st.header("Sample Data")

# Create a sample DataFrame
data = {
    'Column 1': [1, 2, 3, 4],
    'Column 2': [10, 20, 30, 40],
    'Column 3': ['A', 'B', 'C', 'D']
}
df = pd.DataFrame(data)

# Display the DataFrame
st.write("Here is a sample DataFrame:")
st.write(df)

# Add an interactive widget
st.sidebar.header("User Input")
slider_value = st.sidebar.slider("Select a value", 0, 100, 50)
st.sidebar.write("You selected:", slider_value)

# Display the selected value in the main app
st.write("The selected slider value is:", slider_value)
