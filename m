Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eAa8d-0000EY-T9
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 11:27:54 +0000
Date: Fri, 3 Nov 2017 12:27:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171103112728.rdnqqnq452zxy3af@pengutronix.de>
References: <1509087948-15969-1-git-send-email-plagnioj@jcrosoft.com>
 <1509087948-15969-2-git-send-email-plagnioj@jcrosoft.com>
 <20171102110303.xl4hdyjw2lzlrwye@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171102110303.xl4hdyjw2lzlrwye@pengutronix.de>
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
Subject: Re: [PATCH 2/2] efi-block: detect when the block device is a USB Disk
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 02, 2017 at 12:03:03PM +0100, Michael Olbrich wrote:
> On Fri, Oct 27, 2017 at 09:05:48AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > use usbdisk as a basename
> > 
> > This will be usefull as example when we want to search for a usb disk for
> > failsafe update or install.
> 
> I understand the use-case, but this breaks a different setup: Until now
> 'disk0' is usually the 'boot' device (the one barebox was loaded from). So
> it was rather simple to create one image with bootloader, kernel and rootfs
> that can be booted from USB and SATA.

I just talked to Michael and we agreed that depending on 'disk0' being
the device we have booted from is a bad idea. What we really want is
a pointer to the device we have booted from.
In fact that is on my mental todo list for a long time: Several boards
try to continue booting from the medium the bootloader came from. They
often do this by putting a switch/case around bootsource_get() in C or
around $bootsource in shell and trying to pick the right device for each
bootsource. We should rather directly return the device from which we booted
from.

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
