Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Rb-0005YA-Oj
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:05:21 +0000
Date: Tue, 4 Jun 2019 10:05:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604080517.v7nz5zqs5tt5gayw@pengutronix.de>
References: <20190603155237.17768-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603155237.17768-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] plathome-openblocks-a6: provide a kwbimage.cfg file
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 03, 2019 at 05:52:37PM +0200, Uwe Kleine-K=F6nig wrote:
> Since support for Openblocks A6 was introduced in 2014 and commit
> 906afb533186 ("ARM: mvebu: Add Plat'home's Kirkwood Openblocks A6 board
> support") there is no kwbimage config. This patch guesses such a file
> that at least makes barebox compile again with
> CONFIG_MACH_PLATHOME_OPENBLOCKS_A6=3Dy.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/plathome-openblocks-a6/kwbimage.cfg | 3 +++
>  1 file changed, 3 insertions(+)
>  create mode 100644 arch/arm/boards/plathome-openblocks-a6/kwbimage.cfg

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/boards/plathome-openblocks-a6/kwbimage.cfg b/arch/a=
rm/boards/plathome-openblocks-a6/kwbimage.cfg
> new file mode 100644
> index 000000000000..ba3011736fb7
> --- /dev/null
> +++ b/arch/arm/boards/plathome-openblocks-a6/kwbimage.cfg
> @@ -0,0 +1,3 @@
> +VERSION 1
> +BOOT_FROM nand
> +BINARY ./binary.0 0000005b 00000068
> -- =

> 2.20.1
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
