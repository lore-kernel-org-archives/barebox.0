Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIcVA-0003RP-GR
	for barebox@lists.infradead.org; Tue, 25 Oct 2011 08:36:53 +0000
Date: Tue, 25 Oct 2011 10:36:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111025083647.GS23421@pengutronix.de>
References: <20111024211137.GB19298@hoothoot>
	<20111024213413.GR23421@pengutronix.de>
	<20111025063850.GA19390@hoothoot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111025063850.GA19390@hoothoot>
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
To: Johannes Schauer <j.schauer@email.de>
Cc: gta04-owner@goldelico.com, barebox@lists.infradead.org

On Tue, Oct 25, 2011 at 08:38:50AM +0200, Johannes Schauer wrote:
> Hi Sascha,
> 
> On Mon, Oct 24, 2011 at 11:34:13PM +0200, Sascha Hauer wrote:
> > You could start barebox from U-Boot (just load the barebox binary
> > image to RAM and jump to it using the U-Boot 'go' command). Then you
> > could comment out the lowlevel code from barebox (arch_init_lowlevel,
> > pin_mux) and see if the problem persists. Maybe there is something
> > different in the lowlevel code.
> 
> This is a great idea! So first I loaded the unmodified barebox binary
> using:
> 
> mmc rescan 0
> fatload mmc 0 0x82000000 barebox.bin
> go 0x82000000
> 
> It started executing and the error was the same as before.
> 
> Then I tried doing what you suggested above and commented
> arch_init_lowlevel in ./arch/arm/mach-omap/omap3_core.S and I was not
> sure what you meant by `pin_mux` as the string appeared nowhere in the
> code but I thought you might mean the mux_config in
> ./arch/arm/boards/omap/board-beagle.c ?

Yes, that's what I meant

> But after doing that, barebox
> would just not start anymore when loaded by uboot.

Strange. Should not be the case, no idea what's happening here.

> 
> So can you give me some more specific advices on what to comment?
> 
> > Another thing: Where does this string come from? We have this twice in
> > the driver and one of them should really be "timeout waiting for reset
> > done"
> 
> If I read the code correctly, then my error comes from line
> 224 of ./drivers/mci/omap_hsmmc.c :
> 
> dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");

Look again, we accidently have the same string twice in the driver:

./drivers/mci/omap_hsmmc.c:201:                 dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");
./drivers/mci/omap_hsmmc.c:224:                 dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");

The one in line 224 should really be "timeout waiting for reset done".

So what I wanted to know is whether it's the error message in line 201
or 224 that we see. So please change one of them

> 
> I activated this debug message by using "#define DEBUG" on top of the
> file. Initially I only got the message "Cannot reset the SD/MMC
> interface" from line 1185 in ./drivers/mci/mci-core.c after it tried to
> call the init code from omap_hsmmc.c.
> 
> But where would you find "timeout waiting for reset done"? I tried to
> recursively grep my barebox sources without finding this string?
> 
> thanks!
> 
> cheers, josch
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
