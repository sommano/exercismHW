//
// This is only a SKELETON file for the 'Acronym' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
//

export const parse = () => {
  
  return str.replace(/([\w])[A-Z]*[a-z]*[\W_]*/g, '$1').toUpperCase();
  
};
