Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YzO6i-00081Z-Ih
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 11:42:17 +0000
Date: Mon, 1 Jun 2015 13:41:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150601114150.GG6325@pengutronix.de>
References: <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
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
Subject: Re: Clocks on Barebox
To: andreas.willig@rafi.de
Cc: barebox@lists.infradead.org

Hi Andreas,

On Mon, Jun 01, 2015 at 10:12:55AM +0200, andreas.willig@rafi.de wrote:
> Hi all
> i just updated from 2014 to latest Barebox and hit the following problem:
> of_clk_init from clk.c:451 does not find any entries. matches is set to __clk_of_table start where compatible=0 and data=0,
> but from my thoughts the dt is ok on this point:

I have no idea currently. You are doing nothing obviously wrong.

> from arch/arm/mach-imx/clk-imx6.c are removed:
> static int imx6_ccm_probe()
> {
> - unsigned long ckil_rate = 32768;
> - unsigned long ckih_rate = 0;
> - unsigned long osc_rate = 24000000;
> - clks[dummy] = clk_fixed("dummy", 0);
> - clks[ckil] = clk_fixed("ckil", ckil_rate);
> - clks[ckih] = clk_fixed("ckih", ckih_rate);
> - clks[osc] = clk_fixed("osc", osc_rate);
> }

These are removed because they come from the OF clock providers now. For
this you need COMMON_CLK_OF_PROVIDER enabled, but this should be
selected by the imx6 support automatically though. Let me test this on
some hardware here. What barebox version do you use? master, next, or
the latest release?

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
