Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFIDe-0007F4-H2
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 08:39:11 +0000
Received: by lblf12 with SMTP id f12so20446658lbl.2
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 01:38:48 -0700 (PDT)
Date: Wed, 15 Jul 2015 11:45:47 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150715114547.8a8a5fb1787aed6a29714996@gmail.com>
In-Reply-To: <20150715054532.GU18700@pengutronix.de>
References: <1436867794-15409-1-git-send-email-antonynpavlov@gmail.com>
 <20150715054532.GU18700@pengutronix.de>
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
Subject: Re: [RFC v2] WIP: fbconsole: not so dirty font selection via
 param_enum
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 15 Jul 2015 07:45:32 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Tue, Jul 14, 2015 at 12:56:34PM +0300, Antony Pavlov wrote:
> > Alas I can't find any tab-complition for param_enum,
> > so addition 'fonts' command is introduced.
> > =

> > Usage example:
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =

> >     barebox@barebox sandbox:/ fonts
> >     VGA8x16
> >     MINI4x6
> >     barebox@barebox sandbox:/ fbconsole0.font=3DMINI4x6
> >     barebox@barebox sandbox:/ fbconsole0.active=3Do
> >     fb0: framebuffer console 160x80 activated
> >     barebox@barebox sandbox:/ fbconsole0.font=3DVGA8x16
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  drivers/video/fbconsole.c | 60 +++++++++++++++++++++++++++++++++++++++=
--------
> >  include/linux/font.h      | 11 ++++++---
> >  lib/fonts/fonts.c         | 39 ++++++++++++++++--------------
> >  3 files changed, 80 insertions(+), 30 deletions(-)
> > =

> > diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> > index 36fd138..7df89ab 100644
> > --- a/drivers/video/fbconsole.c
> > +++ b/drivers/video/fbconsole.c
> > @@ -20,6 +20,10 @@ struct fbc_priv {
> >  	struct fb_info *fb;
> >  =

> >  	struct screen *sc;
> > +
> > +	struct param_d *par_font;
> > +	int par_font_val;
> > +
> >  /* FIXME */
> >  #define VIDEO_FONT_CHARS 256
> >  	struct image *chars[VIDEO_FONT_CHARS];
> > @@ -47,6 +51,16 @@ static int fbc_tstc(struct console_device *cdev)
> >  	return 0;
> >  }
> >  =

> > +static void cls(struct fbc_priv *priv)
> > +{
> > +	void *buf =3D gui_screen_render_buffer(priv->sc);
> > +
> > +	memset(buf, 0, priv->fb->line_length * priv->fb->yres);
> > +
> > +	priv->x =3D 0;
> > +	priv->y =3D 0;
> =

> I found out this is not entirely correct. Clearing the screen (\e[2J)
> and putting the cursor top left (\e[;H) are two different things.
> =

> I integrated the changes from this patch, but changed cls() not to put
> the cursor in home position.
> =

> Also I integrated some other changes:
> =

> - Fix fbc_set_active, no longer lose memory when called multiple times
> - Add 7x14 font
> - properly export get_pixel
> - Add fb_enable/fb_disable function so that we do not have to call into
>   the fb_info ops directly
> - Make splash screen work again, was broken by "graphics_utils: Let
>   fb_open allocate the screen"
> =

> Checkout the result on -next.

So my fbconsole TODO list contain only one position:

  - add Documentation.

Have you any fbconsole TODOs?




--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
