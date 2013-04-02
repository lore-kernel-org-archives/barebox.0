Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UN0xc-00040S-PO
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 13:09:13 +0000
Received: by mail-da0-f43.google.com with SMTP id u36so186780dak.2
 for <barebox@lists.infradead.org>; Tue, 02 Apr 2013 06:09:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1364883552-6563-3-git-send-email-dev@lynxeye.de>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
 <1364883552-6563-3-git-send-email-dev@lynxeye.de>
Date: Tue, 2 Apr 2013 17:09:10 +0400
Message-ID: <CAA4bVAEZLuoeAUZjiCM0V1Ok42g01B_0JZp6ce8LjWinG26nQg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v3 02/10] tegra: define TEGRA20 arch type
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 02/04/2013, Lucas Stach <dev@lynxeye.de> wrote:
> Tegra is not a single arch type, but a collection of different
> generations. Define TEGAR20 arch type to differentiate between the
> generations. Switch to ARMv7 cpu type for all Tegras.
>

Actually you introduce at least four __INDEPENDENT___ changes in this patch:
1. CPU_ARM926T -> CPU_V7
2. bool "Nvidia Tegra-based boards" -> bool "Nvidia Tegra" (change
comment, unifyx with linux kernel --- very good;
3. Define TEGAR20;
4. change default ARCH_TEXT_BASE.

Can you split this commit, please?

Also I propose to use ARCH_TEGRA_2x_SOC (like in Linux kernel) instead
of MACH_TEGRA20.

> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/Kconfig            |  4 ++--
>  arch/arm/mach-tegra/Kconfig | 20 ++++++++++++++++++--
>  2 files changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index bb9b47b..7d42826 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -136,8 +136,8 @@ config ARCH_VEXPRESS
>  	select COMMON_CLK
>
>  config ARCH_TEGRA
> -	bool "Nvidia Tegra-based boards"
> -	select CPU_ARM926T
> +	bool "Nvidia Tegra"
> +	select CPU_V7
>  	select HAS_DEBUG_LL
>
>  config ARCH_ZYNQ
> diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
> index eda786b..0adf4be 100644
> --- a/arch/arm/mach-tegra/Kconfig
> +++ b/arch/arm/mach-tegra/Kconfig
> @@ -1,11 +1,23 @@
>  if ARCH_TEGRA
> +	
> +choice
> +	prompt "Tegra processor type"
> +
> +config MACH_TEGRA20
> +	bool "Tegra 20"
> +
> +endchoice
> +
> +# ---------------------------------------------------------
> +
> +if MACH_TEGRA20
>
>  config ARCH_TEXT_BASE
>  	hex
> -	default 0x31fc0000
> +	default 0x00108000
>
>  choice
> -	prompt "Tegra Board Type"
> +	prompt "Tegra 20 Board Type"
>
>  config MACH_TOSHIBA_AC100
>  	bool "Toshiba AC100"
> @@ -16,4 +28,8 @@ endchoice
>
>  source arch/arm/boards/toshiba-ac100/Kconfig
>
> +endif #MACH_TEGRA20
> +
> +# ---------------------------------------------------------
> +
>  endif
> --
> 1.8.1.4
>
>


-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
