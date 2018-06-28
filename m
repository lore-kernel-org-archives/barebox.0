Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYSK6-00062t-GR
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 08:30:40 +0000
Date: Thu, 28 Jun 2018 10:30:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180628083021.j6gqwiopqk34vqtl@pengutronix.de>
References: <20180627140711.16764-1-mlauridsen171@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180627140711.16764-1-mlauridsen171@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX53: Set pll3 directly to 216MHz.
To: Mogens Lauridsen <mlauridsen171@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 27, 2018 at 04:07:11PM +0200, Mogens Lauridsen wrote:
> PLL3 was first set to 400MHz and then some peripheral was switched
> to PLL3. Finally PLL3 was set to 216MHz. This could make some
> i.MX538 hang in a dead loop in the boot process.

Let's see what the code currently does:

By reset default the clock path to the DDR is:

PLL2 (192MHz) -> periph_clk -> main_bus_clk -> axi_a_podf -> axi_a (/1 = 192MHz) -> ddr_clk_root

PLL2 is running at 192MHz. The code now tries to switch PLL2 from 192MHz
to 400MHz. This requires that the RAM is driven by some other clock
during
the PLL reconfiguration. The code switches the clock path to:

PLL3 (400MHz) -> periph_clk -> main_bus_clk -> axi_a_podf -> axi_a (/2 = 200MHz) -> ddr_clk_root

Then PLL2 is reconfigured to 400MHz and the DDR clock path is switched
back to the original path, this time with the PLL runnning at 400MHz, so
RAM is then running at the desired speed.

The code configures PLL3 to 400MHz probably to keep the DDR frequency
nearly constant during the transition.

I have no idea why your change helps you. When I understand correctly
then you are running nearly at half the frequency during the transition
(400/216).

I'm afraid to merge such change as long as we do not fully understand
what we are doing and why it helps.

BTW the current code is the same as on U-Boot which is derived from the
original Freescale code, so this is not exactly new or barebox specific.

Do you have anything special in your dcd table that influences the
clocks in an unexpected way?

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
