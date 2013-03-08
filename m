Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDwI8-0002Eq-7e
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:20:57 +0000
Received: by mail-wi0-f180.google.com with SMTP id hi8so839115wib.13
 for <barebox@lists.infradead.org>; Fri, 08 Mar 2013 04:20:49 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130308063918.GB18166@pengutronix.de>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <20130303145810.GB10708@pengutronix.de>
 <20130305170929.GD16050@kryptos>
 <20130306172850.GA30452@pengutronix.de>
 <20130307224625.GH16050@kryptos>
 <20130308063918.GB18166@pengutronix.de>
Date: Fri, 8 Mar 2013 13:20:47 +0100
Message-ID: <CAHTX3dKmscVQUOssCrQnoUSBtD5EtJ7oSttd-1qTyLYU+1+=CQ@mail.gmail.com>
From: Michal Simek <monstr@monstr.eu>
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
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

2013/3/8 Steffen Trumtrar <s.trumtrar@pengutronix.de>:
> On Thu, Mar 07, 2013 at 04:46:25PM -0600, Josh Cartwright wrote:
>> On Wed, Mar 06, 2013 at 06:28:50PM +0100, Steffen Trumtrar wrote:
>> > On Tue, Mar 05, 2013 at 11:09:29AM -0600, Josh Cartwright wrote:
>> [..]
>> > > > I have some patches laying around, that have support for booting first stage
>> > > > from a SD-Card on a ZedBoard. I didn't send them as of yet, because I'm not
>> > > > completely satisfied with them in one or two places. (The clocksource seems to
>> > > > be inverse to what barebox expects, which would be a quick fix, and barebox boots
>> > > > uuultra slow, if I do everything according to the TRM)
>> > > > At the moment, I do not have access to the board though. But I hope I can get a
>> > > > hand on it in the next days.
>> > >
>> > > If you have a chance to send out what you have, I'd be curious to see
>> > > it.  Fortunately I have several Zynq boards to play with.
>> > >
>> >
>> > Hi!
>> >
>> > Have a look at
>> > http://git.pengutronix.de/?p=str/barebox.git;a=summary
>> >
>> > I "stole" your clk driver and added it to my patch stack :-)
>> > Current state for ZedBoard:
>> >     - boot first stage from SD-Card
>> >             - barebox.bin needs to be processed with
>> >             ./scripts/zynq_checksum barebox.bin BOOT.bin
>> >             to have the checksum in the BootROM header
>> >     - clocksource is arm_smp_tmd at seems accurate
>> >     - the BootROM needs about 4-5 seconds to copy barebox from
>> >       SD to the OCM. I guess, I need to mess with the SD setup
>> >       in the BootROM somehow
>> >     - just enough clkdev to use the timer
>> >     - all pinctrl, clk setup etc happens in the lowlevel init

Nice. What's the difference between this barebox and u-boot?
I remember that discussion on u-boot mailing list.
Is it just that Kconfig stuff and driver initialization?

What about DT support? Initialized u-boot from device tree?
Is it there?


>> Thanks for sharing this! I'll be looking to get board support for the
>> zc702 on top of your work this weekend (I have several Zynq boards, but
>> none of them are ZedBoards).  I'm also in the process of porting the
>> uboot zynq_gem driver.
>
> First, \o/. I don't know how the two differ. But I would guess, that
> you can pretty much copy the lowlevel stuff et al.
> Only the DDR timing stuff may make problems.

Difference is only in connection out of chip. How barebox handle this?
Serial IP selections, ddr size, mmc, etc.


> Second: No! Don't! I'm trying to get drivers/net/macb.c running on Zynq.
> As far as I can tell at the moment, this is a driver for a
> Cadence IP gem. And the zynq uses exactly that IP core.
> Alas, I have problems with the dma_alloc_coherent call in its
> probe function.

Nice. I will look forward on input from this. We need to use this IP
in linux kernel too.

>
> The same goes for the UART driver and other cores. We should not start
> developing Xilinx drivers for everything, if in reality we have IP cores
> from other providers.

definitely.

> The same goes for Linux. I haven't managed to boot mainline linux yet,
> but I saw that there are multiple bindings and drivers for Xilinx.
> And the TRM clearly states, that WDT, GEM, SPI, UART and TTC are all
> Cadence IP cores.

yep, pl330, cadence gem, spi not sure, wdt also not sure, xilinx uart
is in the mainline
and none reports that there is cadence serial driver too.
TTC is also news for me.
If you can point me to them, that will be great.


>> Do you have plans for submitting this to the list?
>
> Yes, definitely! I need to cleanup the patches a little and want to
> be sure that I didn't do anything stupidly wrong. The problem with
> dma_alloc is at least a hint, that I maybe did.

Nice discussion. Would like to look at it with you but

Hopefully next next week I will have more time to look at your patches
and try it.

Thanks,
Michal

-- 
Michal Simek, Ing. (M.Eng)
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Microblaze cpu - http://www.monstr.eu/fdt/
Maintainer of Linux kernel - Xilinx Zynq ARM architecture
Microblaze U-BOOT custodian and responsible for u-boot arm zynq platform

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
