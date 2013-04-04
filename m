Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f178.google.com ([209.85.217.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNr0f-0006WG-IW
 for barebox@lists.infradead.org; Thu, 04 Apr 2013 20:43:50 +0000
Received: by mail-lb0-f178.google.com with SMTP id q13so3083362lbi.23
 for <barebox@lists.infradead.org>; Thu, 04 Apr 2013 13:43:47 -0700 (PDT)
Date: Fri, 5 Apr 2013 00:43:19 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130405004319.062bb68dbe0cee7b1e25c703@gmail.com>
In-Reply-To: <1364883552-6563-3-git-send-email-dev@lynxeye.de>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
 <1364883552-6563-3-git-send-email-dev@lynxeye.de>
Mime-Version: 1.0
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

On Tue,  2 Apr 2013 08:19:04 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> Tegra is not a single arch type, but a collection of different
> generations. Define TEGAR20 arch type to differentiate between the
> generations. Switch to ARMv7 cpu type for all Tegras.
> 
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

Trailing whitespace here.

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


-- 
antonynpavlov@gmail.com <antonynpavlov@gmail.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
