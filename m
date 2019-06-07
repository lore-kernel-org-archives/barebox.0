Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8sV-0004Q7-8m
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 07:01:34 +0000
Date: Fri, 7 Jun 2019 09:01:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607070125.gbcemn5iurjbfrzh@pengutronix.de>
References: <20190605102356.5761-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605102356.5761-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mvebu: make the compiler inline mvebu_remap_registers
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 05, 2019 at 12:23:56PM +0200, Uwe Kleine-K=F6nig wrote:
> Without that gcc 7.3.1 (from OSELAS.Toolchain-2018.02.0) makes
> mvebu_remap_registers a standalone function which in its prolog saves
> two registers to the stack. However this function is called early during
> startup when there is no stack available yet and sp still points into
> the nirvana which makes barebox crash.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mvebu/common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
> index 6b4fa8b889d1..5650c1ed8726 100644
> --- a/arch/arm/mach-mvebu/common.c
> +++ b/arch/arm/mach-mvebu/common.c
> @@ -188,7 +188,7 @@ mem_initcall(mvebu_meminit);
>  #define MVEBU_BRIDGE_REG_BASE		0x20000
>  #define DEVICE_INTERNAL_BASE_ADDR	(MVEBU_BRIDGE_REG_BASE + 0x80)
>  =

> -static void mvebu_remap_registers(void)
> +static __always_inline void mvebu_remap_registers(void)
>  {
>  	void __iomem *base =3D mvebu_get_initial_int_reg_base();
>  =

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
