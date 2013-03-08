Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UE31G-0007iH-9t
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 19:31:55 +0000
Date: Fri, 8 Mar 2013 20:31:49 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130308193149.GF18166@pengutronix.de>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <20130303145810.GB10708@pengutronix.de>
 <20130305170929.GD16050@kryptos>
 <20130306172850.GA30452@pengutronix.de>
 <20130307224625.GH16050@kryptos>
 <20130308063918.GB18166@pengutronix.de>
 <CAHTX3dKmscVQUOssCrQnoUSBtD5EtJ7oSttd-1qTyLYU+1+=CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHTX3dKmscVQUOssCrQnoUSBtD5EtJ7oSttd-1qTyLYU+1+=CQ@mail.gmail.com>
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
Subject: Re: [PATCH 0/5] Zynq support for barebox
To: Michal Simek <monstr@monstr.eu>
Cc: barebox@lists.infradead.org

Hi,

On Fri, Mar 08, 2013 at 01:20:47PM +0100, Michal Simek wrote:
> Hi,
> 
> 2013/3/8 Steffen Trumtrar <s.trumtrar@pengutronix.de>:
> > On Thu, Mar 07, 2013 at 04:46:25PM -0600, Josh Cartwright wrote:
> >> On Wed, Mar 06, 2013 at 06:28:50PM +0100, Steffen Trumtrar wrote:
> >> > On Tue, Mar 05, 2013 at 11:09:29AM -0600, Josh Cartwright wrote:
> >> [..]
> >> > > > I have some patches laying around, that have support for booting first stage
> >> > > > from a SD-Card on a ZedBoard. I didn't send them as of yet, because I'm not
> >> > > > completely satisfied with them in one or two places. (The clocksource seems to
> >> > > > be inverse to what barebox expects, which would be a quick fix, and barebox boots
> >> > > > uuultra slow, if I do everything according to the TRM)
> >> > > > At the moment, I do not have access to the board though. But I hope I can get a
> >> > > > hand on it in the next days.
> >> > >
> >> > > If you have a chance to send out what you have, I'd be curious to see
> >> > > it.  Fortunately I have several Zynq boards to play with.
> >> > >
> >> >
> >> > Hi!
> >> >
> >> > Have a look at
> >> > http://git.pengutronix.de/?p=str/barebox.git;a=summary
> >> >
> >> > I "stole" your clk driver and added it to my patch stack :-)
> >> > Current state for ZedBoard:
> >> >     - boot first stage from SD-Card
> >> >             - barebox.bin needs to be processed with
> >> >             ./scripts/zynq_checksum barebox.bin BOOT.bin
> >> >             to have the checksum in the BootROM header
> >> >     - clocksource is arm_smp_tmd at seems accurate
> >> >     - the BootROM needs about 4-5 seconds to copy barebox from
> >> >       SD to the OCM. I guess, I need to mess with the SD setup
> >> >       in the BootROM somehow
> >> >     - just enough clkdev to use the timer
> >> >     - all pinctrl, clk setup etc happens in the lowlevel init
> 
> Nice. What's the difference between this barebox and u-boot?
> I remember that discussion on u-boot mailing list.
> Is it just that Kconfig stuff and driver initialization?
> 
> What about DT support? Initialized u-boot from device tree?
> Is it there?
> 

Well, I don't actually know, what u-boot can do, as I do not follow it.
barebox uses Kconfig, the linux driver model, a lot less #ifdefs, has
support for a compressed bootloader, that extracts itself, the environment
system is IHMO way better than in u-boot, a menu, where you can select the
bootsource etc, you can boot images via tftp with "bootm /mnt/tftp/zImage",
you can boot zImage, uImage, ... with appended DT, with separate DT,
there is support for DT probing of devices.
What I like the most: if you know linux kernel and its structure, you know
barebox and its structure (well, mostly).

> 
> >> Thanks for sharing this! I'll be looking to get board support for the
> >> zc702 on top of your work this weekend (I have several Zynq boards, but
> >> none of them are ZedBoards).  I'm also in the process of porting the
> >> uboot zynq_gem driver.
> >
> > First, \o/. I don't know how the two differ. But I would guess, that
> > you can pretty much copy the lowlevel stuff et al.
> > Only the DDR timing stuff may make problems.
> 
> Difference is only in connection out of chip. How barebox handle this?

barebox has /arch/arm/boards/avnet-zedboard/board.c, here you can define
the boardspecific pincontrol etc. Well, like the platformcode in the kernel.
For the zynq there is no pinctrl driver though, as I have to write it first :-)

Clocks are handled like in linux. With clockdev and clocktree.

ATM this is all hardcoded in the lowlevel init.

> Serial IP selections, ddr size, mmc, etc.
> 
> 
> > Second: No! Don't! I'm trying to get drivers/net/macb.c running on Zynq.
> > As far as I can tell at the moment, this is a driver for a
> > Cadence IP gem. And the zynq uses exactly that IP core.
> > Alas, I have problems with the dma_alloc_coherent call in its
> > probe function.
> 
> Nice. I will look forward on input from this. We need to use this IP
> in linux kernel too.
> 
> >
> > The same goes for the UART driver and other cores. We should not start
> > developing Xilinx drivers for everything, if in reality we have IP cores
> > from other providers.
> 
> definitely.
> 
> > The same goes for Linux. I haven't managed to boot mainline linux yet,
> > but I saw that there are multiple bindings and drivers for Xilinx.
> > And the TRM clearly states, that WDT, GEM, SPI, UART and TTC are all
> > Cadence IP cores.
> 
> yep, pl330, cadence gem, spi not sure, wdt also not sure, xilinx uart
> is in the mainline
> and none reports that there is cadence serial driver too.
> TTC is also news for me.
> If you can point me to them, that will be great.
> 
Well, I don't know if there are drivers for all those IPs, but if there
aren't any, they should be called cadence-something with the according
bindings. Oh, and Arasan-something for the SD-Controller.

Well, maybe those IPs are even not really developed by Cadence and compatible
to other drivers, who knows.
For the Synopsys USB controller you might want to take a look at the ChipIdea
driver (ci13xxx-something). It is the same core ;-)

> 
> >> Do you have plans for submitting this to the list?
> >
> > Yes, definitely! I need to cleanup the patches a little and want to
> > be sure that I didn't do anything stupidly wrong. The problem with
> > dma_alloc is at least a hint, that I maybe did.
> 
> Nice discussion. Would like to look at it with you but
> 
> Hopefully next next week I will have more time to look at your patches
> and try it.
> 

Regards and nice weekend,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
