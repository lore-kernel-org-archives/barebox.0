Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X6Ze7-0006qj-KA
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 06:21:56 +0000
Date: Mon, 14 Jul 2014 08:21:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140714062132.GT23235@pengutronix.de>
References: <CACqcpZCQsyPBZ+YK+ogu+xhgnjQpA2rW3+py+EOe6+ukfvpEYA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZCQsyPBZ+YK+ogu+xhgnjQpA2rW3+py+EOe6+ukfvpEYA@mail.gmail.com>
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
Subject: Re: Nand with 256 oob
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 11, 2014 at 04:13:47PM +0200, Rapha=EBl Poggi wrote:
> Hi all !
> =

> I want to use barebox with nand support (Soft ECC) on a custom board
> based on SAM9M10, but the nand has a 256 oob size and it is not
> supported on barebox.
> =

> Barebox fails, because there is no oob scheme defined for 256 size.
> =

> if (!chip->ecc.layout && (chip->ecc.mode !=3D NAND_ECC_SOFT_BCH)) {
> switch (mtd->oobsize) {
> case 8:
> chip->ecc.layout =3D &nand_oob_8;
> break;
> case 16:
> chip->ecc.layout =3D &nand_oob_16;
> break;
> case 64:
> chip->ecc.layout =3D &nand_oob_64;
> break;
> case 128:
> chip->ecc.layout =3D &nand_oob_128;
> break;
> default:
> pr_warn("No oob scheme defined for oobsize %d\n",
>   mtd->oobsize);
> BUG();
> }
> }
> =

> =

> I have found this oob_256 scheme but I don't know if it's correct or not.
> =

> static struct nand_ecclayout nand_oob_256 =3D {
> .eccbytes =3D 96,
> .eccpos =3D {
> 160, 161, 162, 163, 164, 165, 166, 167,
> 168, 169, 170, 171, 172, 173, 174, 175,
>    176, 177, 178, 179, 180, 181, 182, 183,
>    184, 185, 186, 187, 188, 189, 190, 191,
>    192, 193, 194, 195, 196, 197, 198, 199,
>    200, 201, 202, 203, 204, 205, 206, 207,
>    208, 209, 210, 211, 212, 213, 214, 215,
>    216, 217, 218, 219, 220, 221, 222, 223,
>    224, 225, 226, 227, 228, 229, 230, 231,
>    232, 233, 234, 235, 236, 237, 238, 239,
>    240, 241, 242, 243, 244, 245, 246, 247,
>    248, 249, 250, 251, 252, 253, 254, 255},
> .oobfree =3D {
> {.offset =3D 2,
> .length =3D 158}}
> };
> =

> Can we use this scheme ? Or there is another solution ?

Please grep for nand_bch_init in both the kernel and barebox.
This function automatically constructs a suitable ecc layout
based on the NAND parameters. This code doesn't seem to have users
in barebox, so I don't know whether it works correctly, but
this is the way to go.

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
