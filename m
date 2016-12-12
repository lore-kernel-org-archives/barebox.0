Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x244.google.com ([2607:f8b0:400d:c0d::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGJ6k-0005Xd-Ma
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 05:25:04 +0000
Received: by mail-qt0-x244.google.com with SMTP id m48so8548550qta.2
 for <barebox@lists.infradead.org>; Sun, 11 Dec 2016 21:24:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161207192733.l3w4nc2s5cz47d22@pengutronix.de>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
 <1480949684-18520-7-git-send-email-andrew.smirnov@gmail.com>
 <20161207192733.l3w4nc2s5cz47d22@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 11 Dec 2016 21:24:38 -0800
Message-ID: <CAHQ1cqH3-MJY94Am7rtdPcPna5CCWoBzfDs_eP6KKuEWRrw7_A@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/16] i.MX: vf610: Ramp CPU clock to maximum frequency
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Dec 7, 2016 at 11:27 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Dec 05, 2016 at 06:54:34AM -0800, Andrey Smirnov wrote:
>> Mask ROM leaves the CPU running at 264Mhz, so configure the clock tree
>> to such that CPU runs at maximum supported frequency, based on speed
>> grading burned into OCOTP fusebox.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/mach-imx/Kconfig   |  13 +++
>>  drivers/clk/imx/clk-vf610.c | 187 +++++++++++++++++++++++++++++++++++++++++++-
>>  2 files changed, 198 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
>> index af533ea..1752335 100644
>> --- a/arch/arm/mach-imx/Kconfig
>> +++ b/arch/arm/mach-imx/Kconfig
>> @@ -750,6 +750,19 @@ config HABV3_IMG_CRT_DER
>>
>>  endif
>>
>> +config ADJUST_CPU_CLOCK
>> +       bool "Adjust CPU clock based on its speed grading"
>> +       select IMX_OCOTP
>> +       depends on ARCH_VF610
>> +       default y
>> +       help
>> +       Some i.MX SoCs (e. g. Vybrid) are manufactured to have
>> +       several variants of the same chip different only in maxumum
>
> s/maxumum/maximum/

Will fix in v3, thanks

>
>> +       CPU frequency supported. MaskROM on such chips plays it safe
>> +       and uses the lowest possible frequency. This option
>> +       configures Barebox to read chip's speed grade information
>> +       and increase CPU clock to it's highest possible value.
>
> Why do we need this configurable?

I don't really have a strong use-case for it to be. I'll drop this part in v3.

>
>> +
>>  endmenu
>>
>>  endif
>> diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
>> index 04cb02f..1cf2b65 100644
>> --- a/drivers/clk/imx/clk-vf610.c
>> +++ b/drivers/clk/imx/clk-vf610.c
>> @@ -16,7 +16,9 @@
>>  #include <of_address.h>
>>  #include <linux/clkdev.h>
>>  #include <linux/clk.h>
>> +#include <notifier.h>
>>  #include <dt-bindings/clock/vf610-clock.h>
>> +#include <mach/vf610-regs.h>
>>
>>  #include "clk.h"
>>
>> @@ -76,6 +78,7 @@
>>  #define PLL6_CTRL            (anatop_base + 0xa0)
>>  #define PLL7_CTRL            (anatop_base + 0x20)
>>  #define ANA_MISC1            (anatop_base + 0x160)
>> +#define PLL_LOCK             (anatop_base + 0x2c0)
>>
>>  static void __iomem *anatop_base;
>>  static void __iomem *ccm_base;
>> @@ -188,8 +191,9 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
>>       clk[VF610_CLK_PLL6_BYPASS_SRC] = imx_clk_mux("pll6_bypass_src", PLL6_CTRL, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
>>       clk[VF610_CLK_PLL7_BYPASS_SRC] = imx_clk_mux("pll7_bypass_src", PLL7_CTRL, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
>>
>> -     clk[VF610_CLK_PLL1] = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll1", "pll1_bypass_src", PLL1_CTRL, 0x1);
>> -     clk[VF610_CLK_PLL2] = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll2", "pll2_bypass_src", PLL2_CTRL, 0x1);
>> +     clk[VF610_CLK_PLL1] = imx_clk_pllv3_locked(IMX_PLLV3_SYS_VF610, "pll1", "pll1_bypass_src", PLL1_CTRL, 0x1, PLL_LOCK, BIT(6));
>> +     clk[VF610_CLK_PLL2] = imx_clk_pllv3_locked(IMX_PLLV3_SYS_VF610, "pll2", "pll2_bypass_src", PLL2_CTRL, 0x1, PLL_LOCK, BIT(5));
>> +
>>       clk[VF610_CLK_PLL3] = imx_clk_pllv3(IMX_PLLV3_USB_VF610,     "pll3", "pll3_bypass_src", PLL3_CTRL, 0x2);
>>       clk[VF610_CLK_PLL4] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll4", "pll4_bypass_src", PLL4_CTRL, 0x7f);
>>       clk[VF610_CLK_PLL5] = imx_clk_pllv3(IMX_PLLV3_ENET,    "pll5", "pll5_bypass_src", PLL5_CTRL, 0x3);
>> @@ -441,3 +445,182 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
>>       of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
>>  }
>>  CLK_OF_DECLARE(vf610, "fsl,vf610-ccm", vf610_clocks_init);
>> +
>> +#ifdef CONFIG_ADJUST_CPU_CLOCK
>> +
>> +enum {
>> +     OCOTP_SPEED_GRADING_OFFSET = (0x4 * sizeof(uint32_t)),
>> +     OCOTP_SPEED_GRADING_SHIFT  = 18,
>> +     OCOTP_SPEED_GRADING_MASK   = 0b1111,
>> +
>> +     VF610_SPEED_500 = 0b1110,
>> +     VF610_SPEED_400 = 0b1001,
>> +     VF610_SPEED_266 = 0b0001,
>> +
>> +     DDRMC_CR117 = 0x01d4,
>> +     DDRMC_CR117_AXI0_FITYPEREG_SYNC = 0b01 << 16,
>> +};
>> +
>> +static int vf610_switch_cpu_clock_to_500mhz(void)
>> +{
>> +     int ret;
>> +
>> +     /*
>> +      * When switching A5 CPU to 500Mhz we expect DDRC to be
>> +      * clocked by PLL2_PFD2 and the system to be configured in
>> +      * asynchronous mode.
>> +      *
>> +      * We also can't just use default PFD1 output of PLL1 due to
>> +      * Errata e6235, so we have to re-clock the PLL itself and use
>> +      * its output to clock the CPU directly.
>> +      */
>> +
>> +     if (clk_get_parent(clk[VF610_CLK_DDR_SEL]) != clk[VF610_CLK_PLL2_PFD2]) {
>> +             pr_warn("DDRC is clocked by PLL1, can't switch CPU clock");
>> +             return -EINVAL;
>> +     }
>> +
>> +     ret = clk_set_parent(clk[VF610_CLK_SYS_SEL], clk[VF610_CLK_PLL2_BUS]);
>> +     if (ret < 0) {
>> +             pr_crit("Unable to re-parent '%s'\n",
>> +                     clk[VF610_CLK_SYS_SEL]->name);
>> +             return ret;
>> +     }
>> +
>> +     ret = clk_set_rate(clk[VF610_CLK_PLL1], 500000000);
>> +     if (ret < 0) {
>> +             pr_crit("Unable to set %s to 500Mhz %d\n",
>> +                     clk[VF610_CLK_PLL1]->name, ret);
>> +             return ret;
>> +     }
>> +
>> +     ret = clk_set_parent(clk[VF610_CLK_PLL1_PFD_SEL], clk[VF610_CLK_PLL1_SYS]);
>> +     if (ret < 0) {
>> +             pr_crit("Unable to re-parent '%s'\n",
>> +                     clk[VF610_CLK_PLL1_PFD_SEL]->name);
>> +             return ret;
>> +     }
>> +
>> +     ret = clk_set_parent(clk[VF610_CLK_SYS_SEL], clk[VF610_CLK_PLL1_PFD_SEL]);
>> +     if (ret < 0) {
>> +             pr_crit("Unable to re-parent '%s'\n",
>> +                     clk[VF610_CLK_SYS_SEL]->name);
>> +             return ret;
>> +     }
>> +
>> +     /*
>> +      * imx_clk_divider has no error path in its set_rate hook
>> +      */
>> +     clk_set_rate(clk[VF610_CLK_SYS_BUS], clk_get_rate(clk[VF610_CLK_SYS_SEL]));
>> +     clk_set_rate(clk[VF610_CLK_PLATFORM_BUS], clk_get_rate(clk[VF610_CLK_SYS_BUS]) / 3);
>> +
>> +     return ret;
>> +}
>> +
>> +static int vf610_switch_cpu_clock_to_400mhz(void)
>> +{
>> +     int ret;
>> +     uint32_t cr117;
>> +     void * __iomem ddrmc = IOMEM(VF610_DDR_BASE_ADDR);
>> +
>> +     if (clk_get_parent(clk[VF610_CLK_DDR_SEL]) != clk[VF610_CLK_PLL2_PFD2]) {
>> +             pr_warn("DDRC is clocked by PLL1, can't switch CPU clock");
>> +             return -EINVAL;
>> +     }
>> +
>> +     ret = clk_set_parent(clk[VF610_CLK_PLL2_PFD_SEL], clk[VF610_CLK_PLL2_PFD2]);
>> +     if (ret < 0) {
>> +             pr_crit("Unable to re-parent '%s'\n",
>> +                     clk[VF610_CLK_PLL2_PFD_SEL]->name);
>> +             return ret;
>> +     }
>> +
>> +     ret = clk_set_parent(clk[VF610_CLK_SYS_SEL], clk[VF610_CLK_PLL2_PFD_SEL]);
>> +     if (ret < 0) {
>> +             pr_crit("Unable to re-parent '%s'\n",
>> +                     clk[VF610_CLK_SYS_SEL]->name);
>> +             return ret;
>> +     }
>> +
>> +     /*
>> +      * imx_clk_divider has no error path in its set_rate hook
>> +      */
>> +     clk_set_rate(clk[VF610_CLK_SYS_BUS], clk_get_rate(clk[VF610_CLK_SYS_SEL]));
>> +     clk_set_rate(clk[VF610_CLK_PLATFORM_BUS], clk_get_rate(clk[VF610_CLK_SYS_BUS]) / 3);
>> +
>> +     /*
>> +      * Now that we are running off of the same clock as DDRMC we
>> +      * shouldn't need to use clock domain corssing FIFO and
>
> s/corssing/crossing/?

Will fix in v3, thanks

>
>> +      * asynchronous mode and instead can swithch to sychronous
>> +      * mode for AXI0 accesses
>> +      */
>> +     cr117 =  readl(ddrmc + DDRMC_CR117);
>> +     cr117 |= DDRMC_CR117_AXI0_FITYPEREG_SYNC;
>> +     writel(cr117, ddrmc + DDRMC_CR117);
>> +
>> +     return 0;
>> +}
>> +
>> +static int vf610_switch_cpu_clock(void)
>> +{
>> +     int ret;
>> +     struct device_node *ocotp_node;
>> +     struct cdev *ocotp;
>> +     uint32_t speed_grading;
>> +
>> +     if (!of_machine_is_compatible("fsl,vf610"))
>> +             return 0;
>> +
>> +     ocotp_node = of_find_compatible_node(NULL, NULL, "fsl,vf610-ocotp");
>> +     if (!ocotp_node) {
>> +             pr_err("Unable to find OCOTP DT node\n");
>> +             return -ENODEV;
>> +     }
>> +
>> +     ocotp = cdev_by_device_node(ocotp_node);
>> +     if (!ocotp) {
>> +             pr_err("No OCOTP character device\n");
>> +             return -ENODEV;
>> +     }
>> +
>> +     ret = cdev_read(ocotp, &speed_grading, sizeof(speed_grading),
>> +                    OCOTP_SPEED_GRADING_OFFSET, 0);
>> +     if (ret != sizeof(speed_grading)) {
>> +             pr_err("Failed to read speed grading data\n");
>> +             return ret < 0 ? ret : -EIO;
>> +     }
>
> There's a better way to access ocotp registers. see
> imx_ocotp_read_field().
>

Good to know, I think I missed that patch going in. Will fix in v3.

>> +
>> +     speed_grading >>= OCOTP_SPEED_GRADING_SHIFT;
>> +     speed_grading &=  OCOTP_SPEED_GRADING_MASK;
>> +
>> +     switch (speed_grading) {
>> +     default:
>> +             pr_err("Unknown CPU speed grading %x\n", speed_grading);
>> +             return -EINVAL;
>> +
>> +     case VF610_SPEED_266:
>> +             return 0;
>> +
>> +     case VF610_SPEED_500:
>> +             ret = vf610_switch_cpu_clock_to_500mhz();
>> +             break;
>> +
>> +     case VF610_SPEED_400:
>> +             ret = vf610_switch_cpu_clock_to_400mhz();
>> +             break;
>> +     }
>> +
>> +     clock_notifier_call_chain();
>> +     return ret;
>> +}
>> +/*
>> + * We can probably gain a bit of a boot speed if we switch CPU clock
>> + * earlier, but if we do this we'd need to figure out a way how to
>> + * re-adjust the baud rate settings of the UART for DEBUG_LL
>> + * functionality, or, accept the fact that it will be unavailbe after
>
> s/unavailbe/unavailable/

Will fix in v3, thanks

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
