Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOJCP-0002zw-Aq
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 11:26:05 +0000
Message-ID: <1b203cf29de7969001d0ea9db8dd5b8dcc3e4759.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 02 Oct 2020 13:26:03 +0200
In-Reply-To: <20201002105635.4662-3-m.felsch@pengutronix.de>
References: <20201002105635.4662-1-m.felsch@pengutronix.de>
 <20201002105635.4662-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] ARCH: i.MX6: add support for OFDEVICE
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org

On Fr, 2020-10-02 at 12:56 +0200, Marco Felsch wrote:
> The imx23_defconfig, imx_v8_defconfig and imx_defconfig already
> selecting this config except for the imx_v7_defconfig. The
> imx_v7_defconfig selects MACH_ZII_VF610_DEV which selects ARCH_VF610
> which select OFDEVICE. So it will be never selected if the
> MACH_ZII_VF610_DEV board support is dropped.
> 
> Selecting the option here seems to be the better place instead of
> adding
> it to the imx_v7_defconfig because there are possible no i.MX6 boards
> not
> using the device tree.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index a1127e3707..a4b0f99e96 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -146,7 +146,7 @@ config ARCH_IMX6
>  	select ARCH_HAS_IMX_GPT
>  	select CPU_V7
>  	select PINCTRL_IMX_IOMUX_V3
> -	select OFTREE
> +	select OFDEVICE

Kconfig selects are not recursive, so you still need to keep the OFTREE
select here, otherwise you might end up with a broken dependency for
OFDEVICE.

Regards,
Lucas

>  	select COMMON_CLK_OF_PROVIDER
>  	select HW_HAS_PCI
>  


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
