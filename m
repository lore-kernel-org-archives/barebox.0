Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e59Ei-00012z-T4
 for barebox@lists.infradead.org; Thu, 19 Oct 2017 11:43:42 +0000
Received: by mail-lf0-x241.google.com with SMTP id n69so9260542lfn.2
 for <barebox@lists.infradead.org>; Thu, 19 Oct 2017 04:43:19 -0700 (PDT)
Date: Thu, 19 Oct 2017 14:55:40 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20171019145540.27c3a3b9752b836f97043e1c@gmail.com>
In-Reply-To: <20171016140618.n6z7ndpfm3ucxl5x@pengutronix.de>
References: <20171010122631.9421-1-antonynpavlov@gmail.com>
 <20171010122631.9421-4-antonynpavlov@gmail.com>
 <20171016082158.mclujzfzsdvhjcvq@pengutronix.de>
 <20171016171011.934b4475b230c7ccaca5f88c@gmail.com>
 <20171016140618.n6z7ndpfm3ucxl5x@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/5] sandbox: parse libftdi options
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 16 Oct 2017 16:06:18 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Oct 16, 2017 at 05:10:11PM +0300, Antony Pavlov wrote:
> > On Mon, 16 Oct 2017 10:21:58 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > On Tue, Oct 10, 2017 at 03:26:29PM +0300, Antony Pavlov wrote:
> > > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > > ---
> > > >  arch/sandbox/Makefile    |  2 +-
> > > >  arch/sandbox/os/common.c | 12 ++++++--
> > > >  arch/sandbox/os/ftdi.c   | 79 ++++++++++++++++++++++++++++++++++++=
+++++++++++-
> > > >  3 files changed, 89 insertions(+), 4 deletions(-)
> > > > =

> > > > diff --git a/arch/sandbox/os/ftdi.c b/arch/sandbox/os/ftdi.c
> > > > index 34e9165787..e3e46ed12d 100644
> > > > --- a/arch/sandbox/os/ftdi.c
> > > > +++ b/arch/sandbox/os/ftdi.c
> > > > @@ -20,6 +20,7 @@
> > > >  #include <unistd.h>
> > > >  #include <ftdi.h>
> > > >  #include <errno.h>
> > > > +#include <string.h>
> > > >  #include <mach/linux.h>
> > > >  =

> > > >  #define FTDI_VID		0x0403	/* Vendor Id */
> > > > @@ -38,6 +39,8 @@ struct ft2232_bitbang {
> > > >  =

> > > >  static struct ft2232_bitbang ftbb;
> > > >  =

> > > > +extern const char *libftdi_options;
> > > > +
> > > >  static inline int ftdi_flush(struct ftdi_context *ftdi)
> > > >  {
> > > >  	uint8_t buf[1];
> > > > @@ -116,6 +119,67 @@ void barebox_libftdi1_gpio_set_value(struct ft=
2232_bitbang *ftbb,
> > > >  		ftbb->odata &=3D ~BIT(off);
> > > >  }
> > > >  =

> > > > +/* This is a somewhat hacked function similar in some ways to strt=
ok().
> > > > + * It will look for needle with a subsequent '=3D' in haystack, re=
turn a copy of
> > > > + * needle and remove everything from the first occurrence of needl=
e to the next
> > > > + * delimiter from haystack.
> > > > + */
> > > > +static char *extract_param(const char *const *haystack, const char=
 *needle,
> > > > +			const char *delim)
> > > > +{
> > > =

> > > Parsing comma separated option lists is something we do more than onc=
e.
> > > Right now we already have parseopt_b and parseopt_hu. Would be nice to
> > > have this function alongside with the existing functions. Also
> > > parseopt_* look simpler to follow, it may be worth adopting the code =
for
> > > this function.
> > =

> > At the moment the parseopt_* functions are in the fs/parseopt.c file.
> > Adding the parseopt_ul() for parsing u32 option value in arch/sandbox/o=
s/ftdi.c
> > will lead to moving fs/parseopt.c file to common code, e.g. to lib/.
> > =

> > Is it ok to add 'obj-y +=3D parseopt.o' to the lib/Makefile file?
> =

> obj-y should be fine. ATM fs/parseopt.c is always compiled aswell.

Currently parseopt_hu() returns void and has no explicit flag for parsing e=
rror
situation. I think that it is reasonable to use explicit error flag in new
parseopt_ul() for parsing u32 option value, e.g. use function return value
as an error flag.

Any suggestion?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
