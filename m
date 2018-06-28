Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x22c.google.com ([2607:f8b0:400c:c08::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYXQ3-0008Pj-S7
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 13:57:15 +0000
Received: by mail-ua0-x22c.google.com with SMTP id j17-v6so3599726uap.7
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 06:56:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180628083021.j6gqwiopqk34vqtl@pengutronix.de>
References: <20180627140711.16764-1-mlauridsen171@gmail.com>
 <20180628083021.j6gqwiopqk34vqtl@pengutronix.de>
From: Mogens Lauridsen <mlauridsen171@gmail.com>
Date: Thu, 28 Jun 2018 15:56:55 +0200
Message-ID: <CACA-NJsTCfTBCqyJw0gn3WU_3Uu0kDMNQxLMZZkAiVLh6uMxcA@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 28, 2018 at 10:30 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Jun 27, 2018 at 04:07:11PM +0200, Mogens Lauridsen wrote:
>> PLL3 was first set to 400MHz and then some peripheral was switched
>> to PLL3. Finally PLL3 was set to 216MHz. This could make some
>> i.MX538 hang in a dead loop in the boot process.
>
> Let's see what the code currently does:
>
> By reset default the clock path to the DDR is:
>
> PLL2 (192MHz) -> periph_clk -> main_bus_clk -> axi_a_podf -> axi_a (/1 = 192MHz) -> ddr_clk_root
>
> PLL2 is running at 192MHz. The code now tries to switch PLL2 from 192MHz
> to 400MHz. This requires that the RAM is driven by some other clock
> during
> the PLL reconfiguration. The code switches the clock path to:
>
> PLL3 (400MHz) -> periph_clk -> main_bus_clk -> axi_a_podf -> axi_a (/2 = 200MHz) -> ddr_clk_root
>
> Then PLL2 is reconfigured to 400MHz and the DDR clock path is switched
> back to the original path, this time with the PLL runnning at 400MHz, so
> RAM is then running at the desired speed.
>
> The code configures PLL3 to 400MHz probably to keep the DDR frequency
> nearly constant during the transition.
>
> I have no idea why your change helps you. When I understand correctly
> then you are running nearly at half the frequency during the transition
> (400/216).
>
> I'm afraid to merge such change as long as we do not fully understand
> what we are doing and why it helps.
I see your point.
I don't know exactly why it helps. But to me it looks suspicious to
set a clock to 400MHz
which in the end only is suppose to run at 216 MHz. I fear that there are small
differences in the individual iMX538 and in some of them the pll might
not always be able
to get a lock at the high frequency. The problem seem to have some
relationship with the temperature of the chip. (Higher temperature also seem
to solve the problem).
>
> BTW the current code is the same as on U-Boot which is derived from the
> original Freescale code, so this is not exactly new or barebox specific.
Yes, I did see that the code has been in barebox since 2011. I am also
puzzled why we see this, and nobody else has seen/reported it. We
are using the i.MX538 which is in a pop package with the DDR mounted
on the top of the i.MX. This chip might not be widely used.
>
> Do you have anything special in your dcd table that influences the
> clocks in an unexpected way?
Not as far as I know. Could you give me a hint of what I should look for?

Best regards,
Mogens

>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
