Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1A6-0003Kg-4V
 for barebox@lists.infradead.org; Sun, 26 May 2019 21:58:39 +0000
Received: by mail-it1-x143.google.com with SMTP id g24so17098773iti.5
 for <barebox@lists.infradead.org>; Sun, 26 May 2019 14:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190521155626.9906-5-a.fatoum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 26 May 2019 14:58:26 -0700
Message-ID: <CAHQ1cqGOm1R2+HBj01mtU3Mx2czCk0YcwaYZGzRtmND_t3YB6A@mail.gmail.com>
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
Subject: Re: [PATCH v2 4/5] clk: imx6: Fix procedure to switch the parent of
 LDB_DI_CLK
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, pza@pengutronix.de

On Tue, May 21, 2019 at 8:56 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> From: Fabio Estevam <fabio.estevam@nxp.com>
>
> Due to incorrect placement of the clock gate cell in the ldb_di[x]_clk
> tree, the glitchy parent mux of ldb_di[x]_clk can cause a glitch to
> enter the ldb_di_ipu_div divider. If the divider gets locked up, no
> ldb_di[x]_clk is generated, and the LVDS display will hang when the
> ipu_di_clk is sourced from ldb_di_clk.
>
> To fix the problem, both the new and current parent of the ldb_di_clk
> should be disabled before the switch. This patch ensures that correct
> steps are followed when ldb_di_clk parent is switched in the beginning
> of boot. The glitchy muxes are then registered as read-only. The clock
> parent can be selected using the assigned-clocks and
> assigned-clock-parents properties of the ccm device tree node:
>
>         &clks {
>                 assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
>                                   <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
>                 assigned-clock-parents = <&clks IMX6QDL_CLK_MMDC_CH1_AXI>,
>                                          <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
>         };
>
> The issue is explained in detail in EB821 ("LDB Clock Switch Procedure &
> i.MX6 Asynchronous Clock Switching Guidelines") [1].
>
> [1] http://www.nxp.com/files/32bit/doc/eng_bulletin/EB821.pdf
>
> Signed-off-by: Ranjani Vaidyanathan <Ranjani.Vaidyanathan@nxp.com>
> Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Reviewed-by: Akshay Bhat <akshay.bhat@timesys.com>
> Tested-by Joshua Clayton <stillcompiling@gmail.com>
> Tested-by: Charles Kang <Charles.Kang@advantech.com.tw>
> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> [afa: ported to barebox from Linux commit 5d283b0838]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx6.c | 264 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 261 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
> index 22f33aee03e9..69586f04a21f 100644
> --- a/drivers/clk/imx/clk-imx6.c
> +++ b/drivers/clk/imx/clk-imx6.c
> @@ -64,6 +64,12 @@ static inline int cpu_is_plus(void)
>         return cpu_is_mx6qp() || cpu_is_mx6dp();
>  }
>
> +/* Audio/Video PLL post dividers don't work on i.MX6q revision 1.0 */
> +static inline int cpu_has_working_video_pll_post_div(void) {
> +       return !((cpu_is_mx6q() || cpu_is_mx6d()) &&
> +                imx_silicon_revision() == IMX_CHIP_REV_1_0);
> +}
> +
>  /* i.MX6 Quad/Dual/DualLite/Solo are all affected */
>  static inline int cpu_has_err009219(void) {
>         return cpu_is_mx6d() || cpu_is_mx6q() ||
> @@ -299,9 +305,89 @@ static struct clk_div_table video_div_table[] = {
>         { /* sentinel */ }
>  };
>
> +static int ldb_di_sel_by_clock_id(int clock_id)
> +{
> +       switch (clock_id) {
> +       case IMX6QDL_CLK_PLL5_VIDEO_DIV:
> +               if (!cpu_has_working_video_pll_post_div())
> +                       return -ENOENT;
> +               return 0;
> +       case IMX6QDL_CLK_PLL2_PFD0_352M:
> +               return 1;
> +       case IMX6QDL_CLK_PLL2_PFD2_396M:
> +               return 2;
> +       case IMX6QDL_CLK_MMDC_CH1_AXI:
> +               return 3;
> +       case IMX6QDL_CLK_PLL3_USB_OTG:
> +               return 4;
> +       default:
> +               return -ENOENT;
> +       }
> +}
> +
> +static void of_assigned_ldb_sels(struct device_node *node,
> +                                unsigned int *ldb_di0_sel,
> +                                unsigned int *ldb_di1_sel)
> +{
> +       struct of_phandle_args clkspec;
> +       int index, rc, num_parents;
> +       int parent, child, sel;
> +
> +       num_parents = of_count_phandle_with_args(node, "assigned-clock-parents",
> +                                                "#clock-cells");
> +       for (index = 0; index < num_parents; index++) {
> +               rc = of_parse_phandle_with_args(node, "assigned-clock-parents",
> +                                       "#clock-cells", index, &clkspec);
> +               if (rc < 0) {
> +                       /* skip empty (null) phandles */
> +                       if (rc == -ENOENT)
> +                               continue;
> +                       else
> +                               return;
> +               }
> +               if (clkspec.np != node || clkspec.args[0] >= IMX6QDL_CLK_END) {
> +                       pr_err("ccm: parent clock %d not in ccm\n", index);
> +                       return;
> +               }
> +               parent = clkspec.args[0];
> +
> +               rc = of_parse_phandle_with_args(node, "assigned-clocks",
> +                               "#clock-cells", index, &clkspec);
> +               if (rc < 0)
> +                       return;
> +               if (clkspec.np != node || clkspec.args[0] >= IMX6QDL_CLK_END) {
> +                       pr_err("ccm: child clock %d not in ccm\n", index);
> +                       return;
> +               }
> +               child = clkspec.args[0];
> +
> +               if (child != IMX6QDL_CLK_LDB_DI0_SEL &&
> +                   child != IMX6QDL_CLK_LDB_DI1_SEL)
> +                       continue;
> +
> +               sel = ldb_di_sel_by_clock_id(parent);
> +               if (sel < 0) {
> +                       pr_err("ccm: invalid ldb_di%d parent clock: %d\n",
> +                              child == IMX6QDL_CLK_LDB_DI1_SEL, parent);
> +                       continue;
> +               }
> +
> +               if (child == IMX6QDL_CLK_LDB_DI0_SEL)
> +                       *ldb_di0_sel = sel;
> +               if (child == IMX6QDL_CLK_LDB_DI1_SEL)
> +                       *ldb_di1_sel = sel;
> +       }
> +}
> +
>  #define CCM_CCDR               0x04
> +#define CCM_CCSR               0x0c
> +#define CCM_CS2CDR             0x2c
> +
> +#define CCDR_MMDC_CH1_MASK             BIT(16)
> +#define CCSR_PLL3_SW_CLK_SEL           BIT(0)
>
> -#define CCDR_MMDC_CH1_MASK     BIT(16)
> +#define CS2CDR_LDB_DI0_CLK_SEL_SHIFT   9
> +#define CS2CDR_LDB_DI1_CLK_SEL_SHIFT   12
>
>  static void __init imx6q_mmdc_ch1_mask_handshake(void __iomem *ccm_base)
>  {
> @@ -312,7 +398,170 @@ static void __init imx6q_mmdc_ch1_mask_handshake(void __iomem *ccm_base)
>         writel(reg, ccm_base + CCM_CCDR);
>  }
>
> -static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
> +/*
> + * The only way to disable the MMDC_CH1 clock is to move it to pll3_sw_clk
> + * via periph2_clk2_sel and then to disable pll3_sw_clk by selecting the
> + * bypass clock source, since there is no CG bit for mmdc_ch1.
> + */
> +static void mmdc_ch1_disable(void __iomem *ccm_base)
> +{
> +       unsigned int reg;
> +
> +       clk_set_parent(clks[IMX6QDL_CLK_PERIPH2_CLK2_SEL],
> +                      clks[IMX6QDL_CLK_PLL3_USB_OTG]);
> +
> +       /*
> +        * Handshake with mmdc_ch1 module must be masked when changing
> +        * periph2_clk_sel.
> +        */
> +       clk_set_parent(clks[IMX6QDL_CLK_PERIPH2], clks[IMX6QDL_CLK_PERIPH2_CLK2]);
> +
> +       /* Disable pll3_sw_clk by selecting the bypass clock source */
> +       reg = readl(ccm_base + CCM_CCSR);
> +       reg |= CCSR_PLL3_SW_CLK_SEL;
> +       writel(reg, ccm_base + CCM_CCSR);
> +}
> +
> +static void mmdc_ch1_reenable(void __iomem *ccm_base)
> +{
> +       unsigned int reg;
> +
> +       /* Enable pll3_sw_clk by disabling the bypass */
> +       reg = readl(ccm_base + CCM_CCSR);
> +       reg &= ~CCSR_PLL3_SW_CLK_SEL;
> +       writel(reg, ccm_base + CCM_CCSR);
> +
> +       clk_set_parent(clks[IMX6QDL_CLK_PERIPH2], clks[IMX6QDL_CLK_PERIPH2_PRE]);
> +}
> +
> +/*
> + * We have to follow a strict procedure when changing the LDB clock source,
> + * otherwise we risk introducing a glitch that can lock up the LDB divider.
> + * Things to keep in mind:
> + *
> + * 1. The current and new parent clock inputs to the mux must be disabled.
> + * 2. The default clock input for ldb_di0/1_clk_sel is mmdc_ch1_axi, which
> + *    has no CG bit.
> + * 3. pll2_pfd2_396m can not be gated if it is used as memory clock.
> + * 4. In the RTL implementation of the LDB_DI_CLK_SEL muxes the top four
> + *    options are in one mux and the PLL3 option along with three unused
> + *    inputs is in a second mux. There is a third mux with two inputs used
> + *    to decide between the first and second 4-port mux:
> + *
> + *    pll5_video_div 0 --|\
> + *    pll2_pfd0_352m 1 --| |_
> + *    pll2_pfd2_396m 2 --| | `-|\
> + *    mmdc_ch1_axi   3 --|/    | |
> + *                             | |--
> + *    pll3_usb_otg   4 --|\    | |
> + *                   5 --| |_,-|/
> + *                   6 --| |
> + *                   7 --|/
> + *
> + * The ldb_di0/1_clk_sel[1:0] bits control both 4-port muxes at the same time.
> + * The ldb_di0/1_clk_sel[2] bit controls the 2-port mux. The code below
> + * switches the parent to the bottom mux first and then manipulates the top
> + * mux to ensure that no glitch will enter the divider.
> + */
> +static void init_ldb_clks(struct device_node *np, void __iomem *ccm_base)
> +{
> +       unsigned int reg;
> +       unsigned int sel[2][4];
> +       int i;
> +
> +       reg = readl(ccm_base + CCM_CS2CDR);
> +       sel[0][0] = (reg >> CS2CDR_LDB_DI0_CLK_SEL_SHIFT) & 7;
> +       sel[1][0] = (reg >> CS2CDR_LDB_DI1_CLK_SEL_SHIFT) & 7;

Nit: FIELD_GET()/GENMASK() to avoid the explicit shifting?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
