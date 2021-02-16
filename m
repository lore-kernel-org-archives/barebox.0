Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBwjo-0001vY-Rp
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 09:33:47 +0000
Date: Tue, 16 Feb 2021 10:33:43 +0100
Message-ID: <20210216093343.GX19583@pengutronix.de>
References: <20210118190923.531-1-m.grzeschik@pengutronix.de>
 <fb80f1ad-acac-0f45-5f87-1b725252906f@pengutronix.de>
 <20210216082001.GB16279@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216082001.GB16279@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] usb: hub: fix state change check for not powercycled ports
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Feb 16, 2021 at 09:20:01AM +0100, Michael Grzeschik wrote:
> Hi!
> 
> On Thu, Feb 11, 2021 at 01:03:54PM +0100, Ahmad Fatoum wrote:
> > Hello,
> > 
> > On 18.01.21 20:09, Michael Grzeschik wrote:
> > > Since we don't power cycle the ports on start since patch "19bb0b2a usb:
> > > hub: Do not power-cycle usb devices on init" it is possible that the
> > > device on this port is already active from a previous enumeration. This
> > > way barebox will never get any change in USB_PORT_STAT_C_CONNECTION bit
> > > change.
> > > 
> > > Although the device will probably still work fine after the following
> > > port reset, the current code will always miss reenumerating these still
> > > plugged devices. This patch fixes this by ignoring the check for
> > > STAT_C_CONNECTION bit and only go for USB_PORT_STAT_CONNECTION which
> > > should be enough.
> > 
> > This breaks USB enumeration for me on an i.MX6Q. The USB flash driver behind
> > the hub is detected twice, which barebox doesn't like at all:
> > 
> > barebox@Embest MarS Board i.MX6Dual:/ usb -s
> > usb: USB: scanning bus for devices...
> > usb1: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > usb1-0: Bus 001 Device 002: ID 1a40:0101 USB 2.0 Hub [MTT]
> > usb1-0-1: Bus 001 Device 003: ID 058f:6387 Mass Storage
> > Using index 0 for the new disk
> > usb1-0-1: Bus 001 Device 004: ID 058f:6387 Mass Storage
> > ERROR: register_device: already registered usb1-0-1
> > ERROR: usb1-0-1: Failed to register device: Invalid argument
> > usb: 3 USB Device(s) found
> > Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > Bus 001 Device 002: ID 1a40:0101 USB 2.0 Hub [MTT]
> > Bus 001 Device 003: ID 058f:6387 Mass Storage
> > 
> > This seems to corrupt some internal barebox state as reading
> > /dev/disk0.0 will hang. Reading /dev/disk0 is fine however.
> > 
> > With this patch reverted it however works:
> > 
> > usb: USB: scanning bus for devices...
> > usb1: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > usb1-0: Bus 001 Device 002: ID 1a40:0101 USB 2.0 Hub [MTT]
> > usb1-0-1: Bus 001 Device 003: ID 058f:6387 Mass Storage
> > Using index 0 for the new disk
> > usb: 3 USB Device(s) found
> > Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > Bus 001 Device 002: ID 1a40:0101 USB 2.0 Hub [MTT]
> > Bus 001 Device 003: ID 058f:6387 Mass Storage
> > 
> > The USB drive is not self-powered. It doesn't make a difference
> > whether it's done directly after cold reset or:
> >  usb -s
> >  boot bnet
> >  usb -s
> > 
> > Cheers,
> > Ahmad
> 
> I have reproduced that. My latest findings are that, when I debugged
> this, usb core on my board I was debugging was behaving uncommon. It was
> not setting the USB_PORT_STAT_C_CONNECTION in the first place. But the
> further patches I send did solve this.
> 
> So this whole issue was due to an uncorrect configured over-current
> polarity setup. With my other patches applied I see this bit
> USB_PORT_STAT_C_CONNECTION set even without the power-cycle.
> 
> My suggestion is to _revert_ this patch, as it is solving a
> bogus problem not related to the whole usb-core state machine.

Ok, dropped this patch.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
