import streamlit as st
import cmath

def solve_quadratic(a, b, c):
    """Solves the quadratic equation ax^2 + bx + c = 0"""
    if a == 0:
        return "Coefficient 'a' cannot be zero.", None

    discriminant = (b**2) - (4*a*c)

    if discriminant >= 0:
        root1 = (-b - discriminant**0.5) / (2*a)
        root2 = (-b + discriminant**0.5) / (2*a)
        if root1 == root2:
            return "The equation has one real root:", f"Root: {root1}"
        else:
            return "The equation has two distinct real roots:", f"Root 1: {root1}<br>Root 2: {root2}"
    else:
        root1 = (-b - cmath.sqrt(discriminant)) / (2 * a)
        root2 = (-b + cmath.sqrt(discriminant)) / (2 * a)
        return "The equation has two complex roots:", f"Root 1: {root1}<br>Root 2: {root2}"

st.title("Quadratic Equation Solver")
st.write("This app solves the quadratic equation `ax^2 + bx + c = 0`")

st.sidebar.header("User Input Coefficients")

a = st.sidebar.number_input("Enter coefficient a", value=1.0)
b = st.sidebar.number_input("Enter coefficient b", value=-3.0)
c = st.sidebar.number_input("Enter coefficient c", value=2.0)

if st.sidebar.button("Solve"):
    message, roots = solve_quadratic(a, b, c)
    st.subheader(message)
    if roots:
        st.write(roots, unsafe_allow_html=True)
