Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6Lm-0000uI-Bd
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 12:49:03 +0000
Received: by mail-lj1-x229.google.com with SMTP id s1so12435185ljo.0
 for <barebox@lists.infradead.org>; Tue, 02 Jun 2020 05:49:01 -0700 (PDT)
Date: Tue, 2 Jun 2020 15:48:58 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200602154858.2159a78191d32e5c0d2dd6af@gmail.com>
In-Reply-To: <20200602075128.GI11869@pengutronix.de>
References: <20200602012035.2b476de768013dc5793cdea0@gmail.com>
 <20200602075128.GI11869@pengutronix.de>
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
Subject: Re: [RFC] inkscape 1.0 issue
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 2 Jun 2020 09:51:28 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Tue, Jun 02, 2020 at 01:20:35AM +0300, Antony Pavlov wrote:
> > =

> > diff --git a/lib/logo/Makefile b/lib/logo/Makefile
> > index eb7aee080e..8c81447df7 100644
> > --- a/lib/logo/Makefile
> > +++ b/lib/logo/Makefile
> > @@ -1,17 +1,17 @@
> >  =

> > -OPTS_barebox-logo-w64.bblogo=3D"-w 64"
> > +OPTS_barebox-logo-w64.bblogo =3D --export-width=3D64
> >  bblogo-$(CONFIG_BAREBOX_LOGO_64) +=3D barebox-logo-w64
> =

> according to the man page --export-width=3D64 is supported by 0.92.4 as
> well, so we could change this part unconditionally.
> =

> > @@ -41,7 +41,8 @@ cmd_logo_S =3D							\
> >  quiet_cmd_logo =3D LOGO.S   $@
> >  cmd_logo =3D							\
> >  (								\
> > -	inkscape -z $(OPTS_$(@F)) -e $@ $< > /dev/null;		\
> > +	DISPLAY=3D"" inkscape $(OPTS_$(@F)) --export-type=3Dpng $< > /dev/nul=
l; \
> > +	mv $(patsubst %.svg,%.png,$<) $@; \
> =

> Inkscape-1.0 supports "-o -" and pre Inkscape-1.0 supports "-e -", we
> could use this to do without the mv in both cases.
> =

> DISPLAY=3D"" shouldn't hurt on pre Inkscape-1.0. as well.
> =

> This leaves '-z' and -e vs. --export-type=3Dpng. Something like this shou=
ld work:
> =

> INKSCAPEOPTS +=3D $(call try-run, inkscape -z,-z,)
> INKSCAPEOPTS +=3D $(call try-run, inkscape -e,-e,--export_type=3Dpng)
> =


Can we move all inkscape-related stuff into separate svg2bblogo.sh script
and just call script from makefile?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
