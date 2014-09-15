Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTRDs-0002LL-Pc
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 08:01:22 +0000
Received: by mail-we0-f169.google.com with SMTP id w61so3576198wes.0
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 01:00:55 -0700 (PDT)
Message-ID: <54169CA8.5030003@gmail.com>
Date: Mon, 15 Sep 2014 10:00:40 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410766873-4393-5-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] ARM: mvebu: Allow multiple SoCs
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 09/15/2014 09:41 AM, Sascha Hauer wrote:
> Now that the correct SoC specific memory fixup function is called
> we can allow to select multiple SoCs in Kconfig.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha,

thanks for the patches, I'll give them a try later. FWIW, this
patch allows to build Kirkwood together with Dove and Armada ones,
which will not work at all. Kirkwood is armv5, while the others
are armv7. There is no way you run a multiv7 barebox on kirkwood,
right?

Sebastian

> ---
>   arch/arm/mach-mvebu/Kconfig | 38 ++++++++++++--------------------------
>   1 file changed, 12 insertions(+), 26 deletions(-)
>
> diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
> index 3270f92..c5e6b59 100644
> --- a/arch/arm/mach-mvebu/Kconfig
> +++ b/arch/arm/mach-mvebu/Kconfig
> @@ -7,87 +7,73 @@ config ARCH_TEXT_BASE
>   	default 0x2000000 if ARCH_DOVE
>   	default 0x2000000 if ARCH_KIRKWOOD
>
> -choice
> -	prompt "Marvell EBU Processor"
> -
>   config ARCH_ARMADA_370
> -	bool "Armada 370"
> +	bool
>   	select CPU_V7
>   	select CLOCKSOURCE_MVEBU
>   	select PINCTRL_ARMADA_370
>
>   config ARCH_ARMADA_XP
> -	bool "Armada XP"
> +	bool
>   	select CPU_V7
>   	select CLOCKSOURCE_MVEBU
>   	select PINCTRL_ARMADA_XP
>
>   config ARCH_DOVE
> -	bool "Dove 88AP510"
> +	bool
>   	select CPU_V7
>   	select CLOCKSOURCE_ORION
>   	select PINCTRL_DOVE
>
>   config ARCH_KIRKWOOD
> -	bool "Kirkwood"
> +	bool
>   	select CPU_FEROCEON
>   	select CLOCKSOURCE_ORION
>   	select PINCTRL_KIRKWOOD
>
> -endchoice
> -
>   #
>   # Armada 370 SoC boards
>   #
> -
> -if ARCH_ARMADA_370
> -
> +#
>   config MACH_GLOBALSCALE_MIRABOX
>   	bool "Globalscale Mirabox"
> -
> -endif # ARCH_ARMADA_370
> +	select ARCH_ARMADA_370
>
>   #
>   # Armada XP SoC boards
>   #
>
> -if ARCH_ARMADA_XP
> -
>   config MACH_PLATHOME_OPENBLOCKS_AX3
>   	bool "PlatHome OpenBlocks AX3"
> +	select ARCH_ARMADA_XP
>
>   config MACH_MARVELL_ARMADA_XP_GP
>   	bool "Marvell Armada XP GP"
> -
> -endif # ARCH_ARMADA_XP
> +	select ARCH_ARMADA_XP
>
>   #
>   # Dove 88AP510 SoC boards
>   #
>
> -if ARCH_DOVE
> -
>   config MACH_SOLIDRUN_CUBOX
>   	bool "SolidRun CuBox"
> -
> -endif # ARCH_DOVE
> +	select ARCH_DOVE
>
>   #
>   # Kirkwood SoC boards
>   #
>
> -if ARCH_KIRKWOOD
> -
>   config MACH_GLOBALSCALE_GURUPLUG
>   	bool "Guruplug"
> +	select ARCH_KIRKWOOD
>
>   config MACH_PLATHOME_OPENBLOCKS_A6
>   	bool "PlatHome OpenBlocks A6"
> +	select ARCH_KIRKWOOD
>
>   config MACH_USI_TOPKICK
>   	bool "Topkick"
> -
> -endif # ARCH_KIRKWOOD
> +	select ARCH_KIRKWOOD
>
>   #
>   # Common options
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
