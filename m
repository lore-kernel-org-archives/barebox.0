Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate03.web.de ([217.72.192.234])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RIRo7-0006Ew-LT
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 21:11:44 +0000
Date: Mon, 24 Oct 2011 23:11:37 +0200
From: Johannes Schauer <j.schauer@email.de>
Message-ID: <20111024211137.GB19298@hoothoot>
MIME-Version: 1.0
Content-Disposition: inline
Reply-To: 20111024202514.GA17005@hoothoot
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
Subject: barebox on gta04
To: barebox@lists.infradead.org
Cc: gta04-owner@goldelico.com

Hi,


I was booting barebox from git on my "openmoko" gta04 today but what was
not working was the mmc initialization.

It was failing in mmc_init_setup() in ./drivers/mci/omap_hsmmc.c after
printing "timedout waiting for cc2!" when I had DEBUG enabled.

-%<-----------------------------------------------------------------
barebox 2011.10.0-00107-gdac6e90-dirty (Oct 24 2011 - 22:12:10)

Board: Texas Instrument's Beagle
omap-hsmmc@omap-hsmmc0: timedout waiting for cc2!
Cannot reset the SD/MMC interface
->%-----------------------------------------------------------------

The gta04 should be very similar to the beagleboard and hence I was
building using the omap3530_beagle_defconfig.

any hints on how to continue debugging this problem are highly
appreciated!

cheers, josch

PS: sorry for my previous mail which was the result of hitting "y"
instead of "e" in my mutt...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
