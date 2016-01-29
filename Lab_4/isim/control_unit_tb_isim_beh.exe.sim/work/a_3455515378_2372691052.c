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
static const char *ng0 = "/home/csmajs/rleun005/Desktop/Lab4/control_unit_tb.vhd";
extern char *WORK_P_3583369287;



static void work_a_3455515378_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned int t11;

LAB0:    t1 = (t0 + 3464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 6295);
    xsi_report(t2, 22U, 0);
    xsi_set_current_line(97, ng0);
    t2 = ((WORK_P_3583369287) + 1168U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB14;

LAB15:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB18;

LAB19:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB24;

LAB25:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3583369287) + 4168U);
    t5 = *((char **)t2);
    t9 = 1;
    if (2U == 2U)
        goto LAB28;

LAB29:    t9 = 0;

LAB30:    if (t9 == 0)
        goto LAB26;

LAB27:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6531);
    xsi_report(t2, 18U, 0);
    xsi_set_current_line(112, ng0);
    t2 = ((WORK_P_3583369287) + 1288U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t3);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t2 = (t0 + 6317);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB13;

LAB14:    t2 = (t0 + 6343);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB15;

LAB16:    t2 = (t0 + 6369);
    xsi_report(t2, 29U, (unsigned char)1);
    goto LAB17;

LAB18:    t2 = (t0 + 6398);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB19;

LAB20:    t2 = (t0 + 6426);
    xsi_report(t2, 27U, (unsigned char)1);
    goto LAB21;

LAB22:    t2 = (t0 + 6453);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB23;

LAB24:    t2 = (t0 + 6481);
    xsi_report(t2, 25U, (unsigned char)1);
    goto LAB25;

LAB26:    t7 = (t0 + 6506);
    xsi_report(t7, 25U, (unsigned char)1);
    goto LAB27;

LAB28:    t11 = 0;

LAB31:    if (t11 < 2U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t2 = (t4 + t11);
    t6 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t6))
        goto LAB29;

LAB33:    t11 = (t11 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB38;

LAB39:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB40;

LAB41:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB42;

LAB43:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB46;

LAB47:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB48;

LAB49:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB50;

LAB51:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3583369287) + 4768U);
    t5 = *((char **)t2);
    t9 = 1;
    if (2U == 2U)
        goto LAB54;

LAB55:    t9 = 0;

LAB56:    if (t9 == 0)
        goto LAB52;

LAB53:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 6763);
    xsi_report(t2, 18U, 0);
    xsi_set_current_line(126, ng0);
    t2 = ((WORK_P_3583369287) + 1408U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(127, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t3);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    t2 = (t0 + 6549);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB39;

LAB40:    t2 = (t0 + 6575);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB41;

LAB42:    t2 = (t0 + 6601);
    xsi_report(t2, 29U, (unsigned char)1);
    goto LAB43;

LAB44:    t2 = (t0 + 6630);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB45;

LAB46:    t2 = (t0 + 6658);
    xsi_report(t2, 27U, (unsigned char)1);
    goto LAB47;

LAB48:    t2 = (t0 + 6685);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB49;

LAB50:    t2 = (t0 + 6713);
    xsi_report(t2, 25U, (unsigned char)1);
    goto LAB51;

LAB52:    t7 = (t0 + 6738);
    xsi_report(t7, 25U, (unsigned char)1);
    goto LAB53;

LAB54:    t11 = 0;

LAB57:    if (t11 < 2U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t2 = (t4 + t11);
    t6 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t6))
        goto LAB55;

LAB59:    t11 = (t11 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB64;

LAB65:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB66;

LAB67:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB70;

LAB71:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB72;

LAB73:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB74;

LAB75:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB76;

LAB77:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3583369287) + 4888U);
    t5 = *((char **)t2);
    t9 = 1;
    if (2U == 2U)
        goto LAB80;

LAB81:    t9 = 0;

LAB82:    if (t9 == 0)
        goto LAB78;

LAB79:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 6995);
    xsi_report(t2, 29U, 0);
    xsi_set_current_line(141, ng0);
    t2 = ((WORK_P_3583369287) + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(142, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t3);

LAB88:    *((char **)t1) = &&LAB89;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    t2 = (t0 + 6781);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB65;

LAB66:    t2 = (t0 + 6807);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB67;

LAB68:    t2 = (t0 + 6833);
    xsi_report(t2, 29U, (unsigned char)1);
    goto LAB69;

LAB70:    t2 = (t0 + 6862);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB71;

LAB72:    t2 = (t0 + 6890);
    xsi_report(t2, 27U, (unsigned char)1);
    goto LAB73;

LAB74:    t2 = (t0 + 6917);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB75;

LAB76:    t2 = (t0 + 6945);
    xsi_report(t2, 25U, (unsigned char)1);
    goto LAB77;

LAB78:    t7 = (t0 + 6970);
    xsi_report(t7, 25U, (unsigned char)1);
    goto LAB79;

LAB80:    t11 = 0;

LAB83:    if (t11 < 2U)
        goto LAB84;
    else
        goto LAB82;

LAB84:    t2 = (t4 + t11);
    t6 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t6))
        goto LAB81;

