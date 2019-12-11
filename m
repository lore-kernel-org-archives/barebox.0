Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexLd-0007Gy-KL
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 08:27:55 +0000
Date: Wed, 11 Dec 2019 09:27:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191211082752.ddphsktt5umyvnz4@pengutronix.de>
References: <20191209152033.13220-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209152033.13220-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] mtd: spi-nor: Add support for en25qh64
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 09, 2019 at 04:20:33PM +0100, Ulrich =D6lmann wrote:
> This is a port of Linux kernel commit
> =

> | commit 30a2c8aa3c520d54bcaf3015ca8141b0156448b1
> | Author: Roger Pueyo Centelles <roger.pueyo@guifi.net>
> | Date:   Thu Feb 7 20:09:35 2019 +0100
> |
> |     mtd: spi-nor: Add support for en25qh64
> |
> |     The Eon EN25QH64 is a 64 Mbit SPI NOR flash memory chip found
> |     on recent wireless routers. Its 32, 128 and 256 Mbit siblings
> |     are already supported.
> |
> |     Tested on a COMFAST CF-E120A v3 router board.
> |
> |     Signed-off-by: Roger Pueyo Centelles <roger.pueyo@guifi.net>
> |     Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> |     Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
