[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/lE55cpfd)
# SE3011 – Technical Evolution of Multimedia  
## Lab Sheet 01 (2 Hours): Processing Programming with Creative Coding  
### Introduction to Processing & Basic Syntax

---

## 1. Lab Objective
To introduce students to the Processing programming environment and enable them to create **static visual compositions** using basic programming syntax, shapes, coordinates, and colors.

---

## 2. Lab Learning Outcomes (LOs)
By the end of this lab, students will be able to:

- Identify the Processing IDE and explain its basic structure  
- Describe how the canvas and coordinate system work in Processing  
- Draw basic geometric shapes using Processing syntax  
- Apply color and background properties to visual elements  
- Create a simple **static** creative artwork using code  

---

## 3. Tools Required
- **Processing IDE (Java Mode)**
- Laptop / Desktop Computer

---

## 4. Step-by-Step Lab Instructions

### Part A: Understanding the Processing Environment

#### Step A1: Launch Processing
1. Open the **Processing IDE**
2. Confirm **Java Mode** is selected (top-right corner)
3. Observe:
   - Editor area
   - Message console

 **Important Notes**
- Processing programs are called **sketches**
- Each sketch controls what is drawn on the screen

---

### Part B: Creating Your First Canvas

#### Step B1: Write Your First Code
Type this exactly:

```java
void setup() {
  size(400, 300);
}
```
▶ Click **Run**

### What you should see
- A blank white window appears  
- This window is called the **canvas**

### Explanation
- `setup()` runs **only once** when the sketch starts  
- `size(width, height)` defines the **canvas dimensions in pixels**

 **Part C: Understanding the Coordinate System**

### Step C1: Add the `draw()` Function
Add this code **below** the `setup()` function:

```java
void draw() {
  background(255);
  ellipse(200, 150, 50, 50);
}
```

### Explanation
- `(0, 0)` is the **top-left corner** of the canvas  
- The **X-axis** increases to the **right**  
- The **Y-axis** increases **downward**  

### Self-Exploration Task
1. Change `200` to `100`  
2. Change `150` to `50`  
3. Run the sketch and observe how the circle moves  

###  Learning Check
- Smaller **X** value → shape moves **left**  
- Smaller **Y** value → shape moves **up**

 **Part D: Drawing Basic Shapes**

### Step D1: Replace the `draw()` Function
Replace your existing `draw()` function with the following code:

```java
void draw() {
  background(255);

  ellipse(200, 150, 80, 80);
  rect(50, 50, 120, 60);
  line(0, 0, 400, 300);
}
```

### Explanation
- `ellipse(x, y, w, h)` → draws a **circle or oval**  
- `rect(x, y, w, h)` → draws a **rectangle**  
- `line(x1, y1, x2, y2)` → draws a **straight line**  

### Practice Task
1. Change the **size** of the rectangle  
2. Move the **line** to a different direction  
3. Add **one more circle** at a new position

 **Part E: Color & Background Control**

### Step E1: Modify the Code
Update your `draw()` function like this:

```java
void draw() {
  background(200);

  fill(255, 0, 0);
  ellipse(200, 150, 80, 80);

  fill(0, 0, 255);
  rect(50, 50, 120, 60);
}
```

### Explanation
- `background()` clears the screen and sets the **background color**
- `fill(R, G, B)` sets the **shape color**
- RGB values range from **0–255**

### Color Practice
1. Change colors using different **RGB values**
2. Try **dark** vs **light** colors
3. Observe how color affects **visibility**

 **Part F: Shape Order & Layering**

### Step F1: Rearrange the Code Order
Update your `draw()` function like this:

```java
void draw() {
  background(220);

  rect(100, 100, 150, 100);
  fill(255, 0, 0);
  ellipse(180, 150, 80, 80);
}
```

### Explanation
- Shapes drawn **later** appear **on top**
- The order of your code affects **visual layering**

 **This concept is very important for creative design.**

---

##  6. Guided Creative Task

### Task Title: Design a Static Creative Scene

You must follow **ALL** steps below:

### Step 1: Choose a simple theme (pick one)
- Face  
- Emoji  
- House  
- Robot  
- Abstract art  

### Step 2: Your artwork must include
- At least **3 circles**
- At least **2 rectangles**
- At least **3 different colors**

### Step 3: Positioning
- Use proper positioning (**no overlapping by accident**)

### Step 4: Animation rule
- **Do NOT animate anything** (no movement)

### Step 5: Save your sketch
Save your sketch with this name:

`SE2011_Lab01_ITNumber`


##  7. Reflection & Self-Check

Answer the following questions in your notebook:

1. What does `setup()` do?  
2. What happens if `draw()` is removed?  
3. How does the coordinate system work?  
4. Which part was most confusing?
