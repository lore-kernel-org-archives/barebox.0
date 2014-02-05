Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAxPJ-0002J1-Bj
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 08:00:30 +0000
Date: Wed, 5 Feb 2014 09:00:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140205080001.GX16215@pengutronix.de>
References: <1391159170-17686-1-git-send-email-freesilicon@gmail.com>
 <20140204035625.GE9671@ns203013.ovh.net>
 <20140204065745.GK16215@pengutronix.de>
 <CAKRNOGwpasg7O4fW0uMJAcgOmG2re26-mk70YpHaQVyzsX_XuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKRNOGwpasg7O4fW0uMJAcgOmG2re26-mk70YpHaQVyzsX_XuQ@mail.gmail.com>
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
Subject: Re: [PATCH] Load PBL into SRAM
To: David Vincent <freesilicon@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 04, 2014 at 08:49:55AM +0100, David Vincent wrote:
> 2014-02-04 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Tue, Feb 04, 2014 at 04:56:25AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >> On 10:06 Fri 31 Jan     , David Vincent wrote:
> >> > This allows to load all the lowlevel init code, including the
> >> > uncompressor, inside SRAM and not just the bare init part. This is
> >> > useful when pbl is used as a first-stage bootloader but is loaded by an
> >> > external firmware.
> >> >
> >> > Signed-off-by: David Vincent <freesilicon@gmail.com>
> >> > ---
> >> >  arch/arm/lib/pbl.lds.S            |    4 ++--
> >> >  common/Kconfig                    |   16 ++++++++++++++--
> >> >  include/asm-generic/barebox.lds.h |   14 +++++++++++++-
> >> >  pbl/Kconfig                       |    7 +++++++
> >> >  4 files changed, 36 insertions(+), 5 deletions(-)
> >> >
> >> > diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> >> > index 0954c89..34c0cb3 100644
> >> > --- a/arch/arm/lib/pbl.lds.S
> >> > +++ b/arch/arm/lib/pbl.lds.S
> >> > @@ -50,11 +50,11 @@ SECTIONS
> >> >             *(.text*)
> >> >     }
> >> >
> >> > +   BAREBOX_PBL_SIZE
> >> > +
> >> >     /* Discard unwind if enable in barebox */
> >> >     /DISCARD/ : { *(.ARM.ex*) }
> >> >
> >> > -   BAREBOX_BARE_INIT_SIZE
> >> > -
> >>
> >> nack you change the binary format you can add an information but can not
> >> change the format
> >
> > I don't think the format is changed here. It shouldn't matter where the
> > /DISCARD/ is, right? Nevertheless the patch looks more obvious if just
> > the line is changed, not its position.
> >
> >> >  #include <linux/stringify.h>
> >> >  /* use 2 ASSERT because ld can not accept '"size" "10"' format */
> >> >  #define BAREBOX_BARE_INIT_SIZE                                     \
> >> >     _barebox_bare_init_size = __bare_init_end - _text;      \
> >> >     ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, "Barebox bare_init size > ") \
> >> > -   ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE)) \
> >> > +   ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE))
> >> different patch
> >
> > This just removes the trailing '\' which is necessary here.
> 
> It isn't obvious for me why the trailing '\' is necessary but you know
> better than me so I will put it back and add one on the next
> definition.

I wasn't clear. What I meant is that it's necessary to remove the
whitespace. But as said, I misread the patch anyway.

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
