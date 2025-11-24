//
//  ElementView.swift
//  Notilify
//
//  Created by Ariel Araya-Madrigal on 4/6/23.
//

import SwiftUI

struct ElementView: View {
    @State private var atomicNumber: Int = 1
    let elements: [Element] = [
        Element(atomicNumber: 1, name: "Hydrogen", symbol: "H", mass: 1.008),
        Element(atomicNumber: 2, name: "Helium", symbol: "He", mass: 4.003),
        Element(atomicNumber: 3, name: "Lithium", symbol: "Li", mass: 6.941),
        Element(atomicNumber: 4, name: "Beryllium", symbol: "Be", mass: 9.012),
        Element(atomicNumber: 5, name: "Boron", symbol: "B", mass: 10.81),
        Element(atomicNumber: 6, name: "Carbon", symbol: "C", mass: 12.011),
        Element(atomicNumber: 7, name: "Nitrogen", symbol: "N", mass: 14.007),
        Element(atomicNumber: 8, name: "Oxygen", symbol: "O", mass: 15.999),
        Element(atomicNumber: 9, name: "Fluorine", symbol: "F", mass: 18.998),
        Element(atomicNumber: 10, name: "Neon", symbol: "Ne", mass: 20.180),
        Element(atomicNumber: 11, name: "Sodium", symbol: "Na", mass: 22.990),
        Element(atomicNumber: 12, name: "Magnesium", symbol: "Mg", mass: 24.305),
        Element(atomicNumber: 13, name: "Aluminum", symbol: "Al", mass: 26.981),
        Element(atomicNumber: 14, name: "Silicon", symbol: "Si", mass: 28.085),
        Element(atomicNumber: 15, name: "Phosphorus", symbol: "P", mass: 30.973),
        Element(atomicNumber: 16, name: "Sulfur", symbol: "S", mass: 32.07),
        Element(atomicNumber: 17, name: "Chlorine", symbol: "Cl", mass: 35.45),
        Element(atomicNumber: 18, name: "Argon", symbol: "Ar", mass: 39.9),
        Element(atomicNumber: 19, name: "Potassium", symbol: "K", mass: 39.098),
        Element(atomicNumber: 20, name: "Calcium", symbol: "Ca", mass: 40.08),
        Element(atomicNumber: 21, name: "Scandium", symbol: "Sc", mass: 44.956),
        Element(atomicNumber: 22, name: "Titanium", symbol: "Ti", mass: 47.86),
        Element(atomicNumber: 23, name: "Vanadium", symbol: "V", mass: 50.941),
        Element(atomicNumber: 24, name: "Chromium", symbol: "Cr", mass: 51.996),
        Element(atomicNumber: 25, name: "Manganese", symbol: "Mn", mass: 54.938),
        Element(atomicNumber: 26, name: "Iron", symbol: "Fe", mass: 55.84),
        Element(atomicNumber: 27, name: "Cobalt", symbol: "Co", mass: 58.934),
        Element(atomicNumber: 28, name: "Nickel", symbol: "Ni", mass: 58.693),
        Element(atomicNumber: 29, name: "Copper", symbol: "Cu", mass: 63.55),
        Element(atomicNumber: 30, name: "Zinc", symbol: "Zn", mass: 65.4),
        Element(atomicNumber: 31, name: "Gallium", symbol: "Ga", mass: 69.723),
        Element(atomicNumber: 32, name: "Germanium", symbol: "Ge", mass: 72.63),
        Element(atomicNumber: 33, name: "Arsenic", symbol: "As", mass: 74.921),
        Element(atomicNumber: 34, name: "Selenium", symbol: "Se", mass: 78.97),
        Element(atomicNumber: 35, name: "Bromine", symbol: "Br", mass: 79.90),
        Element(atomicNumber: 36, name: "Krypton", symbol: "Kr", mass: 83.80),
        Element(atomicNumber: 37, name: "Rubidium", symbol: "Rb", mass: 85.468),
        Element(atomicNumber: 38, name: "Strontium", symbol: "Sr", mass: 87.62),
        Element(atomicNumber: 39, name: "Yttrium", symbol: "Y", mass: 88.905),
        Element(atomicNumber: 40, name: "Zirconium", symbol: "Zr", mass: 91.22),
        Element(atomicNumber: 41, name: "Niobium", symbol: "Nb", mass: 92.906),
        Element(atomicNumber: 42, name: "Molybdenum", symbol: "Mo", mass: 95.95),
        Element(atomicNumber: 43, name: "Technetium", symbol: "Tc", mass: 96.906),
        Element(atomicNumber: 44, name: "Ruthenium", symbol: "Ru", mass: 101.1),
        Element(atomicNumber: 45, name: "Rhodium", symbol: "Rh", mass: 102.905),
        Element(atomicNumber: 46, name: "Palladium", symbol: "Pd", mass: 106.42),
        Element(atomicNumber: 47, name: "Silver", symbol: "Ag", mass: 107.868),
        Element(atomicNumber: 48, name: "Cadmium", symbol: "Cd", mass: 112.41),
        Element(atomicNumber: 49, name: "Indium", symbol: "In", mass: 114.818),
        Element(atomicNumber: 50, name: "Tin", symbol: "Sn", mass: 118.71),
        Element(atomicNumber: 51, name: "Antimony", symbol: "Sb", mass: 121.760),
        Element(atomicNumber: 52, name: "Tellurium", symbol: "Te", mass: 127.6),
        Element(atomicNumber: 53, name: "Iodine", symbol: "I", mass: 126.904),
        Element(atomicNumber: 54, name: "Xenon", symbol: "Xe", mass: 131.29),
        Element(atomicNumber: 55, name: "Cesium", symbol: "Cs", mass: 132.905),
        Element(atomicNumber: 56, name: "Barium", symbol: "Ba", mass: 137.33),
        Element(atomicNumber: 57, name: "Lanthanum", symbol: "La", mass: 138.905),
        Element(atomicNumber: 58, name: "Cerium", symbol: "Ce", mass: 140.116),
        Element(atomicNumber: 59, name: "Praseodymium", symbol: "Pr", mass: 140.907),
        Element(atomicNumber: 60, name: "Neodymium", symbol: "Nd", mass: 144.24),
        Element(atomicNumber: 61, name: "Promethium", symbol: "Pm", mass: 144.912),
        Element(atomicNumber: 62, name: "Samarium", symbol: "Sm", mass: 150.4),
        Element(atomicNumber: 63, name: "Europium", symbol: "Eu", mass: 151.964),
        Element(atomicNumber: 64, name: "Gadolinium", symbol: "Gd", mass: 157.2),
        Element(atomicNumber: 65, name: "Terbium", symbol: "Tb", mass: 158.925),
        Element(atomicNumber: 66, name: "Dysprosium", symbol: "Dy", mass: 162.5),
        Element(atomicNumber: 67, name: "Holmium", symbol: "Ho", mass: 164.930),
        Element(atomicNumber: 68, name: "Erbium", symbol: "Er", mass: 167.26),
        Element(atomicNumber: 69, name: "Thulium", symbol: "Tm", mass: 168.934),
        Element(atomicNumber: 70, name: "Ytterbium", symbol: "Yb", mass: 173.05),
        Element(atomicNumber: 71, name: "Lutetium", symbol: "Lu", mass: 174.9668),
        Element(atomicNumber: 72, name: "Hafnium", symbol: "Hf", mass: 178.49),
        Element(atomicNumber: 73, name: "Tantalum", symbol: "Ta", mass: 180.9479),
        Element(atomicNumber: 74, name: "Tungsten", symbol: "W", mass: 183.84),
        Element(atomicNumber: 75, name: "Rhenium", symbol: "Re", mass: 186.207),
        Element(atomicNumber: 76, name: "Osmium", symbol: "Os", mass: 190.2),
        Element(atomicNumber: 77, name: "Iridium", symbol: "Ir", mass: 192.22),
        Element(atomicNumber: 78, name: "Platinum", symbol: "Pt", mass: 195.08),
        Element(atomicNumber: 79, name: "Gold", symbol: "Au", mass: 196.966),
        Element(atomicNumber: 80, name: "Mercury", symbol: "Hg", mass: 200.59),
        Element(atomicNumber: 81, name: "Thallium", symbol: "Tl", mass: 204.383),
        Element(atomicNumber: 82, name: "Lead", symbol: "Pb", mass: 207),
        Element(atomicNumber: 83, name: "Bismuth", symbol: "Bi", mass: 208.980),
        Element(atomicNumber: 84, name: "Polonium", symbol: "Po", mass: 208.982),
        Element(atomicNumber: 85, name: "Astatine", symbol: "At", mass: 209.987),
        Element(atomicNumber: 86, name: "Radon", symbol: "Rn", mass: 222.0175),
        Element(atomicNumber: 87, name: "Francium", symbol: "Fr", mass: 223.0197),
        Element(atomicNumber: 88, name: "Radium", symbol: "Ra", mass: 226.025),
        Element(atomicNumber: 89, name: "Actinium", symbol: "Ac", mass: 227.0277),
        Element(atomicNumber: 90, name: "Thorium", symbol: "Th", mass: 232.038),
        Element(atomicNumber: 91, name: "Protactinium", symbol: "Pa", mass: 231.0358),
        Element(atomicNumber: 92, name: "Uranium", symbol: "U", mass: 238.0289),
        Element(atomicNumber: 93, name: "Neptunium", symbol: "Np", mass: 237.0481),
        Element(atomicNumber: 94, name: "Plutonium", symbol: "Pu", mass: 244.06420),
        Element(atomicNumber: 95, name: "Americium", symbol: "Am", mass: 243.06138),
        Element(atomicNumber: 96, name: "Curium", symbol: "Cm", mass: 247.07035),
        Element(atomicNumber: 97, name: "Berkelium", symbol: "Bk", mass: 247.07031),
        Element(atomicNumber: 98, name: "Californium", symbol: "Cf", mass: 251.07959),
        Element(atomicNumber: 99, name: "Einsteinium", symbol: "Es", mass: 252.0830),
        Element(atomicNumber: 100, name: "Fermium", symbol: "Fm", mass: 257.09511),
        Element(atomicNumber: 101, name: "Mendelevium", symbol: "Md", mass: 258.09843),
        Element(atomicNumber: 102, name: "Nobelium", symbol: "No", mass: 259.10100),
        Element(atomicNumber: 103, name: "Lawrencium", symbol: "Lr", mass: 266.120),
        Element(atomicNumber: 104, name: "Rutherfordium", symbol: "Rf", mass: 267.122),
        Element(atomicNumber: 105, name: "Dubnium", symbol: "Db", mass: 268.126),
        Element(atomicNumber: 106, name: "Seaborgium", symbol: "Sg", mass: 269.128),
        Element(atomicNumber: 107, name: "Bohrium", symbol: "Bh", mass: 270.133),
        Element(atomicNumber: 108, name: "Hassium", symbol: "Hs", mass: 269.1336),
        Element(atomicNumber: 109, name: "Meitnerium", symbol: "Mt", mass: 277.154),
        Element(atomicNumber: 110, name: "Darmstadtium", symbol: "Ds", mass: 282.166),
        Element(atomicNumber: 111, name: "Roentgenium", symbol: "Rg", mass: 282.169),
        Element(atomicNumber: 112, name: "Copernicium", symbol: "Cn", mass: 286.179),
        Element(atomicNumber: 113, name: "Nihonium", symbol: "Nh", mass: 286.182),
        Element(atomicNumber: 114, name: "Flerovium", symbol: "Fl", mass: 290.192),
        Element(atomicNumber: 115, name: "Moscovium", symbol: "Mc", mass: 290.196),
        Element(atomicNumber: 116, name: "Livermorium", symbol: "Lv", mass: 293.205),
        Element(atomicNumber: 117, name: "Tennessine", symbol: "Ts", mass: 294.211),
        Element(atomicNumber: 118, name: "Oganesson", symbol: "Og", mass: 295.216),
        // Add more elements as desired
    ]
    
    var body: some View {
        VStack {
            TextField("Enter atomic number", value: $atomicNumber, formatter: NumberFormatter())
                .keyboardType(.numberPad)
                .padding()
                .multilineTextAlignment(.center)
            if let element = elements.first(where: { $0.atomicNumber == atomicNumber }) {
                ElementDetailView(element: element)
            } else {
                Text("Invalid atomic number")
            }
        }
        .navigationBarTitle("Elements")
    }
}

struct ElementDetailView: View {
    let element: Element
    
    var body: some View {
        VStack {
            Text(element.name)
                .font(.title)
            Text(element.symbol)
                .font(.headline)
            Text("Atomic number: \(element.atomicNumber)")
            Text("Atomic mass: \(element.mass, specifier: "%.3f") amu")
        }
    }
}

struct Element {
    let atomicNumber: Int
    let name: String
    let symbol: String
    let mass: Double
}

