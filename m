Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJaKC-0000PK-Mu
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 07:29:02 +0000
Date: Tue, 28 Nov 2017 08:28:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128072839.bmaphuqkpshpslib@pengutronix.de>
References: <20171124144251.14694-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171124144251.14694-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] mtd: spi-nor: mx25l3205d/mx25l6405d: append SECT_4K
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Nov 24, 2017 at 03:42:51PM +0100, Ulrich =D6lmann wrote:
> This is a port of Linux kernel commit
> =

>     | commit 0501f2e5ff28a02295e42fc9e7164a20ef4c30d5
>     | Author: Andreas Fenkart <afenkart@gmail.com>
>     | Date:   Thu Nov 5 10:04:23 2015 +0100
>     |
>     |     mtd: spi-nor: mx25l3205d/mx25l6405d: append SECT_4K
>     |
>     |     according datasheet both chips can erase 4kByte sectors individ=
ually
>     |
>     |     Signed-off-by: Andreas Fenkart <andreas.fenkart@dev.digitalstro=
m.org>
>     |     Signed-off-by: Brian Norris <computersforpeace@gmail.com>
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index fb13cd12694a..5cf650c0e230 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -524,9 +524,9 @@ static const struct spi_device_id spi_nor_ids[] =3D {
>  	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
>  	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
>  	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, SECT_4K) },
> -	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 0) },
> +	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, SECT_4K) },
>  	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
> -	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
> +	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, SECT_4K) },
>  	{ "mx25u2033e",  INFO(0xc22532, 0, 64 * 1024,   4, SECT_4K) },
>  	{ "mx25u4035",   INFO(0xc22533, 0, 64 * 1024,   8, SECT_4K) },
>  	{ "mx25u8035",   INFO(0xc22534, 0, 64 * 1024,  16, SECT_4K) },
> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
