package leetcodetest;

import java.util.HashMap;

public class LeetCodeTest {

    public int[] twoSum(int[] nums, int target) {
        // Create a hash map to store numbers and their indices
        HashMap<Integer, Integer> numToIndex = new HashMap<>();

        // Iterate through the array
        for (int i = 0; i < nums.length; i++) {
            int complement = target - nums[i]; // The number needed to reach the target

            // Check if the complement exists in the map
            if (numToIndex.containsKey(complement)) {
                return new int[]{numToIndex.get(complement), i};
            }

            // Store the current number and its index in the map
            numToIndex.put(nums[i], i);
        }

        // If no solution is found, throw an exception (this should not happen per the problem statement)
        throw new IllegalArgumentException("No two sum solution");
    }

    public static void main(String[] args) {
        LeetCodeTest solution = new LeetCodeTest();

        // Example 1
        int[] nums1 = {2, 7, 11, 15};
        int target1 = 9;
        int[] result1 = solution.twoSum(nums1, target1);
        System.out.println("Result: [" + result1[0] + ", " + result1[1] + "]");

        // Example 2
        int[] nums2 = {3, 2, 4};
        int target2 = 6;
        int[] result2 = solution.twoSum(nums2, target2);
        System.out.println("Result: [" + result2[0] + ", " + result2[1] + "]");

        // Example 3
        int[] nums3 = {3, 3};
        int target3 = 6;
        int[] result3 = solution.twoSum(nums3, target3);
        System.out.println("Result: [" + result3[0] + ", " + result3[1] + "]");
    }
}
