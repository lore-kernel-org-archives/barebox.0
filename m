Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEwvd-0000Ae-UN
 for barebox@lists.infradead.org; Tue, 14 Jul 2015 09:55:20 +0000
Received: by lblf12 with SMTP id f12so2940349lbl.2
 for <barebox@lists.infradead.org>; Tue, 14 Jul 2015 02:54:48 -0700 (PDT)
Date: Tue, 14 Jul 2015 13:01:43 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150714130143.d42ee95d3b57eb44443fd94a@gmail.com>
In-Reply-To: <20150714052756.GP18700@pengutronix.de>
References: <1436819289-9752-1-git-send-email-antonynpavlov@gmail.com>
 <20150714052756.GP18700@pengutronix.de>
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
Subject: Re: [RFC] WIP: fbconsole: very dirty font selection via param_enum
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 14 Jul 2015 07:27:56 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jul 13, 2015 at 11:28:09PM +0300, Antony Pavlov wrote:
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
> >  drivers/video/fbconsole.c | 55 +++++++++++++++++++++++++++++++++++++++=
++------
> >  include/linux/font.h      |  8 +++++++
> >  lib/fonts/fonts.c         | 44 +++++++++++++++++++++++++++++++++++++
> >  3 files changed, 100 insertions(+), 7 deletions(-)
> > =

> > diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> > index 36fd138..43a73d9 100644
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
> > +}
> > +
> >  static void drawchar(struct fbc_priv *priv, int x, int y, char c)
> >  {
> >  	void *buf;
> > @@ -173,12 +187,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
> >  	}
> >  =

> >  	if (*end =3D=3D 'J' && a =3D=3D 2 && b =3D=3D -1) {
> > -		void *buf =3D gui_screen_render_buffer(priv->sc);
> > -
> > -		memset(buf, 0, priv->fb->line_length * priv->fb->yres);
> > -
> > -		priv->x =3D 0;
> > -		priv->y =3D 0;
> > +		cls(priv);
> >  		video_invertchar(priv, priv->x, priv->y);
> >  	}
> >  =

> > @@ -270,7 +279,7 @@ static int fbc_set_active(struct console_device *cd=
ev, unsigned flags)
> >  	struct fb_info *fb =3D priv->fb;
> >  	const struct font_desc *font;
> >  =

> > -	font =3D find_font("MINI4x6");
> > +	font =3D find_font(font_by_param_value(priv->par_font_val));
> =

> This find_font(font_by_param_value()) doesn't look very nice. I think
> there should be a const struct font_desc *find_font_enum(int); or
> similar which doesn't take the detour via the font name.

I have fixed this in the RFCv2 patch.
Also I have dropped unused find_font() so some patch splitting&rebasing is =
necessary.


> > +	if (cdev->f_active & CONSOLE_STDOUT) {
> =

> (CONSOLE_STDOUT | CONSOLE_ERR)

fixed in RFCv2.
> =

> > +		struct fb_info *fb =3D priv->fb;
> > +		const struct font_desc *font;
> > +
> > +		cls(priv);
> > +
> > +		font =3D find_font(font_by_param_value(priv->par_font_val));
> > +
> > +		/* FIXME: code duplication */
> > +		priv->font_width =3D font->width;
> > +		priv->font_height =3D font->height;
> > +		priv->fontdata =3D font->data;
> > +
> > +		priv->rows =3D fb->yres / priv->font_height - 1;
> > +		priv->cols =3D fb->xres / priv->font_width - 1;
> > +
> > +		priv->state =3D LIT;
> =

> Is this correct? If we are in the middle of an escape sequence, why
> should we leave it here?

I can't imagine this situation.
I have dropped it in RFCv2 anyway.

> > +struct param_d *add_param_font(struct device_d *dev,
> > +		int (*set)(struct param_d *p, void *priv),
> > +		int (*get)(struct param_d *p, void *priv),
> > +		int *value, void *priv)
> > +{
> > +	unsigned int i;
> > +	int t =3D num_fonts;
> > +
> =

> 	if (!font_names) {
> > +	font_names =3D xmalloc(sizeof(char *) * t);
> > +
> > +	for (i =3D 0; i < num_fonts; i++)
> > +		((const char **)font_names)[i] =3D fonts[i]->name;
> 	}

I have planned to add separate initcall for font_names initialization,
but font_names initialization in add_parm_font() looks better:
  * it is simplier;
  * it runs "on-demand" only.

I have fixed this in RFCv2 too.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
