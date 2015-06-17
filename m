Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z56Th-0003rd-2h
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 06:05:37 +0000
Date: Wed, 17 Jun 2015 08:05:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150617060514.GC6325@pengutronix.de>
References: <1432828567-14037-1-git-send-email-s.trumtrar@pengutronix.de>
 <1432828567-14037-9-git-send-email-s.trumtrar@pengutronix.de>
 <20150616084851.a398757dc38808bc5e83fe50@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150616084851.a398757dc38808bc5e83fe50@gmail.com>
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
Subject: Re: [PATCH v2 8/8] mtd: m25p80: use the SPI nor framework
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Tue, Jun 16, 2015 at 08:48:51AM +0300, Antony Pavlov wrote:
> On Thu, 28 May 2015 17:56:07 +0200
> Steffen Trumtrar <s.trumtrar@pengutronix.de> wrote:
> 
> > Use the spi-nor framework for the m25p80 driver to de-duplicate the code base
> > and follow along with the linux kernel version, so bugfixes or features can be
> > easier integrated.
> > 
> > Based on the Linux v4.1-rc3 version of m25p80.c.
> > 
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  drivers/mtd/devices/Kconfig  |   2 +-
> >  drivers/mtd/devices/m25p80.c | 998 +++++++------------------------------------
> >  2 files changed, 166 insertions(+), 834 deletions(-)
> > 
> > diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
> > index 095a4ca0936c..c941767de94c 100644
> > --- a/drivers/mtd/devices/m25p80.c
> > +++ b/drivers/mtd/devices/m25p80.c
> 
> ...
> 
> > +	{"w25q128"},    {"w25q256"},    {"cat25c11"},
> > +	{"cat25c03"},   {"cat25c09"},   {"cat25c17"},   {"cat25128"},
> > +
> > +        /*
> > +         * Generic support for SPI NOR that can be identified by the JEDEC READ
> > +         * ID opcode (0x9F). Use this, if possible.
> > +         */
> > +        {"nor-jedec"},
> >  	{ },
> >  };
> 
> Please fix whitespaces here.
> 
> Please use checkpatch.pl on your patches before submitting!

Uh, yes, there are quite some spaces instead of tabs in this file. I
just committed a patch fixing these.

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
