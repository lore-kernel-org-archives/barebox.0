Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e462T-00080R-09
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 14:06:43 +0000
Date: Mon, 16 Oct 2017 16:06:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016140618.n6z7ndpfm3ucxl5x@pengutronix.de>
References: <20171010122631.9421-1-antonynpavlov@gmail.com>
 <20171010122631.9421-4-antonynpavlov@gmail.com>
 <20171016082158.mclujzfzsdvhjcvq@pengutronix.de>
 <20171016171011.934b4475b230c7ccaca5f88c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171016171011.934b4475b230c7ccaca5f88c@gmail.com>
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
Subject: Re: [PATCH 3/5] sandbox: parse libftdi options
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 16, 2017 at 05:10:11PM +0300, Antony Pavlov wrote:
> On Mon, 16 Oct 2017 10:21:58 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Tue, Oct 10, 2017 at 03:26:29PM +0300, Antony Pavlov wrote:
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  arch/sandbox/Makefile    |  2 +-
> > >  arch/sandbox/os/common.c | 12 ++++++--
> > >  arch/sandbox/os/ftdi.c   | 79 +++++++++++++++++++++++++++++++++++++++++++++++-
> > >  3 files changed, 89 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/arch/sandbox/os/ftdi.c b/arch/sandbox/os/ftdi.c
> > > index 34e9165787..e3e46ed12d 100644
> > > --- a/arch/sandbox/os/ftdi.c
> > > +++ b/arch/sandbox/os/ftdi.c
> > > @@ -20,6 +20,7 @@
> > >  #include <unistd.h>
> > >  #include <ftdi.h>
> > >  #include <errno.h>
> > > +#include <string.h>
> > >  #include <mach/linux.h>
> > >  
> > >  #define FTDI_VID		0x0403	/* Vendor Id */
> > > @@ -38,6 +39,8 @@ struct ft2232_bitbang {
> > >  
> > >  static struct ft2232_bitbang ftbb;
> > >  
> > > +extern const char *libftdi_options;
> > > +
> > >  static inline int ftdi_flush(struct ftdi_context *ftdi)
> > >  {
> > >  	uint8_t buf[1];
> > > @@ -116,6 +119,67 @@ void barebox_libftdi1_gpio_set_value(struct ft2232_bitbang *ftbb,
> > >  		ftbb->odata &= ~BIT(off);
> > >  }
> > >  
> > > +/* This is a somewhat hacked function similar in some ways to strtok().
> > > + * It will look for needle with a subsequent '=' in haystack, return a copy of
> > > + * needle and remove everything from the first occurrence of needle to the next
> > > + * delimiter from haystack.
> > > + */
> > > +static char *extract_param(const char *const *haystack, const char *needle,
> > > +			const char *delim)
> > > +{
> > 
> > Parsing comma separated option lists is something we do more than once.
> > Right now we already have parseopt_b and parseopt_hu. Would be nice to
> > have this function alongside with the existing functions. Also
> > parseopt_* look simpler to follow, it may be worth adopting the code for
> > this function.
> 
> At the moment the parseopt_* functions are in the fs/parseopt.c file.
> Adding the parseopt_ul() for parsing u32 option value in arch/sandbox/os/ftdi.c
> will lead to moving fs/parseopt.c file to common code, e.g. to lib/.
> 
> Is it ok to add 'obj-y += parseopt.o' to the lib/Makefile file?

obj-y should be fine. ATM fs/parseopt.c is always compiled aswell.

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
