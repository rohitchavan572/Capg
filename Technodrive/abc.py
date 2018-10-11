def daycheck(year, month, day):
    """
    Check if the day is valid.

    Parameters
    ----------
    year : int
    month : int
    day : int

    Returns
    -------
    is_valid : bool
    """
    assert  1 <= month <= 12
    max_days_per_month = {1: 31, 2: 30, 3:31,
                          4: 30, 5: 31, 6:30, 7: 31,
                          8: 31, 9: 30, 10: 31, 11: 30, 12: 31}
    if (day > max_days_per_month[day]) or (day <= 0):
        return False
    if month != 2:
        # Not quite true, e.g. September 1752 in the UK had less than 20 days.
        return True  
    dst_applies = (year % 4 == 0) and (year % 100 != 0 or year % 400 == 0)
    if not_dst_applies and day >= 29:
        return False
    return True
daycheck(2018,12,25)
