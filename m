Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbA9V-0003cV-AD
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 11:06:38 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 7 Jan 2011 12:05:13 +0100
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
	<1294397044-5008-25-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-25-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201101071205.13285.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 24/24] i.MX nand: do not select NAND_IMX_BOOT
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> NAND_IMX_BOOT is related to the external boot mode, so do not
> select it when using internal boot mode.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
>
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index f3506af..c9f55b5 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -56,7 +56,6 @@ choice
>
>  config ARCH_IMX_INTERNAL_BOOT_NAND
>  	bool "NAND, SD/MMC, Serial ROM"
> -	select NAND_IMX_BOOT
>
>  config ARCH_IMX_INTERNAL_BOOT_NOR
>  	bool "NOR"

Seems not related to the 'printf' topic?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
