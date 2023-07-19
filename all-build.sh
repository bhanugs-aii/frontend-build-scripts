#!/bin/bash
SECONDS=0

# ===========================================================

echo -e "++++++++++++++++++++++++\n
        FORMULATION BUILD \n
     +++++++++++++++++++++++++++++++++++\n"

./formulation-build.sh

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        Library MANAGEMENT \n
     +++++++++++++++++++++++++++++++++++\n"

./libraries-build.sh;

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        HEADER MANAGEMENT \n
     +++++++++++++++++++++++++++++++++++\n"

./header-build.sh;

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        INVENTORY MANAGEMENT \n
     +++++++++++++++++++++++++++++++++++\n"

./inventory-build.sh;

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        PROJECT MANAGEMENT\n
     +++++++++++++++++++++++++++++++++++\n"

./projects-build.sh;

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        TASK MANAGEMENT\n
     +++++++++++++++++++++++++++++++++++\n"

./tasks-build.sh

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        SOP MANAGEMENT\n
     +++++++++++++++++++++++++++++++++++\n"

./sop-build.sh;

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        USER MANAGEMENT\n
     +++++++++++++++++++++++++++++++++++\n"

./users-build.sh

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        REPORTS MANAGEMENT\n
     +++++++++++++++++++++++++++++++++++\n"

./report-build.sh

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"

# ============================================================

echo -e "++++++++++++++++++++++++\n
        ALL PROJECTS ----- COMPLETED BUILD \n
     +++++++++++++++++++++++++++++++++++\n"

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"
