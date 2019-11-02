#include <IntegerList.h>
#include "gtest/gtest.h"

class IntegerListTest : public ::testing::Test {

protected:
  
  IntegerList *listavazia = NULL;
  IntegerList *listacomumelemento = NULL;
  IntegerList *a_node = NULL;
  int element;

  virtual void SetUp() {
     a_node = createElement(10);
     CriaListaComUmElemento();
  };

  virtual void TearDown() {
  };

  virtual void CriaListaComUmElemento(){
     listacomumelemento = NULL;
     insertElement(&listacomumelemento, 50);
  };

/*
  virtual void verify(int index) {
    Fraction       f        = Fraction{numerators.at(index), denominators.at(index)};
    DivisionResult expected = DivisionResult{divisions.at(index), remainders.at(index)};
    DivisionResult result   = Division(f).divide();
    EXPECT_EQ(result.division, expected.division);
    EXPECT_EQ(result.remainder, expected.remainder);
  }
*/

};


TEST_F(IntegerListTest, ListIsEmpty) {
  EXPECT_TRUE(isEmpty(listavazia));
}

TEST_F(IntegerListTest, SizeEmptyList) {
  EXPECT_EQ(size(listavazia),0);
}

TEST_F(IntegerListTest, SizeOneElementList) {
  CriaListaComUmElemento();
  EXPECT_EQ(size(listacomumelemento),1);
}

TEST_F(IntegerListTest, InsertFirstEmptySize) {
  IntegerList *lista = NULL;
  insertElement(&lista, 99);
  EXPECT_EQ(size(lista), 1);
}

TEST_F(IntegerListTest, InsertFirstEmptySearch) {
  IntegerList *lista = NULL;
  insertElement(&lista, 99);
  EXPECT_EQ(search(lista, 99), 1);
}

TEST_F(IntegerListTest, InsertNonEmptySize) {
  CriaListaComUmElemento();
  insertElement(&listacomumelemento, 200);
  EXPECT_EQ(size(listacomumelemento), 2);
}

TEST_F(IntegerListTest, InsertNonEmptySearch) {
  CriaListaComUmElemento();
  insertElement(&listacomumelemento, 200);
  EXPECT_EQ(search(listacomumelemento,200), 2);
}

TEST_F(IntegerListTest, RemoveFromOneElemetList) {
  IntegerList *lista = NULL;
  insertElement(&lista, 99);
  EXPECT_EQ(search(lista, 99), 1);
  element = removeElement(&lista, 1);
  EXPECT_EQ(search(lista, 99), 0);
}

TEST_F(IntegerListTest, RemoveFromList) {
  IntegerList *lista = NULL;
  insertElement(&lista, 99);
  insertElement(&lista, 200);
  // EXPECT_EQ(search(lista, 200), 1);
  element = removeElement(&lista, 2);
  EXPECT_EQ(search(lista, 200), 0);
}


/*
TEST_F(DividerTest, 17_DivideBy_19) {
  verify(2);
}

TEST_F(DividerTest, Long_DivideBy_Long) {
  verify(3);
}

TEST_F(DividerTest, DivisionByZero) {
  Division d = Division(Fraction{1, 0});
  try {
    d.divide();
    FAIL() << "Expected divide() method to throw DivisionByZeroException";
  } catch (DivisionByZero const &err) {
    EXPECT_EQ(err.what(), DIVISION_BY_ZERO_MESSAGE);
  }
  catch (...) {
    FAIL() << "Expected DivisionByZeroException!";
  }
}
*/
