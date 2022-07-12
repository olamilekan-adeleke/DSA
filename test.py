class Solution:
    def topKFrequent(self, nums: list[int], k: int) -> list[int]:
        valueHashMap = {}
        freqList = [[] for i in range(len(nums) + 1)]

        for num in nums:
            valueHashMap[num] = 1 + valueHashMap.get(num, 0)

        for num, count in valueHashMap.items():
            freqList[count].append(num)

        res = []

        for i in range(len(freqList) - 1, 0, - 1):
            for num in freqList[i]:
                res.append(num)

                if len(res) == k:
                    return res


# list_one = [1, 2, 3, 1]
# target_one = 9
# list_two = [1]
# target_two = 0
print(Solution().topKFrequent([1, 1, 1, 2, 2, 3], 2))
# print(Solution().twoSum(list_two, target_two))


# print([[] for i in range(6)])


# class Solution:
#     def containsNearbyDuplicate(self, nums: list[int], k: int) -> bool:
#         # create a hash map
#         valueHashMap = {}

#         for i in range(len(nums)):
#             currentValue = nums[i]

#             # if value already in hash map, we also check if the current index
#             # (e.g i) minus the previously save value index is lessThanOrEqual to k
#             #
#             if currentValue in valueHashMap:
#                 difference = abs(i - valueHashMap[currentValue])

#                 if difference <= k:
#                     return True

#             else:
#                 valueHashMap[currentValue] = i

#         return False


# print(Solution().containsNearbyDuplicate([1, 0, 1, 1], 1))
