@echo off
echo === MTF Dashboard Installer & Starter ===

REM Python-Umgebung prüfen
where python >nul 2>nul || (
    echo [!] Python wurde nicht gefunden. Bitte installiere Python und versuche es erneut.
    pause
    exit /b
)

REM Virtuelle Umgebung einrichten
if not exist venv (
    echo [+] Erstelle virtuelle Umgebung...
    python -m venv venv
)

REM Aktivieren & Abhängigkeiten installieren
call venv\Scripts\activate
echo [+] Installiere requirements...
pip install -r requirements.txt

REM Dashboard starten
echo [+] Starte Streamlit Dashboard...
streamlit run dashboard.py
pause
