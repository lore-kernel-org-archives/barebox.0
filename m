Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rq6iu-00029o-7J
 for barebox@lists.infradead.org; Wed, 25 Jan 2012 17:33:29 +0000
Date: Wed, 25 Jan 2012 18:33:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120125173315.GZ5446@pengutronix.de>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
 <1327408443-3519-2-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1327408443-3519-2-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 1/9] Preparation stage to support multiple PPC
 architectures.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 24, 2012 at 12:33:55PM +0000, Renaud Barbier wrote:
> Rework arch/ppc/Kconfig to select processor types.
> Move MPC5200 configuration to architecture sub-directory.
> pcm030 configuration file is updated to reflect changes.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/Kconfig                  |   48 +++++++++---------------------------
>  arch/ppc/configs/pcm030_defconfig |    3 ++
>  arch/ppc/mach-mpc5xxx/Kconfig     |   46 +++++++++++++++++++++++++++++++++++
>  3 files changed, 61 insertions(+), 36 deletions(-)
> 
> diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
> index 4c7b7cd..ea38af6 100644
> --- a/arch/ppc/Kconfig
> +++ b/arch/ppc/Kconfig
> @@ -1,53 +1,29 @@
> -
> -config BOARDINFO
> -	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
> -	
> -config ARCH_TEXT_BASE
> -	hex
> -	default 0x00000000 if RELOCATABLE
> -	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
> -
> +#
> +#
> +#
>  config PPC
>  	bool
>  	select HAVE_CONFIGURABLE_TEXT_BASE
>  	select HAS_KALLSYMS
>  	select HAS_MODULES
>  	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
> -	select HAVE_CONFIGURABLE_TEXT_BASE
>  	default y
>  
> -# Uh, we should decide which one we want to use
> -config ARCH_MPC5200
> -	bool
> -
> -config MPC5200
> -	bool
> -
> -config MPC5xxx
> -	bool
> +menu "Architecture Type"
>  
> -config CACHELINE_SIZE
> -	int
> -	default 32 if ARCH_MPC5200

We should hardcode this. It is only used in a mpc5200 specific file.

> +choice
> +	prompt "PPC Architecture type"
>  
> -config HAS_REGINFO
> -	bool
> -	default y if ARCH_MPC5200
> +config ARCH_MPC8XXX
> +	bool "Freescale MPC85xx"
>  
> -choice
> -	prompt "Select your board"
> +config ARCH_MPC5XXX
> +	bool "Freescale MPC5xxx"
>  
> -config MACH_PHYCORE_MPC5200B_TINY
> -	bool "Phycore mpc5200b tiny"
> -	select ARCH_MPC5200
> -	select MPC5200
> -	select MPC5xxx
> -	select HAS_CFI
> -	help
> -	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
> -	  board aka pcm030
>  endchoice
>  
> +endmenu
> +
>  source arch/ppc/mach-mpc5xxx/Kconfig
>  source common/Kconfig
>  source commands/Kconfig
> diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
> index 5de1c75..c037502 100644
> --- a/arch/ppc/configs/pcm030_defconfig
> +++ b/arch/ppc/configs/pcm030_defconfig
> @@ -32,6 +32,9 @@ CONFIG_NET=y
>  CONFIG_NET_DHCP=y
>  CONFIG_NET_PING=y
>  CONFIG_NET_TFTP=y
> +CONFIG_ARCH_MPC5XXX=y
> +CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
> +CONFIG_DRIVER_NET_MPC5200=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
>  CONFIG_ZLIB=y
> diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
> index 632fb85..1473211 100644
> --- a/arch/ppc/mach-mpc5xxx/Kconfig
> +++ b/arch/ppc/mach-mpc5xxx/Kconfig
> @@ -1,3 +1,47 @@
> +if ARCH_MPC5XXX
> +
> +config BOARDINFO
> +	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x00000000 if RELOCATABLE
> +	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
> +
> +config HAS_REGINFO
> +	bool
> +	default y if ARCH_MPC5200
> +
> +config CACHELINE_SIZE
> +	int
> +	default 32 if ARCH_MPC5200
> +
> +choice
> +	prompt "Select your board"
> +
> +config MACH_PHYCORE_MPC5200B_TINY
> +	bool "Phycore mpc5200b tiny"
> +	select HAS_CFI
> +	help
> +	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
> +	  board aka pcm030
> +endchoice
> +
> +config MPC5200
> +	bool
> +	depends on MACH_PHYCORE_MPC5200B_TINY
> +    default y

Your editor seems to have problems with whitespaces. Please run
checkpatch.pl to catch this and other occurences.

> +
> +config ARCH_MPC5200
> +	bool
> +	depends on MACH_PHYCORE_MPC5200B_TINY
> +    default y
> +
> +config MPC5xxx
> +	bool
> +	depends on MACH_PHYCORE_MPC5200B_TINY
> +    default y
> +
>  menu "Board specific settings       "
>  
>  config MACH_PHYCORE_MPC5200B_TINY_REV
> @@ -10,3 +54,5 @@ config MACH_PHYCORE_MPC5200B_TINY_REV
>  	  old board you should set this option to 1
>  
>  endmenu
> +
> +endif
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
