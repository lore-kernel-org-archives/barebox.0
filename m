Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIS9v-0006Qh-3D
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 21:34:15 +0000
Date: Mon, 24 Oct 2011 23:34:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111024213413.GR23421@pengutronix.de>
References: <20111024211137.GB19298@hoothoot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111024211137.GB19298@hoothoot>
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
Subject: Re: barebox on gta04
To: 20111024202514.GA17005@hoothoot
Cc: gta04-owner@goldelico.com, barebox@lists.infradead.org

Hi Johannes,

On Mon, Oct 24, 2011 at 11:11:37PM +0200, Johannes Schauer wrote:
> Hi,
> 
> 
> I was booting barebox from git on my "openmoko" gta04 today but what was
> not working was the mmc initialization.
> 
> It was failing in mmc_init_setup() in ./drivers/mci/omap_hsmmc.c after
> printing "timedout waiting for cc2!" when I had DEBUG enabled.
> 
> -%<-----------------------------------------------------------------
> barebox 2011.10.0-00107-gdac6e90-dirty (Oct 24 2011 - 22:12:10)
> 
> Board: Texas Instrument's Beagle
> omap-hsmmc@omap-hsmmc0: timedout waiting for cc2!
> Cannot reset the SD/MMC interface
> ->%-----------------------------------------------------------------
> 
> The gta04 should be very similar to the beagleboard and hence I was
> building using the omap3530_beagle_defconfig.
> 
> any hints on how to continue debugging this problem are highly
> appreciated!

You could start barebox from U-Boot (just load the barebox binary image
to RAM and jump to it using the U-Boot 'go' command). Then you could
comment out the lowlevel code from barebox (arch_init_lowlevel, pin_mux)
and see if the problem persists. Maybe there is something different in
the lowlevel code.

Another thing: Where does this string come from? We have this twice in
the driver and one of them should really be "timeout waiting for reset
done"

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
