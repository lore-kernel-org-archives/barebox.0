Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Bn6-0007PL-5I
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 09:20:58 +0000
Message-ID: <1346836851.3388.6.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 05 Sep 2012 11:20:51 +0200
In-Reply-To: <20120904085858.GT26594@pengutronix.de>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
 <1346672765-16162-11-git-send-email-jlu@pengutronix.de>
 <20120904085858.GT26594@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/10] drivers/spi: add driver for the Multichannel SPI
 controller found in TI SoCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox-request <barebox@lists.infradead.org>

Hi,

On Tue, 2012-09-04 at 10:58 +0200, Sascha Hauer wrote:
> > +     for (i = 0; i < len; i++) {
> > +             /* wait till TX register is empty (TXS == 1) */
> > +             while
> (!(readl(&regs->channel[spi->chip_select].chstat) &
> > +                      OMAP3_MCSPI_CHSTAT_TXS)) {
> > +                     if (--timeout <= 0) {
> > +                             printf("SPI TXS timed out, status=0x%
> 08x\n",
> > +
> readl(&regs->channel[spi->chip_select].chstat));
> > +                             return -1;
> > +                     }
> > +             }
> 
> Please use a well defined timeout rather than 'poll a million times' 

I tried using is_timeout like this:
                timer_start = get_time_ns();
                while (!(readl(&regs->channel[spi->chip_select].chstat) &
                         OMAP3_MCSPI_CHSTAT_TXS)) {
                        if (is_timeout(timer_start, SPI_WAIT_TIMEOUT)) {
                                printf("SPI TXS timed out, status=0x%08x\n",
                                       readl(&regs->channel[spi->chip_select].chstat));
                                return -1;
                        }
                }

With SPI_WAIT_TIMEOUT = MSECOND this results in ~23% more time needed
for reading/writing:

With a simple counter:
barebox@KSP-0500:/ time cp /dev/m25p0.norkernel /dev/null
time: 12639ms
barebox@KSP-0500:/ time cp /dev/m25p0.norkernel /dev/null
time: 12639ms
barebox@KSP-0500:/ time cp /dev/m25p0.norkernel /dev/null
time: 12659ms

With is_timeout():
barebox@KSP-0500:/ time cp /dev/m25p0.norkernel /dev/null
time: 15561ms
barebox@KSP-0500:/ time cp /dev/m25p0.norkernel /dev/null
time: 15564ms
barebox@KSP-0500:/ time cp /dev/m25p0.norkernel /dev/null
time: 15568ms

Is this really acceptable? Is there a way to avoid the overhead of
calling several functions for each loop?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
