# OpenSCAD Schemas & 3D Print Designs

A repository for storing OpenSCAD design schemas and exporting STL files optimized for the **Bambu Lab A1 Mini** 3D printer.

---

## 🖨️ Printer Profile: Bambu Lab A1 Mini

- **Build Volume:** 180 × 180 × 180 mm
- **Recommended Export Format:** Binary STL or 3MF
- **Slicer:** Bambu Studio

> [!TIP]
> Keep your model dimensions within **180 mm** in all axes ($X, Y, Z$) to avoid fitting issues on the A1 Mini build plate.

---

## 📁 Repository Structure

```text
OpenSCAD-schemas/
├── README.md
├── .gitignore
└── designs/
    └── my-first-design/
        ├── model.scad          # Paste your OpenSCAD code here
        └── exports/            # Save exported .stl / .3mf files here
```

For every new design, create a new folder under `designs/`:
```bash
mkdir -p designs/<design-name>/exports
```

---

## 🚀 Workflow

### 1. Paste Your OpenSCAD Schema
Open [`designs/my-first-design/model.scad`](file:///Users/beholder/Projects/OpenSCAD-schemas/designs/my-first-design/model.scad) in your favorite editor or the OpenSCAD GUI, and paste your code.

### 2. Render & Export STL

#### In OpenSCAD GUI:
1. Press `F5` to Preview.
2. Press `F6` to Render full geometry.
3. Press `F7` (or `File > Export as STL...`).
4. Save the file into the corresponding `exports/` directory (e.g. `exports/model.stl`).

#### Via Terminal (Optional CLI):
```bash
openscad -o designs/my-first-design/exports/model.stl designs/my-first-design/model.scad
```

### 3. Slice and Print with Bambu Studio
1. Open **Bambu Studio**.
2. Select printer: **Bambu Lab A1 Mini 0.4 nozzle** (or your nozzle size).
3. Drag and drop the exported `.stl` file from `exports/`.
4. Choose filament profile, slice the plate, and send to printer!
