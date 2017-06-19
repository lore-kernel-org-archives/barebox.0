Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMq7F-000565-0R
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 06:24:50 +0000
Date: Mon, 19 Jun 2017 08:24:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619062405.33qchjyi5fkei5co@pengutronix.de>
References: <20170614215010.11886-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170614215010.11886-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: mvebu: initial support for Armada 38x
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 14, 2017 at 11:50:08PM +0200, Uwe Kleine-K=F6nig wrote:
> This SoC is similar enough to Armada 380/XP to make use of the code
> supporting these without further adaption.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mvebu/Kconfig  | 5 +++++
>  arch/arm/mach-mvebu/Makefile | 1 +
>  2 files changed, 6 insertions(+)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
> index 148b4f6d4cb3..827967eea380 100644
> --- a/arch/arm/mach-mvebu/Kconfig
> +++ b/arch/arm/mach-mvebu/Kconfig
> @@ -17,6 +17,11 @@ config ARCH_ARMADA_XP
>  	select CPU_V7
>  	select CLOCKSOURCE_MVEBU
>  =

> +config ARCH_ARMADA_38X
> +	bool
> +	select CPU_V7
> +	select CLOCKSOURCE_MVEBU
> +
>  config ARCH_DOVE
>  	bool
>  	select CPU_V7
> diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
> index 89805ba5b186..87a85119193e 100644
> --- a/arch/arm/mach-mvebu/Makefile
> +++ b/arch/arm/mach-mvebu/Makefile
> @@ -1,6 +1,7 @@
>  obj-pbl-y			+=3D common.o
>  obj-$(CONFIG_ARCH_ARMADA_370)	+=3D armada-370-xp.o
>  obj-$(CONFIG_ARCH_ARMADA_XP)	+=3D armada-370-xp.o
> +obj-$(CONFIG_ARCH_ARMADA_38X)	+=3D armada-370-xp.o
>  obj-$(CONFIG_ARCH_DOVE)		+=3D dove.o
>  obj-$(CONFIG_ARCH_KIRKWOOD)	+=3D kirkwood.o
>  obj-$(CONFIG_BOOTM)		+=3D kwbootimage.o
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
