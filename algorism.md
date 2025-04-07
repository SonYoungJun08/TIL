# TIL (Today I Learned)
## 날짜: 2025-04-07

구성요소설명
Node : 연결 리스트의 노드. 데이터(item)와 다음 노드 링크(next)를 가짐.
head : 연결 리스트의 첫 번째 노드를 가리킴.
size : 노드의 개수.
isEmpty() : 리스트가 비었는지 확인 (True/False 반환).
insert_front(item) : 리스트 앞에 노드 추가.
insert_after(item, p) : 주어진 노드 p 뒤에 노드 추가.
showList() : 리스트 전체 출력.

# 🧵 Python Singly Linked List (SList)

이 문서는 Python으로 구현한 단일 연결 리스트(`SList`)의 전체 코드와 주요 설명을 담고 있습니다.

---

## 📦 전체 코드

```python
class SList:
    class Node:
        def __init__(self, item, link=None):
            self.item = item
            self.next = link

    def __init__(self):
        print("나는 SList의 Constructor method")
        self.head = None
        self.size = 0

    def isEmpty(self):
        return self.size == 0

    def insert_front(self, item):
        self.head = self.Node(item, self.head)
        self.size += 1

    def insert_after(self, item, p):
        if p is None:
            print("오류: 주어진 노드가 None입니다.")
            return
        p.next = self.Node(item, p.next)
        self.size += 1

    def showList(self):
        p = self.head
        while p:
            if p.next is not None:
                print(p.item, end=" => ")
            else:
                print(p.item)
            p = p.next

if __name__ == "__main__":
    s = SList()
    s.insert_front("mango")
    s.insert_front("apple")
    s.showList()  # apple => mango
    s.insert_after("cherry", s.head.next)
    s.showList()  # apple => mango => cherry

   출력 결과
   나는 SList의 Constructor method
   apple => mango
   apple => mango => cherry

