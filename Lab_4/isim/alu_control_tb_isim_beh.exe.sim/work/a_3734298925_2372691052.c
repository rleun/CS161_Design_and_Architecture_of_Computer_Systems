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
static const char *ng0 = "/home/csmajs/rleun005/Desktop/Lab4/alu_control_tb.vhd";
extern char *WORK_P_3583369287;



static void work_a_3734298925_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    unsigned char t10;
    unsigned int t11;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4932);
    xsi_report(t2, 26U, 0);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4958);
    t4 = (t0 + 2888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4960);
    t4 = (t0 + 2952);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(81, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 4966);
    t10 = 1;
    if (4U == 4U)
        goto LAB10;

LAB11:    t10 = 0;

LAB12:    if (t10 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 4996);
    xsi_report(t2, 28U, 0);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5024);
    t4 = (t0 + 2888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 5026);
    t4 = (t0 + 2952);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(89, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t7 = (t0 + 4970);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB9;

LAB10:    t11 = 0;

LAB13:    if (t11 < 4U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB11;

LAB15:    t11 = (t11 + 1);
    goto LAB13;

LAB16:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5032);
    t10 = 1;
    if (4U == 4U)
        goto LAB22;

LAB23:    t10 = 0;

LAB24:    if (t10 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 5062);
    xsi_report(t2, 12U, 0);
    xsi_set_current_line(95, ng0);
    t2 = ((WORK_P_3583369287) + 3928U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(96, ng0);
    t2 = ((WORK_P_3583369287) + 1888U);
    t3 = *((char **)t2);
    t2 = (t0 + 2952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t7 = (t0 + 5036);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB21;

LAB22:    t11 = 0;

LAB25:    if (t11 < 4U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB23;

LAB27:    t11 = (t11 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5074);
    t10 = 1;
    if (4U == 4U)
        goto LAB34;

LAB35:    t10 = 0;

LAB36:    if (t10 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 5104);
    xsi_report(t2, 12U, 0);
    xsi_set_current_line(103, ng0);
    t2 = ((WORK_P_3583369287) + 4168U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng0);
    t2 = ((WORK_P_3583369287) + 2968U);
    t3 = *((char **)t2);
    t2 = (t0 + 2952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(105, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t7 = (t0 + 5078);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB33;

LAB34:    t11 = 0;

LAB37:    if (t11 < 4U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB35;

LAB39:    t11 = (t11 + 1);
    goto LAB37;

LAB40:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5116);
    t10 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t10 = 0;

LAB48:    if (t10 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 5146);
    xsi_report(t2, 11U, 0);
    xsi_set_current_line(111, ng0);
    t2 = ((WORK_P_3583369287) + 4288U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(112, ng0);
    t2 = ((WORK_P_3583369287) + 2848U);
    t3 = *((char **)t2);
    t2 = (t0 + 2952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t7 = (t0 + 5120);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB45;

LAB46:    t11 = 0;

LAB49:    if (t11 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB47;

LAB51:    t11 = (t11 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5157);
    t10 = 1;
    if (4U == 4U)
        goto LAB58;

LAB59:    t10 = 0;

LAB60:    if (t10 == 0)
        goto LAB56;

LAB57:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5187);
    xsi_report(t2, 13U, 0);
    xsi_set_current_line(119, ng0);
    t2 = ((WORK_P_3583369287) + 3928U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(120, ng0);
    t2 = ((WORK_P_3583369287) + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 2952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(121, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    t7 = (t0 + 5161);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB57;

LAB58:    t11 = 0;

LAB61:    if (t11 < 4U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB59;

LAB63:    t11 = (t11 + 1);
    goto LAB61;

LAB64:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5200);
    t10 = 1;
    if (4U == 4U)
        goto LAB70;

LAB71:    t10 = 0;

LAB72:    if (t10 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 5230);
    xsi_report(t2, 12U, 0);
    xsi_set_current_line(127, ng0);
    t2 = ((WORK_P_3583369287) + 4408U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(128, ng0);
    t2 = ((WORK_P_3583369287) + 2128U);
    t3 = *((char **)t2);
    t2 = (t0 + 2952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB78:    *((char **)t1) = &&LAB79;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t7 = (t0 + 5204);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB69;

LAB70:    t11 = 0;

LAB73:    if (t11 < 4U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB71;

LAB75:    t11 = (t11 + 1);
    goto LAB73;

LAB76:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5242);
    t10 = 1;
    if (4U == 4U)
        goto LAB82;

LAB83:    t10 = 0;

LAB84:    if (t10 == 0)
        goto LAB80;

LAB81:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 5272);
    xsi_report(t2, 12U, 0);
    xsi_set_current_line(135, ng0);
    t2 = ((WORK_P_3583369287) + 4648U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(136, ng0);
    t2 = ((WORK_P_3583369287) + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 2952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB77:    goto LAB76;

LAB79:    goto LAB77;

LAB80:    t7 = (t0 + 5246);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB81;

LAB82:    t11 = 0;

LAB85:    if (t11 < 4U)
        goto LAB86;
    else
        goto LAB84;

LAB86:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB83;

LAB87:    t11 = (t11 + 1);
    goto LAB85;

LAB88:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5284);
    t10 = 1;
    if (4U == 4U)
        goto LAB94;

LAB95:    t10 = 0;

LAB96:    if (t10 == 0)
        goto LAB92;

LAB93:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 5314);
    xsi_report(t2, 12U, 0);
    xsi_set_current_line(143, ng0);
    t2 = ((WORK_P_3583369287) + 4288U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(144, ng0);
    t2 = ((WORK_P_3583369287) + 2728U);
    t3 = *((char **)t2);
    t2 = (t0 + 2952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(145, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t9);

LAB102:    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    t7 = (t0 + 5288);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB93;

LAB94:    t11 = 0;

LAB97:    if (t11 < 4U)
        goto LAB98;
    else
        goto LAB96;

LAB98:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB95;

LAB99:    t11 = (t11 + 1);
    goto LAB97;

LAB100:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5326);
    t10 = 1;
    if (4U == 4U)
        goto LAB106;

LAB107:    t10 = 0;

LAB108:    if (t10 == 0)
        goto LAB104;

LAB105:    xsi_set_current_line(150, ng0);

LAB114:    *((char **)t1) = &&LAB115;
    goto LAB1;

LAB101:    goto LAB100;

LAB103:    goto LAB101;

LAB104:    t7 = (t0 + 5330);
    xsi_report(t7, 26U, (unsigned char)1);
    goto LAB105;

LAB106:    t11 = 0;

LAB109:    if (t11 < 4U)
        goto LAB110;
    else
        goto LAB108;

LAB110:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB107;

LAB111:    t11 = (t11 + 1);
    goto LAB109;

LAB112:    goto LAB2;

LAB113:    goto LAB112;

LAB115:    goto LAB113;

}


extern void work_a_3734298925_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3734298925_2372691052_p_0};
	xsi_register_didat("work_a_3734298925_2372691052", "isim/alu_control_tb_isim_beh.exe.sim/work/a_3734298925_2372691052.didat");
	xsi_register_executes(pe);
}
