#ifndef CFI_H
#define CFI_H

/*
    The CFI Config CSR is composed like this:
    +------------+--------+
    | 4 downto 1 | 0      |
    +------------+--------+
    | control    | on/off |
    +------------+--------+
*/

#define CFI_CFG_ON 0x1
#define CFI_CFG_OFF 0x0
#define CFI_CFG_LOAD_STATE 0x4
#define CFI_CFG_LOAD_STATE_BUSY 0x2
#define CFI_CFG_BASE 0x7d0
#define CFI_TAG_BASE (CFI_CFG_BASE + 1)

#endif // !CFI_H