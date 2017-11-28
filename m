Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJbV3-0002qg-P1
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 08:44:19 +0000
Date: Tue, 28 Nov 2017 09:43:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128084351.wcdzcp7m43iijsun@pengutronix.de>
References: <311f4693-85fc-e2bc-6e07-7714cd89c522@ebee.berlin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <311f4693-85fc-e2bc-6e07-7714cd89c522@ebee.berlin>
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
Subject: Re: ASIX USB dongle problem: asix_rx_fixup() Bad Header Length
To: Holger Birkmeyer <holger.birkmeyer@ebee.berlin>
Cc: barebox@lists.infradead.org

HI Holger,

+Cc Lucas who has also some patches in the Asix driver.

On Mon, Nov 27, 2017 at 06:01:15PM +0100, Holger Birkmeyer wrote:
> Dear all,
> 
> I am struggling to get networking up and running on my Atmel at91sam9260-ek.
> 
> I am trying to use an ASIX USB dongle. I got pretty far. Here is the
> console log:
> 
> ...snip...
> 
> barebox 2017.11.0-gdf1d493-dirty #50 Mon Nov 27 17:20:57 CET 2017
> 
> ...snip...
> 
> Board: Atmel at91sam9260-ek
> AT91: Detected soc type: at91sam9260
> AT91: Detected soc subtype: Unknown
> 
> ...snip...
> 
> usb: USB: scanning bus for devices...
> usb: Bus 001 Device 001: ID 0000:0000 OHCI Root Hub
> usb: Bus 001 Device 002: ID 0b95:7720 AX88772A
> mdio_bus: miibus1: probed
> eth1: got preset MAC address: 8c:ae:4c:eb:1f:83
> usb: 2 USB Device(s) found
> 
> But as soon as I start using the device eth1, the following error
> messages appear in the serial console and the dongle LEDs will turn dark.
> 
> ping 8.8.8.8
> eth1: 100Mbps full duplex link detected
> eth1: asix_rx_fixup() Bad Header Length 0xffffffc3, offset 4
> eth1: asix_rx_fixup() Bad Header Length 0xd526003c, offset 514
> eth1: asix_rx_fixup() Bad Header Length 0x97001127, offset 4
> eth1: asix_rx_fixup() Bad Header Length 0xffffffc3, offset 4
> T ERROR: OHCI Unrecoverable Error, controller usb-ohci disabled
> ERROR: sohci_submit_job failed with -32

I have a AX88772A running here and it works fine on an i.MX53 board.
There are some things you could try. Do you have some other hardware
you can test? Like another board or another USB dongle? I do not really
trust the OHCI driver.
The Asix code is directly derived from the kernel. the asix_rx_fixup()
looks quite different there now, so it could be that the barebox code
has a bug in this area.
If that doesn't help, could you add a

memory_display(buf, 0, len, 4, 0)

to the top of asix_rx_fixup_internal() and post the result?

Also maybe Lucas has an idea.

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
