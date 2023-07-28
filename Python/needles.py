def find_needle(haystack):
    # your code here
    needles = ["hay", "junk", "hay", "hay", "moreJunk", "needle", "randomJunk"]
    my_needle = needles.index("needle")
    print(f"found the needle at position {my_needle}")