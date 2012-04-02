Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiGI-0004RF-2Z
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:29:39 +0000
Date: Mon, 2 Apr 2012 16:29:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402142929.GY3852@pengutronix.de>
References: <CAFEF1dF7M15xAgvYLdkVowavpXnvThkzXwtXe0fe4TEEYMFokQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEF1dF7M15xAgvYLdkVowavpXnvThkzXwtXe0fe4TEEYMFokQ@mail.gmail.com>
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
Subject: Re: Boot linux from cramfs on USB
To: Jakob Malm <jakob.malm@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 02, 2012 at 03:58:49PM +0200, Jakob Malm wrote:
> Hi,
> 
> How would I boot a linux system in a cramfs image on USB? I don't seem
> to be able to mount such an image:
> 
> barebox:/ usb
> USB: scanning bus for devices...
> Bus 001 Device 002: ID 0dd8:1728 Flash Drive
> Using index 1 for the new disk
> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> 2 USB Device(s) found
> barebox:/ mkdir /usb
> barebox:/ mount /dev/disk1.0 fat /usb
> barebox:/ mkdir /cramfs
> barebox:/ mount /usb/rootfs.cramfs cramfs /cramfs
> mount: Invalid argument
> 
> Is it not possible to mount a cramfs image file?

cramfs currently has the limitation that it can only mount
files which are memory mappable (that is for example nor flash).
I never fixed this due to the lack of interest for cramfs.

That said, your setup seems a bit crazy. What is inside your cramfs? The
kernel? You should rather put your kernel into a plain partition on the
USB disk. Or do you only have your rootfs inside the cramfs? I rather
recommend ext2 or ext3 for this.

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
