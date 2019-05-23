Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkXS-0002FZ-5X
 for barebox@lists.infradead.org; Thu, 23 May 2019 10:01:31 +0000
Message-ID: <1558605688.5135.5.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 23 May 2019 12:01:28 +0200
In-Reply-To: <20190521155626.9906-3-a.fatoum@pengutronix.de>
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-3-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 2/5] clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks
 read-only
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: pza@pengutronix.de

On Tue, 2019-05-21 at 17:56 +0200, Ahmad Fatoum wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> Due to incorrect placement of the clock gate cell in the ldb_di[x]_clk
> tree, the glitchy parent mux of ldb_di[x]_clk can cause a glitch to
> enter the ldb_di_ipu_div divider. If the divider gets locked up, no
> ldb_di[x]_clk is generated, and the LVDS display will hang when the
> ipu_di_clk is sourced from ldb_di_clk.
> 
> To fix the problem, both the new and current parent of the ldb_di_clk
> should be disabled before the switch. As this can not be guaranteed by
> the clock framework during runtime, make the ldb_di[x]_sel muxes read-only.
> A workaround to set the muxes once during boot could be added to the
> kernel or bootloader.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> [afa: ported from Linux kernel commit 03d576f202]
> [afa: added exception for i.MX6QP, see kernel commit f4a0a6c309]
> [afa: added cpu_has_err009219 helper function]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
