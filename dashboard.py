import streamlit as st

st.title("📈 Jürgens 123 MTF Strategy Dashboard")
st.write("Willkommen zu deinem eigenen Trading-Frontend!")

# Platzhalter für späteren Backtest
if st.button("🚀 Backtest starten"):
    st.success("Backtest wurde gestartet (Platzhalter).")
from engine import run_backtest  # Falls nicht schon oben importiert

uploaded = st.file_uploader("📁 Lade deine CSV-Datei hoch", type="csv")

if uploaded is not None:
    with open("data.csv", "wb") as f:
        f.write(uploaded.read())

    if st.button("🚀 Backtest starten"):
        run_backtest("data.csv")
        st.success("Backtest abgeschlossen!")
