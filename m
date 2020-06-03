Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgMoQ-0005cz-Ms
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 06:23:44 +0000
Date: Wed, 3 Jun 2020 08:23:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200603062336.GO11869@pengutronix.de>
References: <20200602012035.2b476de768013dc5793cdea0@gmail.com>
 <20200602075128.GI11869@pengutronix.de>
 <20200602154858.2159a78191d32e5c0d2dd6af@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602154858.2159a78191d32e5c0d2dd6af@gmail.com>
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
Subject: Re: [RFC] inkscape 1.0 issue
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 02, 2020 at 03:48:58PM +0300, Antony Pavlov wrote:
> On Tue, 2 Jun 2020 09:51:28 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi Antony,
> > 
> > On Tue, Jun 02, 2020 at 01:20:35AM +0300, Antony Pavlov wrote:
> > > 
> > > diff --git a/lib/logo/Makefile b/lib/logo/Makefile
> > > index eb7aee080e..8c81447df7 100644
> > > --- a/lib/logo/Makefile
> > > +++ b/lib/logo/Makefile
> > > @@ -1,17 +1,17 @@
> > >  
> > > -OPTS_barebox-logo-w64.bblogo="-w 64"
> > > +OPTS_barebox-logo-w64.bblogo = --export-width=64
> > >  bblogo-$(CONFIG_BAREBOX_LOGO_64) += barebox-logo-w64
> > 
> > according to the man page --export-width=64 is supported by 0.92.4 as
> > well, so we could change this part unconditionally.
> > 
> > > @@ -41,7 +41,8 @@ cmd_logo_S =							\
> > >  quiet_cmd_logo = LOGO.S   $@
> > >  cmd_logo =							\
> > >  (								\
> > > -	inkscape -z $(OPTS_$(@F)) -e $@ $< > /dev/null;		\
> > > +	DISPLAY="" inkscape $(OPTS_$(@F)) --export-type=png $< > /dev/null; \
> > > +	mv $(patsubst %.svg,%.png,$<) $@; \
> > 
> > Inkscape-1.0 supports "-o -" and pre Inkscape-1.0 supports "-e -", we
> > could use this to do without the mv in both cases.
> > 
> > DISPLAY="" shouldn't hurt on pre Inkscape-1.0. as well.
> > 
> > This leaves '-z' and -e vs. --export-type=png. Something like this should work:
> > 
> > INKSCAPEOPTS += $(call try-run, inkscape -z,-z,)
> > INKSCAPEOPTS += $(call try-run, inkscape -e,-e,--export_type=png)
> > 
> 
> Can we move all inkscape-related stuff into separate svg2bblogo.sh script
> and just call script from makefile?

We probably could, but what would be the advantage? Embedding too much
shell in Makefile makes things harder to understand, but I don't think
this case already falls into that category.

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
