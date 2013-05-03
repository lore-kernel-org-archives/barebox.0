Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UY7YA-0007Tv-3D
 for barebox@lists.infradead.org; Fri, 03 May 2013 04:24:51 +0000
Date: Fri, 3 May 2013 06:24:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130503042426.GS32299@pengutronix.de>
References: <1367485632-10725-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1367485632-10725-2-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367485632-10725-2-git-send-email-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH RFC 1/2] bootm: Simplify initrd address handling
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 02, 2013 at 11:07:11AM +0200, Uwe Kleine-K=F6nig wrote:
> 	data.initrd_address =3D UIMAGE_SOME_ADDRESS;
> 	...
> 	if (-L was given to bootm)
> 		data.initrd_address =3D address_provided_to_-L;
> 	...
> 	if (initrd is provided as uInitrd && data.initrd_address =3D=3D UIMAGE_S=
OME_ADDRESS)
> 		data.initrd_address =3D load_address_from_uInitrd;
> 	...
> 	if (data.initrd_address =3D=3D UIMAGE_SOME_ADDRESS)
> 		data.initrd_address =3D UIMAGE_INVALID_ADDRESS;
> =

> can be simplified to:
> =

> 	data.initrd_address =3D UIMAGE_INVALID_ADDRESS;
> 	...
> 	if (-L was given to bootm)
> 		data.initrd_address =3D address_provided_to_-L;
> 	...
> 	if (initrd is provided as uInitrd && data.initrd_address =3D=3D UIMAGE_I=
NVALID_ADDRESS)
> 		data.initrd_address =3D load_address_from_uInitrd;
> 	...
> =

> The only change introduced by this simplification is for cases where the
> user passes -L UIMAGE_SOME_ADDRESS or -L UIMAGE_INVALID_ADDRESS to
> bootm. (-L UIMAGE_SOME_ADDRESS is now used literally instead of ignored
> before. -L UIMAGE_INVALID_ADDRESS used to skip getting the
> initrd-address from the uInitrd, now the uInitrd address is honored.)

And now I remember why I did that in the first place. It was to be able
to explicitly ignore a uInitrd load address from an image. Anyway, since
we ignore this address in any case with the next patch these patches are
ok.


Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
