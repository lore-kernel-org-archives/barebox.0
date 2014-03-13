Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOCGO-0006lF-A3
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 20:30:01 +0000
Date: Thu, 13 Mar 2014 21:27:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140313202719.GS17250@pengutronix.de>
References: <53211233.5070806@kosagi.com>
 <20140313073817.GR17250@pengutronix.de>
 <53218604.6080702@kosagi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53218604.6080702@kosagi.com>
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
Subject: Re: Porting barebox to Novena: misc questions
To: Sean Cross <xobs@kosagi.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 13, 2014 at 06:18:44PM +0800, Sean Cross wrote:
> On 13/3/14 3:38 PM, Sascha Hauer wrote:
> > Hi Sean,
> > 
> > On Thu, Mar 13, 2014 at 10:04:35AM +0800, Sean Cross wrote:
> >> Hi,
> >>
> >> I've finally managed to get U-Boot's SPL to configure DDR3 and load
> >> barebox off of a FAT partition on an i.MX6DL.  I also have a barebox
> >> build with most features turned on, and I'm running into a number of
> >> problems.  barebox is able to load a zImage off of the FAT partition,
> >> set up ATAGs, and jump to it.  So I have the basics done.  But there are
> >> lots of little things that aren't working.
> >>
> >> When I boot without an Ethernet cable plugged in, the "timeout" command
> >> takes a very long time to complete.  It generally freezes at "Hit any
> >> key to stop autoboot:  3" and tends to ignore input for around ten
> >> seconds.  How can I prevent this from happening, short of compiling out
> >> FEC support?
> > 
> > Are you trying to start from network without a cable plugged in? When I
> > start from network without a cable I get:
> > 
> > running /env/bin/init...
> > 
> > Hit m for menu or any other key to stop autoboot:  1
> > blspec: blspec_scan_directory: net loader/entries
> > booting net
> > dhcp failed: Network is down
> > dhcp: Network is down
> > 
> > It indeed takes some seconds until we are sure that the link is down.
> > That timeout could be reduced, but we must give the phy some time to
> > bring up the link.
> > 
> > Or does this happen when you are not trying to boot from network at all?
> > That shouldn't happen. If it does, maybe some automount command triggers
> > network accesses.
> 
> This was caused by the default environment I imported.  It set
> "ip=dhcp", which I guess caused it to try and obtain an address.  I've
> set it to "ip=none" for now, and the problem has gone away.
> 
> >> The "usb" command just hangs the system.  It should at least detect the
> >> other ASIX Ethernet port.  I have &usbh1 configured identically to
> >> sabrelite.  Is there something else I need to configure?
> > 
> > This usually means the phys are not configured correctly. Are you
> > probing from devicetree?
> 
> I am probing from devicetree.  I don't see phys mentioned anywhere
> except in the imx6qdl.dtsi file, which means that in theory there
> shouldn't be anything for me to modify.

I can try to reproduce this tomorrow on a sabrelite board.

> Board: Kosagi i.MX6DL Novena Board
> detected i.MX6 DualLite revision 1.1
> ERROR: out of memory
> 
> [<5062e9ed>] (unwind_backtrace+0x1/0x74) from [<5061c525>] (panic+0x1d/0x34)
> [<5061c525>] (panic+0x1d/0x34) from [<5061cc27>] (xmemalign+0xf/0x14)
> [<5061cc27>] (xmemalign+0xf/0x14) from [<5062f687>] (mmu_init+0x16b/0x1f8)
> [<5062f687>] (mmu_init+0x16b/0x1f8) from [<50600797>]
> (start_barebox+0x1b/0xd0)
> [<50600797>] (start_barebox+0x1b/0xd0) from [<5062efcd>] (__start+0x91/0xa4)
> [<5062efcd>] (__start+0x91/0xa4) from [<50600005>]
> (__bare_init_start+0x1/0xc)
> ### ERROR ### Please RESET the board ###
> 
> If I also enable early MMU, it hangs much much earlier.  When I dug into
> it, it looked like it was trying to place a TTB just outside of the
> allocated memory region, for some reason.
> 
> This is with me passing SZ_1G to barebox_arm_entry().  If I pass
> something small like SZ_64M, it hangs completely.  If I instead pass it
> SZ_128M, it works just fine, but of course the MMU still doesn't work.

I suspect you have some memory setting that doesn't work in your
.config. Could you post it? Particularly the addresses in your backtrace
are outside the reachable memory (0x10000000 + 1GiB = 0x50000000). This
should not happen. Do you have CONFIG_RELOCATABLE enabled? If not, make
sure CONFIG_ARCH_TEXT_BASE is inside the memory you pass to
barebox_arm_entry(). Otherwise the autodetection for usable malloc area
space might produce wrong results.

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
