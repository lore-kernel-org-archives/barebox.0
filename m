Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9fQI-0005Xj-He
 for barebox@lists.infradead.org; Sat, 01 Feb 2014 18:36:11 +0000
Date: Sat, 1 Feb 2014 19:35:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140201183543.GC16215@pengutronix.de>
References: <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
 <20140110081302.GV6750@pengutronix.de>
 <CAJyuEefMzkW4mCfe+iR7FfVv6jeQMS3XuoPFtO3E8zNomecKoA@mail.gmail.com>
 <20140116141322.GX16215@pengutronix.de>
 <CAJyuEecWCmz=gxzMrbGB+=MWqAC9WGooCgTQs-E47rdaQPUOSA@mail.gmail.com>
 <20140120080007.GG16215@pengutronix.de>
 <CAJyuEed85u0AjntkoP9mEZ9BTgTKdWrm85ECE1MCOAAVERSGgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEed85u0AjntkoP9mEZ9BTgTKdWrm85ECE1MCOAAVERSGgA@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 29, 2014 at 04:10:14PM -0500, Michael Burkey wrote:
> Sascha,
> 
> Things are working fairly well at this point.
> 
> I can boot barebox on the Variscite SOM.
> I can boot Linux from barebox out of either NAND or off the SD card.
> I can update the kernel and/or rootfs to NAND or SD from barebox.
> I can mount and access both the SD card and USB mass storage devices.
> 
> So, basically, it's usable at this point.
> 
> Which brings me to my next couple of issues...
> 
> The first involves mounting USB mass storage devices. When I do a
> probe of the USB bus, it works fine as long as I have at least one low
> speed USB device connected (mouse, keyboard, etc). If I do not have a
> low speed USB device connected, it never probes anything beyond the
> initial hub and my flash drive never gets detected.
> 
> The Variscite dev board has three USB ports, but all of which are
> connected to a USB hub IC on the board, so none of them are tied
> directly to the iMX6 itself (all go through the hub).
> 
> The output is as follows (with a flash drive connected, but nothing else):
> 
> USB: scanning bus for devices...
> Bus 001 Device 002: ID 0424:2514
> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> 2 USB Device(s) found
> 
> and with a mouse and a flash drive connected:
> 
> USB: scanning bus for devices...
> Using index 0 for the new disk
> Bus 001 Device 004: ID 125f:c08a ADATA USB Flash Drive
> Bus 001 Device 002: ID 0424:2514
> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> 4 USB Device(s) found
> 
> Any ideas on where to look in the code for this?
> Have you seen this behavior before?

So your flash drive only gets detected when another device is also
connected? I've never seen that before. Normally once you can detect
the first hub behind your root hub everything should be fine. I have no
idea what such a behaviour could cause. I would enable debug messages in
the ehci/usb code, but ok, you probably did that already.

> I don't think it is a DTS file problem (unless I'm missing something).
> 
> 
> The second item, which is MUCH lower priority, would be getting the
> onboard PHY working to make transferring files to/from the board a bit
> easier in barebox.
> 
> The issues I'm running into:
> 1) the board uses a Micrel KSZ9031 Phy, which doesn't appear to be
> supported. However, it is very close to the KSZ9021 and I *think* I
> have changed the micrel_phy.c file to where it probably would work.
> 
> 2) The other issue is that the reset procedure used in Variscite's BSP
> version of u-Boot for this phy is a bit, well, odd. I'm not sure if it
> is specifically necessary or not. Basically, they initially assign all
> of the ports over to GPIO6 so that they can force all the phy lines to
> high during the reset. Then, once the reset is finished, they change
> the iomux settings back to the correct ones for ethernet operation. I
> suspect this would probably require adding code directly to board.c
> and removing the fec entries from the DTS file.

Some boards do this to configure the phy address which is specified by
bootstrap pins during phy reset. There's currently no code to describe
this behaviour in the devicetree, neither in barebox now in the kernel.
One way to accomplish this would be to add code to board.c which
configures the pins as gpios and sets the output values correctly. This
should be done in an earlier initcall than the fec driver has. Then
afterwards the fec driver could probe as usual from the devicetree. Make
sure to remove the phy-reset-gpio from devicetree as this would cause
another phy reset in the fec driver in which case your settings would be
lost again.

> 
> 3) Similarly with item #2, the power supply for the phy appears to be
> routed through the PF0100, but is NOT enabled with the chips default
> values. Immediately after startup, they hand configure the voltage
> rail to the phy via I2C commands directly to the PF0100. I have
> already added this code to the board.c file for barebox and it appears
> to work properly. Unfortunately, the devicetree probe of the fec
> controller happens BEFORE this is done, which means that the phy isn't
> powered during the probe operation. Additionally, trying to move it
> over to lowlevel.c for early startup (like the UART) isn't a simple
> option since the I2C drivers need to be started so I can access the
> PF0100.

I have nothing against moving the i2c driver to coredevice_initcall
which gives you fs_initcall to setup the power before the fec finally
gets probed in device_initcall.

All these initcall dependencies are not nice and the time will come when
we have to do something about it. That we have to add regulator support
gets more and more obvious...

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
