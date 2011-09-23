Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R76jK-0001au-Fq
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 14:27:55 +0000
Date: Fri, 23 Sep 2011 16:27:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110923142752.GL31404@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
	<1316769860-24549-9-git-send-email-s.hauer@pengutronix.de>
	<20110923092606.GK31404@pengutronix.de>
	<1316786729.3656.96.camel@lws-gamez>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1316786729.3656.96.camel@lws-gamez>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/12] cfi flash: fix flash_make_cmd for big endian access
To: Teresa Gamez <T.Gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 23, 2011 at 04:05:29PM +0200, Teresa Gamez wrote:
> Hello Sascha,
> =

> Am Freitag, den 23.09.2011, 11:26 +0200 schrieb Sascha Hauer:
> > Hi Teresa,
> > =

> > On Fri, Sep 23, 2011 at 11:24:16AM +0200, Sascha Hauer wrote:
> > > This is broken on big endian systems since:
> > > =

> > > 943b271 cfi_flash: support of u32 cmd
> > > =

> > > I looked over it and I *think* that the function was correct
> > > for both big and little endian systems before this patch.
> > > To support u32 cmd we only have to change the data type of
> > > the command from u8 to u32.
> > =

> > Can you please test if this patch works on your u8-is-not-enough
> > flash?
> =

> Successfully tested with a u8-is-not-enough flash (28F256P33BF) on a
> phyCORE-i.MX35.

Nice, thanks. I can't test this with such a flash on a big endian
machine, but I'm confident that the patch does the right thing.
Famous last words...

Sascha


> =

> Teresa
> =

> > =

> > Sascha
> > =

> > > =

> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > Cc: Teresa G=E1mez <t.gamez@phytec.de>
> > > ---
> > >  drivers/nor/cfi_flash.c |   24 +++++-------------------
> > >  1 files changed, 5 insertions(+), 19 deletions(-)
> > > =

> > > diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
> > > index f9b96c5..654e647 100644
> > > --- a/drivers/nor/cfi_flash.c
> > > +++ b/drivers/nor/cfi_flash.c
> > > @@ -822,26 +822,12 @@ int flash_generic_status_check (struct flash_in=
fo *info, flash_sect_t sector,
> > >   */
> > >  void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmd=
buf)
> > >  {
> > > -	int i;
> > > -	int cp_offset;
> > > -	int cword_offset;
> > > -	uchar val;
> > > -	uchar *cp;
> > > -
> > > -	*cmdbuf =3D 0;
> > > -	cp =3D (uchar *)cmdbuf;
> > > +	cfiword_t result =3D 0;
> > > +	int i =3D info->portwidth / info->chipwidth;
> > >  =

> > > -	for (i =3D info->portwidth; i > 0; i--) {
> > > -		cword_offset =3D (info->portwidth-i) % info->chipwidth;
> > > -#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
> > > -		cp_offset =3D info->portwidth - i;
> > > -		val =3D *((uchar *)&cmd + cword_offset);
> > > -#else
> > > -		cp_offset =3D i - 1;
> > > -		val =3D *((uchar *)&cmd + sizeof(u32) - cword_offset - 1);
> > > -#endif
> > > -	cp[cp_offset] =3D (cword_offset >=3D sizeof(u32)) ? 0x00 : val;
> > > -	}
> > > +	while (i--)
> > > +		result =3D (result << (8 * info->chipwidth)) | cmd;
> > > +	*cmdbuf =3D result;
> > >  }
> > >  =

> > >  /*
> > > -- =

> > > 1.7.6.3
> > > =

> > > =

> > =

> =

> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
