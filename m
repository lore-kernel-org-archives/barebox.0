Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua8h-0007RD-4Y
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 10:22:52 +0000
Date: Mon, 5 Aug 2019 12:22:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190805102249.dvmg3emz5xrndsq5@pengutronix.de>
References: <20190717170604.23732-1-a.fatoum@pengutronix.de>
 <20190717170604.23732-5-a.fatoum@pengutronix.de>
 <20190718081955.cn7sctee7fx54lw2@pengutronix.de>
 <9efd3017-ce12-3e36-6ed3-41db8aa163ce@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9efd3017-ce12-3e36-6ed3-41db8aa163ce@pengutronix.de>
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
Subject: Re: [PATCH v3 4/6] clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks
 read-only
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>

On Thu, Jul 18, 2019 at 10:25:05AM +0200, Ahmad Fatoum wrote:
> Hello Roland,
> 
> On 18/7/19 10:19, Roland Hieber wrote:
> > On Wed, Jul 17, 2019 at 07:06:02PM +0200, Ahmad Fatoum wrote:
> >> From: Philipp Zabel <p.zabel@pengutronix.de>
> >>
> >> Due to incorrect placement of the clock gate cell in the ldb_di[x]_clk
> >> tree, the glitchy parent mux of ldb_di[x]_clk can cause a glitch to
> >> enter the ldb_di_ipu_div divider. If the divider gets locked up, no
> >> ldb_di[x]_clk is generated, and the LVDS display will hang when the
> >> ipu_di_clk is sourced from ldb_di_clk.
> >>
> >> To fix the problem, both the new and current parent of the ldb_di_clk
> >> should be disabled before the switch. As this can not be guaranteed by
> >> the clock framework during runtime, make the ldb_di[x]_sel muxes read-only.
> >> A workaround to set the muxes once during boot could be added to the
> >> kernel or bootloader.
> >>
> >> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> >> Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
> >> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> >> [afa: reviewed for barebox]
> >> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> >> Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >> [afa: ported from Linux kernel commit 03d576f202]
> > 
> > Should this line be further above, or were the lines above all part of
> > the Linux commit?
> 
> The first [afa: is the Demarcation line between kernel and barebox
> commit message. If I moved the second [afa: further up it wouldn't be
> that clear who did what..
> 
> In retrospect, I should have used some ASCII box for the original
> commit and indented it a bit. 

Added that and applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
