# 16-bit-Vedic-Multipler


Introduction:
	Vedic mathematics - a gift given to this world by the ancient sages of India. A system which is far simpler and more enjoyable than modern mathematics. The simplicity of Vedic Mathematics means that calculations can be carried out mentally though the methods can also be written down.
There are many advantages in using a flexible, mental system. Pupils can invent their own methods, they are not limited to one method. This leads to more creative, interested and intelligent pupils. Vedic Mathematics refers to the technique of Calculations based on a set of 16 Sutras, or aphorisms, as algorithms and their upa-sutras or corollaries derived from these Sutras. Any mathematical problems (algebra, arithmetic, geometry or trigonometry) can be solved mentally with these sutras. Vedic Mathematics is more coherent than modern mathematics. Vedic Mathematics offers a fresh and highly efficient approach to mathematics covering a wide range - starts with elementary multiplication and concludes with a relatively advanced topic, the solution of non-linear partial differential equations. But the Vedic scheme is not simply a collection of rapid methods; it is a system, a unified approach. Vedic Mathematics extensively exploits the properties of numbers in every practical application

	The word ‘Vedic’ is derived from the word ‘veda’ which means the store-house of all knowledge. Vedic mathematics is mainly based on 16 Sutras (or aphorisms) dealing with various branches of mathematics like arithmetic,algebra, geometry etc.These Sutras along with their brief meanings are enlisted below alphabetically.
Types:
1) (Anurupye) Shunyamanyat – If one is in ratio, the other is zero
2) Chalana-Kalanabyham – Differences and Similarities.
3) Ekadhikina Purvena – By one more than the previous one
4) Ekanyunena Purvena – By one less than the previous one
5) Gunakasamuchyah – The factors of the sum is equal to the sum of the factors
6) Gunitasamuchyah – The product of the sum is equal to the sum of the product
7) Nikhilam Navatashcaramam Dashatah – All from 9 and the last from 10
8) Paraavartya Yojayet – Transpose and adjust.
9) Puranapuranabyham – By the completion or noncompletion
10) Sankalana-vyavakalanabhyam – By addition and by subtraction
11) Shesanyankena Charamena – The remainders by the last digit
12) Shunyam Saamyasamuccaye – When the sum is the same that sum is zero
13) Sopaantyadvayamantyam – The ultimate and twice the penultimate
14) Urdhva-tiryakbyham – Vertically and crosswise
15) Vyashtisamanstih – Part and Whole
16) Yaavadunam – Whatever the extent of its deficiency

Urdhva Triyagbhyam:
	The basic sutras and upa sutras in the Vedic Mathematics helps to do almost all the numeric computations in easy and fast manner. The sutra which we employ in this
project is Urdhva Triyagbhyam (Multiplication).

# Design and implementation of 16 Bit Vedic Arithmetic Unit

# 2X2 multiplier:

## Design:

![2 bit vedic logic](https://user-images.githubusercontent.com/56084662/185552426-da81ebae-c40c-47c8-8a36-70f79c739ca8.png)

Figure illustrates the steps to to multiply two 2 bit numbers. Converting the above figure to a hardware equivalent we have 3 and gates which will act as 2 bit multipliers and two half adders to add the products to get the final product. Here is the hardware detail of the multiplier

![2 bit vedic circuit diagram](https://user-images.githubusercontent.com/56084662/185552459-a6e5e5ad-5ff4-4f42-ac1b-bf49a08a68d8.png)

 Where "a" and "b" are two numbers to be multiplied and "q" is the product. With this design we are now ready to code this in verilog easily using and gates and HA(half adders). To make the design more modular we try to write  code for HA first and then instantiate it to have the final product.

# 4X4 multiplier:

## Design:

![4 bit vedic circuit diagram](https://user-images.githubusercontent.com/56084662/185552503-26dad1c6-d155-4dcc-9542-6e571d8aa6df.png)

Using 4 such 2x2 multipliers and 3 adders we can built 4x4 bit multipliers as shown in the design. Proper instantiating of the 2x2 multipliers and adders. We have to first write code for 4bit and 6 bit adders. Its your choice to choose your adders. If in case you want to have better performance you can replace these normal adders with CSA or compressors. For a simpler design we have used the "+" operator which is supported by the XST synthesis tool which by default selects a low hardware adder. This architecture follows wallace tree which reduces the addition levels from 3 to just 2 stages as shown. Arrangement of the adders and the addition is explained from the figure shown below:

![4 bit vedic logic](https://user-images.githubusercontent.com/56084662/185552534-a931952c-9985-4787-aca2-efbb3fb55b82.png)


# 8X8multiplier:
## Design:

![8 bit vedic circuit diagram](https://user-images.githubusercontent.com/56084662/185552590-a2c81bb1-ef6b-4b88-a83d-08d4b947fe6c.png)

similar to the previous design of 4x4 multiplier , we need 4 such  4x4 multipliers to develop 8x8 multipliers. Here we need to first design 8bit and 12 bit adders and by proper instantiating of the module and connections as shown in the figure we have designed a 8x8 bit multiplier. At this point of time its necessary for you to even verify the  RTL code and check if the hardware is as per your design. PlanAhead tool by xilinx gives better view of the hardware design with design elaborate option. Refer the addition tree diagram to know the process for 8x8 multiplier:

![8 bit vedic logic](https://user-images.githubusercontent.com/56084662/185552624-2552070a-3ca8-47dd-aafc-e574d0c155a7.png)



# 16x16 multiplier:
## Design:

![16 bit vedic circuit diagram](https://user-images.githubusercontent.com/56084662/185552683-3ba95cc3-8cf0-44b3-a4d9-be312725cf61.png)

Follow the same steps as in case of previous multipliers and develop 16x16 multipliers. Refer the adder tree diagram below :

![16 bit vedic circuit diagram](https://user-images.githubusercontent.com/56084662/185552711-e55b79e1-44ce-4e4a-9a79-776fd4b429c0.png)
