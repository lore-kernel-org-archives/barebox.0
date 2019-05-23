Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkZD-0002XA-UA
 for barebox@lists.infradead.org; Thu, 23 May 2019 10:03:21 +0000
Message-ID: <1558605798.5135.8.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 23 May 2019 12:03:18 +0200
In-Reply-To: <20190521155626.9906-5-a.fatoum@pengutronix.de>
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-5-a.fatoum@pengutronix.de>
Mime-Version: 1.0
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
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: pza@pengutronix.de

On Tue, 2019-05-21 at 17:56 +0200, Ahmad Fatoum wrote:
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

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
