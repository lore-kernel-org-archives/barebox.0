Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcHLN-00065a-3G
 for barebox@lists.infradead.org; Sun, 18 Dec 2011 14:04:02 +0000
Received: from [192.168.0.10] (unknown [82.228.86.110])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 5AD4FD481FA
 for <barebox@lists.infradead.org>; Sun, 18 Dec 2011 15:03:49 +0100 (CET)
Message-ID: <4EEDF2C4.501@eukrea.com>
Date: Sun, 18 Dec 2011 15:03:48 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
 <1324133529-2036-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1324133529-2036-2-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/9] ARM i.MX5: prepare to add a imx51_lowlevel_init
To: barebox@lists.infradead.org

Hi Sascha,

Le 17/12/2011 15:52, Sascha Hauer a =E9crit :
> - move code which can be shared between i.MX53 and i.MX51
>    to a common file
> - rename mx53_init_lowlevel to imx53_init_lowlevel
>
> Signed-off-by: Sascha Hauer<s.hauer@pengutronix.de>
> ---
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index 0b3b781..a9aa9e2 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -5,8 +5,8 @@ obj-$(CONFIG_ARCH_IMX21) +=3D speed-imx21.o imx21.o iomux=
-v1.o
>   obj-$(CONFIG_ARCH_IMX27) +=3D speed-imx27.o imx27.o iomux-v1.o
>   obj-$(CONFIG_ARCH_IMX31) +=3D speed-imx31.o imx31.o iomux-v2.o
>   obj-$(CONFIG_ARCH_IMX35) +=3D speed-imx35.o imx35.o iomux-v3.o
> -obj-$(CONFIG_ARCH_IMX51) +=3D speed-imx51.o imx51.o iomux-v3.o
> -obj-$(CONFIG_ARCH_IMX53) +=3D speed-imx53.o imx53.o iomux-v3.o
> +obj-$(CONFIG_ARCH_IMX51) +=3D speed-imx51.o imx51.o iomux-v3.o imx5.o
> +obj-$(CONFIG_ARCH_IMX53) +=3D speed-imx53.o imx53.o iomux-v3.o imx5.o
>   obj-$(CONFIG_IMX_CLKO)	+=3D clko.o
>   obj-$(CONFIG_IMX_IIM)	+=3D iim.o
>   obj-$(CONFIG_NAND_IMX) +=3D nand.o

imx5.c is missing leading to :

make[1]: *** No rule to make target `arch/arm/mach-imx/imx5.o', needed by =

`arch/arm/mach-imx/built-in.o'.  Stop.
make: *** [arch/arm/mach-imx] Error 2

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
