Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL28E-0000Xq-Cd
 for barebox@lists.infradead.org; Tue, 22 May 2018 07:54:56 +0000
Date: Tue, 22 May 2018 09:54:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180522075441.mke2rbn5karwc23t@pengutronix.de>
References: <1482938984.1946.1.camel@googlemail.com>
 <20170109083855.f2vxmkmtlczdv62t@pengutronix.de>
 <1526573972.12584.7.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1526573972.12584.7.camel@googlemail.com>
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
Subject: Re: [PATCH] USB: host: hub: increase delay after device removal
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Thu, May 17, 2018 at 06:19:32PM +0200, Christoph Fritz wrote:
> Hi Sascha
> 
> On Mon, 2017-01-09 at 09:38 +0100, Sascha Hauer wrote:
> > Hi Christoph,
> > 
> barebox:/ usb
> usb: USB: scanning bus for devices...
> usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> usb-hub usb1: hub_port_reset: resetting port 0...
> usb-hub usb1: portstatus 503, change 10, 480 Mb/s
> usb-hub usb1: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
> usb-hub usb1: hub_port_reset: resetting port 0...
> usb-hub usb1: portstatus 503, change 10, 480 Mb/s
> usb-hub usb1: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
> usb: Bus 001 Device 002: ID 04b4:6560
> usb-hub usb1-0: hub_port_reset: resetting port 2...
> usb-hub usb1-0: portstatus 103, change 10, 12 Mb/s
> usb-hub usb1-0: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
> usb-hub usb1-0: hub_port_reset: resetting port 2...
> usb-hub usb1-0: portstatus 103, change 10, 12 Mb/s
> usb-hub usb1-0: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
> usb: Bus 001 Device 003: ID 10c4:ea60 CP2104 USB to UART Bridge Contr
> usb: 3 USB Device(s) found
> 
> # now disconnect the USB device:
> 
> barebox:/ usb
> usb: USB: scanning bus for devices...
> usb1-0-0-2: removed
> usb: 4 USB Device(s) found
> 
> # 4 USB Devices seems wrong, now connect the USB device again:
> 
> barebox@:/ usb
> usb: USB: scanning bus for devices...
> usb-hub usb1-0-0: hub_port_reset: resetting port 2...
> usb-hub usb1-0-0: portstatus 103, change 10, 12 Mb/s
> usb-hub usb1-0-0: STAT_C_CONNECTION = 0 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 1
> usb: 4 USB Device(s) found
> 
> # still 4 USB Devices found, ...?
> # starting 'usb' again hits a NULL pointer dereference:

Disconnecting USB devices during runtime of barebox is not really
supported. We should probably make that clear somewhere. The code is not
prepared for that case and trying to fix it is likely to be a bottomless
pit.

Can you reproduce a problem without removing a device?

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
