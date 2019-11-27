#include "IntegerHeap.h"
#include "gtest/gtest.h"

class IntegerHeapTest : public ::testing::Test {

protected:

    int elementos5[15] = {5,8,2,3,4};
    int elementos10[15] = {54,90,73,87,88,6,0,43,47,100};
    int elementos8[15] = {40,87,2,90,1,100,30,20};

    Heap emptyHeap, fiveElementHeap, eightElementHeap, tenElementHeap;

    virtual void SetUp() {
      emptyHeap = createEmptyHeap(15);
      fiveElementHeap = createHeap(elementos5, 5);
      eightElementHeap = createHeap(elementos8, 8);
      tenElementHeap = createHeap(elementos10, 10);
    };

    virtual void TearDown() { };

};

TEST_F(IntegerHeapTest, heapIsEmpty) {
  EXPECT_TRUE(isEmpty(emptyHeap));
}

TEST_F(IntegerHeapTest, heap5IsNotEmpty) {
  EXPECT_FALSE(isEmpty(fiveElementHeap));
}

TEST_F(IntegerHeapTest, heap8IsNotEmpty) {
  EXPECT_FALSE(isEmpty(eightElementHeap));
}

TEST_F(IntegerHeapTest, heap10IsNotEmpty) {
  EXPECT_FALSE(isEmpty(tenElementHeap));
}

TEST_F(IntegerHeapTest, Add2EmptyHeap) {
  Heap h = emptyHeap;
  add(&h, 99);
  EXPECT_EQ(h.heap[0], 99);
  EXPECT_FALSE(isEmpty(h));
}

TEST_F(IntegerHeapTest, AddMax2NonEmptyHeap) {
  Heap h = fiveElementHeap;
  int max = h.heap[0] + 1;
  add(&h, max);
  EXPECT_EQ(h.heap[0], max);
}

TEST_F(IntegerHeapTest, AddSmaller2NonEmptyHeap) {
  Heap h = fiveElementHeap;
  int smaller = h.heap[0] - 1;
  add(&h, smaller);
  int l = left(h.heap[0]); 
  int r = right(h.heap[0]);
  int tmp;
  if (h.heap[l] > h.heap[r]) tmp = h.heap[l]; else tmp = h.heap[r];
  EXPECT_EQ(tmp, smaller);
}

/*
TEST_F(IntegerHeapTest, InsertNonEmptySearch) {
  CriaheapaComUmElemento();
  insertElement(&heapacomumelemento, 200);
  EXPECT_EQ(search(heapacomumelemento,200), 2);
}

TEST_F(IntegerHeapTest, RemoveFromEmptyheap) {
  IntegerHeap *heapa = NULL;
  int status = removeElement(&heapa, 1);
  EXPECT_EQ(status, 0);
}

TEST_F(IntegerHeapTest, RemoveFromOneElementheap) {
  IntegerHeap *heapa = NULL;
  insertElement(&heapa, 99);
  // EXPECT_EQ(search(heapa, 99), 1);
  int status = removeElement(&heapa, 1);
  EXPECT_EQ(search(heapa, 99), 0);
  EXPECT_EQ(status, 1);
}

TEST_F(IntegerHeapTest, RemoveFromheap) {
  IntegerHeap *heapa = NULL;
  insertElement(&heapa, 99);
  insertElement(&heapa, 200);
  // EXPECT_EQ(search(heapa, 200), 1);
  int status = removeElement(&heapa, 2);
  EXPECT_EQ(search(heapa, 200), 0);
  EXPECT_EQ(status, 1);
}

*/
