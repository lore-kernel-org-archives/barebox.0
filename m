Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORgQ4-0001Ax-K8
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 07:00:17 +0000
Date: Thu, 24 Jun 2010 09:00:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100624070011.GP12115@pengutronix.de>
References: <AANLkTikXVF6EEgpWHoiVcBpdn17Kld8b7WMN7laRqcMC@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikXVF6EEgpWHoiVcBpdn17Kld8b7WMN7laRqcMC@mail.gmail.com>
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
Subject: Re: USB device not found
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 23, 2010 at 10:39:35AM +0200, Jose Luis Zabalza wrote:
> Hello all.
> 
> I connect a usb device to my board but I can't see the device on /dev.
> Is it usual?
> I should see a /dev/usb0-20 device file?
> 
> jlxx:/ usb
> USB: scanning bus for devices...
> ...
> usb0-2: 1516:8628 FlashDisk
> usb0-1: 0000:0000 EHCI Host Controller
> 2 USB Device(s) found
> 
> jlxx:/ devinfo
> devices:
> |----imx_serial0
> |----cs0
> |----ramfs0
> |----devfs0
> |----mem0 (defaultenv)
> |----mem1 (mem)
> |----cfi_flash0 (nor0, self, env, nor0.uboot, nor0.kernel, nor0.root)
> |----mem2 (ram0)
> |----fec_imx0
> |----miiphy0 (phy0)
> |----eth0
> |----imxfb0
> |----fb0 (fb0)
> |----ehci0
> |----usb0-20
> |----usb0-10

The devinfo command should be worked on. Traditionally each device
automatically had a file under /dev, but this behaviour was not really
nice because several devices do not need a file. I changed this
so that files under /dev have to be explicitely registered. What you
see with the devinfo command are the devices registered in the system
and in brackets the /dev files registered from these devices. so for
example the device 'miiphy0' has registered a file /dev/phy0.

usb0-2 is a device registered for housekeeping only with no files at
all, that's normal.

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
