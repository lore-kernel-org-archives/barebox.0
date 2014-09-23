Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XWJXU-0000VI-F4
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 06:25:29 +0000
Date: Tue, 23 Sep 2014 08:25:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140923062506.GT4992@pengutronix.de>
References: <20140923002215.06ad3304@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140923002215.06ad3304@e6520eb>
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
Subject: Re: imx-image & i.MX35
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 23, 2014 at 12:22:15AM +0200, Eric B=E9nard wrote:
> Hi,
> =

> I didn't manage to get an image to boot on i.MX35 (internal boot on
> NAND) with current imx-image and 2014.09.0.
> =

> From the i.MX35 user manual :
> Since MLC NAND Flash devices do not guarantee error-free boot blocks,
> the i.MX35 boot code requires that the first 4 Kbytes of boot code be
> duplicated in a subsequent block to serve as a second copy option.
> =

> Actually imx-image puts the image at 4k but it seems that the i.MX35
> bootrom copies only from 8k as it expects that there is a copy of the
> first 0-4k in 4k-8k (and is supposed to use this copy if there is an
> ECC error in the first 4k) as we can see in the following lines :
> =

> barebox@Eukrea CPUIMX35:/  md -s /dev/nand0 0x0   =

> 00000000: ea0003fe eafffffe eafffffe eafffffe                ............=
....
> 00000010: eafffffe eafffffe eafffffe eafffffe                ............=
....
> 00000020: 65726162 00786f62 00000000 00000000
> barebox.........
> =

> =3D-> header is @ 0 in flash
> =

> barebox@Eukrea CPUIMX35:/  md -s /dev/nand0 0x1000
> 00001000: 56341200 00000000 0001eda1 00000000                ..4V........=
....
> 00001010: 00000000 00000000 00000000
> 00000000                ................
> =

> =3D-> so we have data @ 0x1000 in flash
> =

> barebox@Eukrea CPUIMX35:/  md 0x87f00000
> 87f00000: 00000000 00000000 00000000 00000000                ............=
....
> 87f00010: 00000000 00000000 00000000
> 00000000                ................
> =

> =3D-> but we don't find this data in RAM
> =

> barebox@Eukrea CPUIMX35:/  md -s /dev/nand0 0x2000
> 00002000: ea000012 eafffffe eafffffe eafffffe                ............=
....
> 00002010: eafffffe eafffffe eafffffe eafffffe                ............=
....
> 00002020: 65726162 00786f62 00000000 00034272
> barebox.....rB..
> =

> =3D-> so we have the image @ 0x2000 in flash
> =

> barebox@Eukrea CPUIMX35:/  md 0x87f01000          =

> 87f01000: ea000871 eafffffe eafffffe eafffffe                q...........=
....
> 87f01010: eafffffe eafffffe eafffffe eafffffe                ............=
....
> 87f01020: 65726162 00786f62 87f02000 0003b520                barebox.. ..=
 ...
> =

> =3D-> and we find it in RAM
> =

> This patch fix the problem, how should this be hanled in imx-image ?

We know the SoC type in imx-image, so it should be possible to limit the
changes to i.MX35 only. The question is whether it's possible to create
an image which works on i.MX35 NAND but also for other mediums like
MMC/SD.
What if we duplicate the header in the image, but limit it to i.MX35.
Does the resulting image still work with MMC/SD and USB?

> =

> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 3a25c09..f908069 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -761,7 +761,7 @@ int main(int argc, char *argv[])
>                 exit(1);
>         }
>  =

> -       ret =3D xwrite(outfd, buf, 4096);
> +       ret =3D xwrite(outfd, buf, 8192);

Shouldn't this be:

	xwrite(outfd, buf, 4096);
	xwrite(outfd, buf, 4096);

>         if (ret < 0) {
>                 perror("write");
>                 exit(1);
> @@ -774,7 +774,7 @@ int main(int argc, char *argv[])
>         }
>  =

>         while (image_size) {
> -               int now =3D image_size < 4096 ? image_size : 4096;
> +               int now =3D image_size < 8192 ? image_size : 8192;

this can be dropped, right?

Beware 'buf' has only 4096 bytes allocated.

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
