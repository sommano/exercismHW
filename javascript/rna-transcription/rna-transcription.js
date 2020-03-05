export const toRna = (dnaString) => {


  const map = {
    C: 'G',
    G: 'C',
    A: 'U',
    T: 'A'
  };

  return dnaString.replace(/[CGAT]/g, result => map[result]);
};