Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rhie6-0000pF-Th
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 14:13:51 +0000
Date: Mon, 2 Jan 2012 15:13:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120102141345.GB5446@pengutronix.de>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
 <1324133529-2036-8-git-send-email-s.hauer@pengutronix.de>
 <20120101043717.GC945@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120101043717.GC945@game.jcrosoft.org>
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
Subject: Re: [PATCH 7/9] ARM: move exception vectors away from start of binary
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 01, 2012 at 05:37:17AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:52 Sat 17 Dec     , Sascha Hauer wrote:
> > Traditionally U-Boot and barebox have the exception vectors at
> > the start of the binary. There is no real reason in doing so,
> > because in the majority of cases this data will not be at 0x0
> > where it could be used as vectors directly anyway.
> > This patch puts the vectors into a separate linker section and
> > defines an head function which is placed at the start of the
> > image instead. Putting this in a separate function also has
> > the advantage that it can be placed at the start of images
> > which require an additional header like several Freescale i.MX
> > images. As the head function contains the barebox arm magic
> > those images can now also be detected aas barebox images.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> I've to make it optionnal as on AT91 for boot we must have it at the bigeniing
> of the binary

Instead of this:

		"b reset\n"
		".rept 7\n"
		".word 0x0\n"
		".endr\n"

we could do this:

		"b reset\n"
		".rept 7\n"
		"1: b 1b\n"
		".endr\n"

This looks like a exception vector table for the at91 bootloader. BTW
I just looked at a at91 datasheet and at least on the at91sam9260 the
sixth vector should contain the image size to copy. So maybe this does
not work on at91 anyway?

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
