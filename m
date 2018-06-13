Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT18j-0001eU-2Z
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 08:28:26 +0000
Date: Wed, 13 Jun 2018 10:28:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180613082814.dwu573h3omqdatna@pengutronix.de>
References: <20180611203822.dpc6qtgvydg66veg@pengutronix.de>
 <20180612054214.23261-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180612054214.23261-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] fixup! mvebu: create bbu handler for kwb images and use
 it on cubox
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 12, 2018 at 07:42:14AM +0200, Uwe Kleine-K=F6nig wrote:
> ---
>  arch/arm/mach-mvebu/Makefile           | 2 +-
>  arch/arm/mach-mvebu/include/mach/bbu.h | 9 +++++++++
>  2 files changed, 10 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
> index cc2b926438e4..6079403b83dd 100644

Applied, thanks

Sascha

> --- a/arch/arm/mach-mvebu/Makefile
> +++ b/arch/arm/mach-mvebu/Makefile
> @@ -1,8 +1,8 @@
>  obj-pbl-y			+=3D common.o
> -obj-y				+=3D kwb_bbu.o
>  obj-$(CONFIG_ARCH_ARMADA_370)	+=3D armada-370-xp.o
>  obj-$(CONFIG_ARCH_ARMADA_XP)	+=3D armada-370-xp.o
>  obj-$(CONFIG_ARCH_ARMADA_38X)	+=3D armada-370-xp.o
>  obj-$(CONFIG_ARCH_DOVE)		+=3D dove.o
>  obj-$(CONFIG_ARCH_KIRKWOOD)	+=3D kirkwood.o
> +obj-$(CONFIG_BAREBOX_UPDATE)	+=3D kwb_bbu.o
>  obj-$(CONFIG_BOOTM)		+=3D kwbootimage.o
> diff --git a/arch/arm/mach-mvebu/include/mach/bbu.h b/arch/arm/mach-mvebu=
/include/mach/bbu.h
> index f1021e52ce9f..a06db2b1442e 100644
> --- a/arch/arm/mach-mvebu/include/mach/bbu.h
> +++ b/arch/arm/mach-mvebu/include/mach/bbu.h
> @@ -1,3 +1,12 @@
> +#ifdef CONFIG_BAREBOX_UPDATE
>  int mvebu_bbu_flash_register_handler(const char *name,
>  				     char *devicefile, int version,
>  				     bool isdefault);
> +#else
> +int mvebu_bbu_flash_register_handler(const char *name,
> +                                     char *devicefile, int version,
> +                                     bool isdefault)
> +{
> +	return -ENOSYS;
> +}
> +#endif
> -- =

> 2.17.1
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
