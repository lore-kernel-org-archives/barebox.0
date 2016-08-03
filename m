Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bUoo0-0004AC-Fj
 for barebox@lists.infradead.org; Wed, 03 Aug 2016 05:33:25 +0000
Date: Wed, 3 Aug 2016 07:33:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160803053302.GG20657@pengutronix.de>
References: <1469816276-27908-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1469816276-27908-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: pcm043: add a flash-header.imxcfg
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 29, 2016 at 08:17:56PM +0200, Uwe Kleine-K=F6nig wrote:
> This creates an image that can be booted via USB.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/Makefile                                  |  1 +
>  .../phytec-phycore-imx35/flash-header.imxcfg       | 37 ++++++++++++++++=
++++++
>  2 files changed, 38 insertions(+)
>  create mode 100644 arch/arm/boards/phytec-phycore-imx35/flash-header.imx=
cfg

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 9fc3cd3debaa..768c50379ffd 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -252,6 +252,7 @@ imxcfg-$(CONFIG_MACH_FREESCALE_MX35_3STACK) +=3D $(bo=
arddir)/freescale-mx35-3ds/fl
>  imxcfg-$(CONFIG_MACH_TQMA53) +=3D $(boarddir)/tqma53/flash-header.imxcfg
>  imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) +=3D $(boarddir)/eukrea_cpuimx25/f=
lash-header.imxcfg
>  imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) +=3D $(boarddir)/eukrea_cpuimx35/f=
lash-header.imxcfg
> +imxcfg-$(CONFIG_MACH_PCM043) +=3D $(boarddir)/phytec-phycore-imx35/flash=
-header.imxcfg
>  imxcfg-$(CONFIG_MACH_KINDLE3) +=3D $(boarddir)/kindle3/flash-header.imxc=
fg
>  imxcfg-$(CONFIG_TX53_REV_1011) +=3D $(boarddir)/karo-tx53/flash-header-t=
x53-rev1011.imxcfg
>  imxcfg-$(CONFIG_TX53_REV_XX30) +=3D $(boarddir)/karo-tx53/flash-header-t=
x53-revxx30.imxcfg
> diff --git a/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg b/a=
rch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
> new file mode 100644
> index 000000000000..36b68cd7ee2d
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
> @@ -0,0 +1,37 @@
> +soc imx35
> +dcdofs 0x400
> +loadaddr 0x80000000
> +wm 32 0x53f80004 0x00821000
> +wm 32 0x53f80004 0x00821000
> +
> +wm 32 0x43fac794 0x00000800
> +wm 32 0x43fac798 0x00000800
> +wm 32 0x43fac79c 0x00000800
> +wm 32 0x43fac7a0 0x00000800
> +wm 32 0x43fac7a4 0x00000800
> +
> +wm 32 0xb8001010 0x00000304
> +wm 32 0xb8001004 0x0025541f
> +wm 32 0xb8001000 0x92220000
> +wm 32 0x80000400 0x12345678
> +
> +wm 32 0xb8001000 0xb8001000
> +wm 8  0x84000000 0xda
> +wm 8  0x86000000 0xda
> +wm 8  0x82000400 0xda
> +wm 8  0x80000333 0xda
> +
> +wm 32 0xb8001000 0x92220000
> +wm 32 0x80000400 0x12345678
> +
> +wm 32 0xb8001000 0xa2220000
> +wm 32 0x80000000 0x12344321
> +wm 32 0x80000000 0x12344321
> +wm 32 0xb8001000 0xb2220000
> +wm 8  0x80000233 0xda
> +wm 8  0x82000780 0xda
> +wm 8  0x82000400 0xda
> +wm 32 0xb8001000 0x82220080
> +wm 32 0xb8001000 0x82228080
> +wm 32 0xb8001008 0x00002000
> +
> -- =

> 2.8.1
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
