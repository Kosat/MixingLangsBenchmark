module Export_FSharp
#light "on"

 /// <summary>
 /// F# implamentations of Damerau–Levenshtein algorithm.
 /// </summary>
 type Lev() =
   
  /// <summary>
  /// Implementation of Damerau–Levenshtein algorithm that calculates the edit distance between <paramref name="string1"/> and <paramref name="string2"/>
  /// Imperative style.
  /// </summary>
  /// <param name="string1">String 1</param>
  /// <param name="string2">String 2</param>
  /// <param name="w">Swap weight</param>
  /// <param name="s">Substitution weight</param>
  /// <param name="a">Addition weight</param>
  /// <param name="d">Deletion weight</param>
  /// <returns>The edit distance between the strings.</returns>
  static member levenshtein_imperative (string1:string, string2:string, w:int, s:int, a:int, d:int) = 
   let len1 = string1.Length
   let len2 = string2.Length
      
   let mutable row0 = Array.zeroCreate (len2 + 1)
   let mutable row1 = [|for i  in  0 .. len2 -> i*a |]
   let mutable row2 = Array.zeroCreate (len2 + 1) 

   for i in 0 .. len1-1 do
      let mutable dummy = null;
      row2.[0] <- (i + 1) * d;
      for j in 0 .. len2-1 do
         // substitution 
         row2.[j + 1] <- row1.[j] + s * ( if (string1.[i] <> string2.[j]) then 1 else 0);
         // swap
         if (i > 0 && j > 0 
            && string1.[i - 1] = string2.[j] 
            && string1.[i] = string2.[j - 1] 
            && row2.[j + 1] > row0.[j - 1] + w)
         then row2.[j + 1] <- row0.[j - 1] + w;
         // deletion 
         if (row2.[j + 1] > row1.[j + 1] + d)
         then row2.[j + 1] <- row1.[j + 1] + d;
         // insertion 
         if (row2.[j + 1] > row2.[j] + a)
         then row2.[j + 1] <- row2.[j] + a;

      dummy <- row0;
      row0 <- row1;
      row1 <- row2;
      row2 <- dummy;

   row1.[len2]


  /// <summary>
  /// Implementation of Damerau–Levenshtein algorithm that calculates the edit distance between <paramref name="string1"/> and <paramref name="string2"/>
  /// Functional style.
  /// </summary>
  /// <param name="string1">String 1</param>
  /// <param name="string2">String 2</param>
  /// <param name="w">Swap weight</param>
  /// <param name="s">Substitution weight</param>
  /// <param name="a">Addition weight</param>
  /// <param name="d">Deletion weight</param>
  /// <returns>The edit distance between the strings.</returns>
  static member levenshtein_functional (string1:string, string2:string, w:int, s:int, a:int, d:int) = 
   let len1 = string1.Length
   let len2 = string2.Length

   let mutable row0 = Array.zeroCreate (len2 + 1)
   let mutable row1 = Seq.unfold (fun state -> if (state > len2) then None else Some(state * a, state + 1)) 0 |> Seq.toArray
   let mutable row2 = Array.zeroCreate (len2 + 1) 
   let mutable dummy = null;

   let rec calc_d i j =
       if j = len2 then ()
       else
         // substitution 
         row2.[j + 1] <- row1.[j] + s * ( if (string1.[i] <> string2.[j]) then 1 else 0);
         // swap
         if (i > 0 && j > 0 
            && string1.[i - 1] = string2.[j] 
            && string1.[i] = string2.[j - 1] 
            && row2.[j + 1] > row0.[j - 1] + w)
         then row2.[j + 1] <- row0.[j - 1] + w;
         // deletion 
         if (row2.[j + 1] > row1.[j + 1] + d)
         then row2.[j + 1] <- row1.[j + 1] + d;
         // insertion 
         if (row2.[j + 1] > row2.[j] + a)
         then row2.[j + 1] <- row2.[j] + a;     
         
         do calc_d i (1+j)
   
   let rec calc_d_ij i =
       if i = len1 then ()
       else
           row2.[0] <- (i + 1) * d;
           do calc_d i 0
           dummy <- row0;
           row0 <- row1;
           row1 <- row2;
           row2 <- dummy;
           do calc_d_ij (1+i)
   
   do calc_d_ij 0
   row1.[len2]



