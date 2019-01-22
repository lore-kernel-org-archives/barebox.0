Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx01.eckelmann.de ([217.19.183.92])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glr99-0007QR-Kq
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 08:11:01 +0000
Date: Tue, 22 Jan 2019 09:10:40 +0100
From: "Scherer, Thorsten" <thorsten.scherer@eckelmann.de>
Message-ID: <20190122081040.GA23658@ws067.eckelmann.group>
References: <20181213063356.19138-1-t.scherer@eckelmann.de>
 <20181217141852.9c9dd9acf3072d07af8af20b@gmail.com>
 <20181217113102.kjlim22expeyz627@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181217113102.kjlim22expeyz627@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imd: model and compatible missing in metadata
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


Hello,

i spent some time trying to understand the usage of imd_used etc. =


In another reply I stated:

'I misread the documenation on IMD as "of_compatible and model will be
figured out and put into the proper location by barebox".'

I am not so sure, if that is really the case.


As far as i understand things:

1. 	of_compatible and model are (should be) automagically added to imd from=
 the
	entries in the dts.

git show 97e81f2d7 | grep -A 1 'For.*model.*of_compatible'
cat scripts/gen-dtb-s | grep -A 23 -B 3 'barebox_imd_0'

2.	the IMD_USED macro puts arbitrary tags in the metadata.  Which may
	also be a tag named model.


Now I wonder, if the lack of the patch just covers up an issue at another
place or if there is something (in the context of multi image support?) whi=
ch
I do not understand.  Maybe there is something messed up with the entries in
the device tree?

https://www.spinics.net/lists/arm-kernel/msg699453.html

Maybe someone can point me in the right direction?

Best regards,
Thorsten

On Mon, Dec 17, 2018 at 12:31:02PM +0100, Sascha Hauer wrote:
> On Mon, Dec 17, 2018 at 02:18:52PM +0300, Antony Pavlov wrote:
> > On Thu, 13 Dec 2018 07:33:56 +0100
> > "Thorsten K. Scherer" <t.scherer@eckelmann.de> wrote:
> > =

> > Hi!
> > =

> > =

> > > fixes 97e81f2
> > > =

> > > Signed-off-by: Thorsten K. Scherer <t.scherer@eckelmann.de>
> > > ---
> > >  include/asm-generic/barebox.lds.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > =

> > > diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/=
barebox.lds.h
> > > index 74d3ca4a9..decaab79a 100644
> > > --- a/include/asm-generic/barebox.lds.h
> > > +++ b/include/asm-generic/barebox.lds.h
> > > @@ -66,7 +66,7 @@
> > >  #define BAREBOX_IMD				\
> > >  	KEEP(*(.barebox_imd_start))		\
> > >  	KEEP(*(.barebox_imd_1*))		\
> > > -	*(.barebox_imd_0*)			\
> > > +	KEEP(*(.barebox_imd_0*))		\
> > >  	KEEP(*(.barebox_imd_end))
> > >  =

> > >  #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
> > > -- =

> > > 2.19.1
> > =

> > It looks like this patch has unobvious drawback.
> > The bareboximd utility sees too many 'model' and 'compatible' strings i=
n a single image, e.g.:
> =

> Now I remember what the intention was that this line looks so apparently
> different from the other ones ;)
> =

> To get the compatible strings into the binary I have created imd_used().
> This should be called with the symbol that should be kept in the
> resulting image.
> =

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- =

Mit freundlichen Gr=FC=DFen
Thorsten K. Scherer
Diplom-Ingenieur (FH)
K=E4lte- und Geb=E4udeleittechnik
Datentechnik


Eckelmann AG
Berliner Str. 161, 65205 Wiesbaden
Telefon +49 611 7103-329     =

Fax +49 611 7103-133
thorsten.scherer@eckelmann.de
https://www.eckelmann.de

Eckelmann Group - Source of inspiration

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
