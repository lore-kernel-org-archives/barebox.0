Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9gf-00055Q-SV
 for barebox@lists.infradead.org; Mon, 27 May 2019 07:04:51 +0000
Received: by mail-it1-x144.google.com with SMTP id m3so25357975itl.1
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 00:04:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190521155626.9906-5-a.fatoum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 00:04:37 -0700
Message-ID: <CAHQ1cqEDxoEcNmL+pWw3AaH14kKp1n7r13U+fDv=GKLTRyTdOw@mail.gmail.com>
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

Another { that should be on a new line.

> +       return !((cpu_is_mx6q() || cpu_is_mx6d()) &&
> +                imx_silicon_revision() == IMX_CHIP_REV_1_0);

Same story with cpu_is_mx6*() here. Imx_silicon_revision() depends on
imx_init() being called as well AFAIU.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