LAB85:    t11 = (t11 + 1);
    goto LAB83;

LAB86:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB90;

LAB91:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB92;

LAB93:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB94;

LAB95:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB96;

LAB97:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB98;

LAB99:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB100;

LAB101:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB102;

LAB103:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3583369287) + 5008U);
    t5 = *((char **)t2);
    t9 = 1;
    if (2U == 2U)
        goto LAB106;

LAB107:    t9 = 0;

LAB108:    if (t9 == 0)
        goto LAB104;

LAB105:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 7238);
    xsi_report(t2, 21U, 0);
    xsi_set_current_line(156, ng0);
    t2 = ((WORK_P_3583369287) + 1768U);
    t4 = *((char **)t2);
    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(157, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t3);

LAB114:    *((char **)t1) = &&LAB115;
    goto LAB1;

LAB87:    goto LAB86;

LAB89:    goto LAB87;

LAB90:    t2 = (t0 + 7024);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB91;

LAB92:    t2 = (t0 + 7050);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB93;

LAB94:    t2 = (t0 + 7076);
    xsi_report(t2, 29U, (unsigned char)1);
    goto LAB95;

LAB96:    t2 = (t0 + 7105);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB97;

LAB98:    t2 = (t0 + 7133);
    xsi_report(t2, 27U, (unsigned char)1);
    goto LAB99;

LAB100:    t2 = (t0 + 7160);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB101;

LAB102:    t2 = (t0 + 7188);
    xsi_report(t2, 25U, (unsigned char)1);
    goto LAB103;

LAB104:    t7 = (t0 + 7213);
    xsi_report(t7, 25U, (unsigned char)1);
    goto LAB105;

LAB106:    t11 = 0;

LAB109:    if (t11 < 2U)
        goto LAB110;
    else
        goto LAB108;

LAB110:    t2 = (t4 + t11);
    t6 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t6))
        goto LAB107;

LAB111:    t11 = (t11 + 1);
    goto LAB109;

LAB112:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB116;

LAB117:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB118;

LAB119:    xsi_set_current_line(161, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB120;

LAB121:    xsi_set_current_line(162, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 0)
        goto LAB122;

LAB123:    xsi_set_current_line(163, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB124;

LAB125:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB126;

LAB127:    xsi_set_current_line(165, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t9 = *((unsigned char *)t4);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 0)
        goto LAB128;

LAB129:    xsi_set_current_line(166, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = ((WORK_P_3583369287) + 4048U);
    t5 = *((char **)t2);
    t9 = 1;
    if (2U == 2U)
        goto LAB132;

LAB133:    t9 = 0;

LAB134:    if (t9 == 0)
        goto LAB130;

LAB131:    xsi_set_current_line(169, ng0);

LAB140:    *((char **)t1) = &&LAB141;
    goto LAB1;

LAB113:    goto LAB112;

LAB115:    goto LAB113;

LAB116:    t2 = (t0 + 7259);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB117;

LAB118:    t2 = (t0 + 7285);
    xsi_report(t2, 26U, (unsigned char)1);
    goto LAB119;

LAB120:    t2 = (t0 + 7311);
    xsi_report(t2, 29U, (unsigned char)1);
    goto LAB121;

LAB122:    t2 = (t0 + 7340);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB123;

LAB124:    t2 = (t0 + 7368);
    xsi_report(t2, 27U, (unsigned char)1);
    goto LAB125;

LAB126:    t2 = (t0 + 7395);
    xsi_report(t2, 28U, (unsigned char)1);
    goto LAB127;

LAB128:    t2 = (t0 + 7423);
    xsi_report(t2, 25U, (unsigned char)1);
    goto LAB129;

LAB130:    t7 = (t0 + 7448);
    xsi_report(t7, 25U, (unsigned char)1);
    goto LAB131;

LAB132:    t11 = 0;

LAB135:    if (t11 < 2U)
        goto LAB136;
    else
        goto LAB134;

LAB136:    t2 = (t4 + t11);
    t6 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t6))
        goto LAB133;

LAB137:    t11 = (t11 + 1);
    goto LAB135;

LAB138:    goto LAB2;

LAB139:    goto LAB138;

LAB141:    goto LAB139;

}


extern void work_a_3455515378_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3455515378_2372691052_p_0};
	xsi_register_didat("work_a_3455515378_2372691052", "isim/control_unit_tb_isim_beh.exe.sim/work/a_3455515378_2372691052.didat");
	xsi_register_executes(pe);
}
