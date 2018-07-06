Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fbK3X-0003x8-AC
 for barebox@lists.infradead.org; Fri, 06 Jul 2018 06:17:25 +0000
Date: Fri, 6 Jul 2018 08:17:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180706061702.otgm2crqwqdacz5n@pengutronix.de>
References: <20180627140711.16764-1-mlauridsen171@gmail.com>
 <20180628083021.j6gqwiopqk34vqtl@pengutronix.de>
 <CACA-NJsTCfTBCqyJw0gn3WU_3Uu0kDMNQxLMZZkAiVLh6uMxcA@mail.gmail.com>
 <20180629081011.5q56my7hqbm6apq5@pengutronix.de>
 <CACA-NJuE7pHOtPFMec+CcYoZxKhtermrqyq-wZco6-WzKFDJnA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACA-NJuE7pHOtPFMec+CcYoZxKhtermrqyq-wZco6-WzKFDJnA@mail.gmail.com>
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

On Mon, Jul 02, 2018 at 11:56:54AM +0200, Mogens Lauridsen wrote:
> On Fri, Jun 29, 2018 at 10:10 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Thu, Jun 28, 2018 at 03:56:55PM +0200, Mogens Lauridsen wrote:
> >> On Thu, Jun 28, 2018 at 10:30 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >> > On Wed, Jun 27, 2018 at 04:07:11PM +0200, Mogens Lauridsen wrote:
> >> >> PLL3 was first set to 400MHz and then some peripheral was switched
> >> >> to PLL3. Finally PLL3 was set to 216MHz. This could make some
> >> >> i.MX538 hang in a dead loop in the boot process.
> >> >
> >> > Let's see what the code currently does:
> >> >
> >> > By reset default the clock path to the DDR is:
> >> >
> >> > PLL2 (192MHz) -> periph_clk -> main_bus_clk -> axi_a_podf -> axi_a (/1 = 192MHz) -> ddr_clk_root
> >> >
> >> > PLL2 is running at 192MHz. The code now tries to switch PLL2 from 192MHz
> >> > to 400MHz. This requires that the RAM is driven by some other clock
> >> > during
> >> > the PLL reconfiguration. The code switches the clock path to:
> >> >
> >> > PLL3 (400MHz) -> periph_clk -> main_bus_clk -> axi_a_podf -> axi_a (/2 = 200MHz) -> ddr_clk_root
> >> >
> >> > Then PLL2 is reconfigured to 400MHz and the DDR clock path is switched
> >> > back to the original path, this time with the PLL runnning at 400MHz, so
> >> > RAM is then running at the desired speed.
> >> >
> >> > The code configures PLL3 to 400MHz probably to keep the DDR frequency
> >> > nearly constant during the transition.
> >> >
> >> > I have no idea why your change helps you. When I understand correctly
> >> > then you are running nearly at half the frequency during the transition
> >> > (400/216).
> >> >
> >> > I'm afraid to merge such change as long as we do not fully understand
> >> > what we are doing and why it helps.
> >> I see your point.
> >> I don't know exactly why it helps. But to me it looks suspicious to
> >> set a clock to 400MHz
> >> which in the end only is suppose to run at 216 MHz. I fear that there are small
> >> differences in the individual iMX538 and in some of them the pll might
> >> not always be able
> >> to get a lock at the high frequency.
> >
> > You should be able to test this. In this case the code should hang in
> > the loop waiting for the PLL lock. Is that the case?
> Before changing the pll setup code I did some testing (toggle LEDs on gpio)
> to find where the cpu was hanging. I have verified this again, and it is stuck
> in the second "while (readl(ccm + MX5_CCM_CDHIPR));" in
> "imx53_init_lowlevel_early".

This indeed suggests that the PLL doesn't get a lock :(

I wonder why the current code switches PLL3 to 400MHz and at the same
time increases the axi_a divider from 1 to 2. Instead, we could program
PLL3 to 192MHz, so the same frequency as PLL2 which we already knows the
system runs with, without increasing the divider.

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
