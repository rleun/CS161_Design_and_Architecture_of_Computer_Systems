/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/csmajs/rleun005/Desktop/Lab4/alu_control.vhd";
extern char *WORK_P_3583369287;



static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4608);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t15 = (0 - 1);
    t5 = (t15 * -1);
    t16 = (1U * t5);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t4 = *((unsigned char *)t1);
    t18 = (t4 == (unsigned char)3);
    if (t18 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t15 = (1 - 1);
    t5 = (t15 * -1);
    t16 = (1U * t5);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t4 = *((unsigned char *)t1);
    t18 = (t4 == (unsigned char)3);
    if (t18 != 0)
        goto LAB13;

LAB14:
LAB3:    t1 = (t0 + 2824);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t8 = (t0 + 4610);
    t10 = (t0 + 2904);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(23, ng0);
    t3 = (t0 + 4614);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB13:    xsi_set_current_line(25, ng0);
    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t19 = (5 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t6 + t21);
    t7 = ((WORK_P_3583369287) + 1888U);
    t8 = *((char **)t7);
    t22 = (5 - 3);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t7 = (t8 + t24);
    t25 = 1;
    if (4U == 4U)
        goto LAB18;

LAB19:    t25 = 0;

LAB20:    if (t25 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t16 = (t5 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t3 = ((WORK_P_3583369287) + 2008U);
    t6 = *((char **)t3);
    t19 = (5 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t6 + t21);
    t4 = 1;
    if (4U == 4U)
        goto LAB27;

LAB28:    t4 = 0;

LAB29:    if (t4 != 0)
        goto LAB24;

LAB26:
LAB25:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t16 = (t5 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t3 = ((WORK_P_3583369287) + 2128U);
    t6 = *((char **)t3);
    t19 = (5 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t6 + t21);
    t4 = 1;
    if (4U == 4U)
        goto LAB36;

LAB37:    t4 = 0;

LAB38:    if (t4 != 0)
        goto LAB33;

LAB35:
LAB34:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t16 = (t5 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t3 = ((WORK_P_3583369287) + 2488U);
    t6 = *((char **)t3);
    t19 = (5 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t6 + t21);
    t4 = 1;
    if (4U == 4U)
        goto LAB45;

LAB46:    t4 = 0;

LAB47:    if (t4 != 0)
        goto LAB42;

LAB44:
LAB43:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t16 = (t5 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t3 = ((WORK_P_3583369287) + 2728U);
    t6 = *((char **)t3);
    t19 = (5 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t6 + t21);
    t4 = 1;
    if (4U == 4U)
        goto LAB54;

LAB55:    t4 = 0;

LAB56:    if (t4 != 0)
        goto LAB51;

LAB53:
LAB52:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t16 = (t5 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t3 = ((WORK_P_3583369287) + 2968U);
    t6 = *((char **)t3);
    t19 = (5 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t6 + t21);
    t4 = 1;
    if (4U == 4U)
        goto LAB63;

LAB64:    t4 = 0;

LAB65:    if (t4 != 0)
        goto LAB60;

LAB62:
LAB61:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t16 = (t5 * 1U);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t3 = ((WORK_P_3583369287) + 2848U);
    t6 = *((char **)t3);
    t19 = (5 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t6 + t21);
    t4 = 1;
    if (4U == 4U)
        goto LAB72;

LAB73:    t4 = 0;

LAB74:    if (t4 != 0)
        goto LAB69;

LAB71:
LAB70:    goto LAB3;

LAB15:    xsi_set_current_line(26, ng0);
    t11 = (t0 + 4618);
    t13 = (t0 + 2904);
    t14 = (t13 + 56U);
    t27 = *((char **)t14);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB16;

LAB18:    t26 = 0;

LAB21:    if (t26 < 4U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t9 = (t3 + t26);
    t10 = (t7 + t26);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB19;

LAB23:    t26 = (t26 + 1);
    goto LAB21;

LAB24:    xsi_set_current_line(29, ng0);
    t9 = (t0 + 4622);
    t11 = (t0 + 2904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t27 = *((char **)t14);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB25;

LAB27:    t22 = 0;

LAB30:    if (t22 < 4U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t7 = (t1 + t22);
    t8 = (t3 + t22);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB28;

LAB32:    t22 = (t22 + 1);
    goto LAB30;

LAB33:    xsi_set_current_line(32, ng0);
    t9 = (t0 + 4626);
    t11 = (t0 + 2904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t27 = *((char **)t14);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB34;

LAB36:    t22 = 0;

LAB39:    if (t22 < 4U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t7 = (t1 + t22);
    t8 = (t3 + t22);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB37;

LAB41:    t22 = (t22 + 1);
    goto LAB39;

LAB42:    xsi_set_current_line(35, ng0);
    t9 = (t0 + 4630);
    t11 = (t0 + 2904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t27 = *((char **)t14);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB43;

LAB45:    t22 = 0;

LAB48:    if (t22 < 4U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t7 = (t1 + t22);
    t8 = (t3 + t22);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB46;

LAB50:    t22 = (t22 + 1);
    goto LAB48;

LAB51:    xsi_set_current_line(38, ng0);
    t9 = (t0 + 4634);
    t11 = (t0 + 2904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t27 = *((char **)t14);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB52;

LAB54:    t22 = 0;

LAB57:    if (t22 < 4U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t7 = (t1 + t22);
    t8 = (t3 + t22);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB55;

LAB59:    t22 = (t22 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(41, ng0);
    t9 = (t0 + 4638);
    t11 = (t0 + 2904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t27 = *((char **)t14);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB61;

LAB63:    t22 = 0;

LAB66:    if (t22 < 4U)
        goto LAB67;
    else
        goto LAB65;

LAB67:    t7 = (t1 + t22);
    t8 = (t3 + t22);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB64;

LAB68:    t22 = (t22 + 1);
    goto LAB66;

LAB69:    xsi_set_current_line(44, ng0);
    t9 = (t0 + 4642);
    t11 = (t0 + 2904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t27 = *((char **)t14);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB70;

LAB72:    t22 = 0;

LAB75:    if (t22 < 4U)
        goto LAB76;
    else
        goto LAB74;

LAB76:    t7 = (t1 + t22);
    t8 = (t3 + t22);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB73;

LAB77:    t22 = (t22 + 1);
    goto LAB75;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/alu_control_tb_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
