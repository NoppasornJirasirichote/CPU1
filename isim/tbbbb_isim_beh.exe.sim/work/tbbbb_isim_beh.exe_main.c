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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_08005940258995487516_3763569857_init();
    work_m_10897288632926922045_4075170607_init();
    work_m_14802711099719422257_3794528521_init();
    work_m_14802711099719422257_0452935929_init();
    work_m_08012845275943079593_0836688023_init();
    work_m_14802711099719422257_3986356099_init();
    work_m_07528573068520486864_0123472297_init();
    work_m_11018395554654530431_3627383655_init();
    work_m_13170093701859411168_1277329626_init();
    work_m_08162756350468650938_1016282708_init();
    work_m_12337820047649770872_3984318886_init();
    work_m_08489668332143791578_3027548060_init();
    work_m_13825408345215699849_3938050280_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_13825408345215699849_3938050280");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
