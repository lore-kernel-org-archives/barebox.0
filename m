Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNX59-00029d-8n
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 06:58:53 +0000
Date: Thu, 24 Oct 2019 08:58:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191024065849.wwewim36f3mojkoj@pengutronix.de>
References: <CAEp+FuA76KBuHaZHbDAGrpxtmsw6YSjWp+mVTfJQn98+RuUhxA@mail.gmail.com>
 <20191023133357.wlqjrz4wr4uvmn73@pengutronix.de>
 <CAEp+FuA2erbWOkD3892UbWUjvk3w6s3X4r9LUgzFx_PS+oYG-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEp+FuA2erbWOkD3892UbWUjvk3w6s3X4r9LUgzFx_PS+oYG-g@mail.gmail.com>
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
Subject: Re: flash barebox to NAND
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 23, 2019 at 03:47:49PM +0200, Mihaita Ivascu wrote:
> On Wed, Oct 23, 2019 at 3:33 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Wed, Oct 23, 2019 at 11:39:00AM +0200, Mihaita Ivascu wrote:
> > > Hello all,
> > >
> > >   I would like to know what possibilities do I have to flash a barebox
> > > image to mtd partition from Linux?
> > >  Using ubifs commands does not work. the barebox will not boot so
> > > probably additional info needs to be written except the barebox image
> > > itself.
> >
> > On i.MX a bootloader image can't be written to Nand directly. In barebox
> > you can update barebox with the barebox_update command which has support
> > for the special image format requirements of the i.MX6. I currently
> > don't know any userspace code that can do this, apart from mfgtools or
> > other tools from the NXP universe that I have never used. Somebody told
> > me he wanted to port the i.MX6 barebox update code to userspace, but
> > unfortunately I can't remember who it was and I can't find any pointers
> > to it.
> >
> > Regards,
> >   Sascha
> >
> 
>    Thanks for your detailed answer.
>    so there is no way to update a barebox on NAND from Linux except
> from the barebox itself(using barebox_update command) ?
>    Yes I am trying with mfgtools but no success. NXP does not support
> barebox just u-boot and I was not successful on adding mfgtools/UTP
> support in barebox.
>    And using the u-boot konbs-ng command for flashing bootloader to
> NAND is faulty and the reason is documented in the NXP community.
>   Surely somebody from barebox community must have had the need before
> to update the barebox otherway than using barebox_update from the
> barebox itself.

One way to update barebox indirectly from Linux is to put the new
barebox image to some known place in the rootfs. Now in barebox
write a small script:

/env/init/bbu.sh:

#!/bin/sh

if [ -f /mnt/mmc0.0/boot/barebox-update.bin ]; then
	barebox_update -y /mnt/mmc0.0/boot/barebox-update.bin
	reset
fi

Then again under Linux delete that file when the running barebox version
(as read from the device tree or kernel commandline) matches the update
image.

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
