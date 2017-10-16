Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e3zsl-0002ih-NU
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 07:32:18 +0000
Date: Mon, 16 Oct 2017 09:31:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016073154.fyndisz5pg6ahxpo@pengutronix.de>
References: <20171012102658.17104-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171012102658.17104-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2 01/12] ARM: vexpress: always build relocatable image
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 12, 2017 at 12:26:47PM +0200, Lucas Stach wrote:
> This allows to make more space available for the malloc area and
> allows us to drop the special CA9 defconfig, which had a different
> text base.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/configs/vexpress_ca9_defconfig | 52 ---------------------------------
>  arch/arm/configs/vexpress_defconfig     |  1 +
>  arch/arm/mach-vexpress/Kconfig          |  3 +-
>  3 files changed, 3 insertions(+), 53 deletions(-)
>  delete mode 100644 arch/arm/configs/vexpress_ca9_defconfig

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
> deleted file mode 100644
> index a1c42512d205..000000000000
> --- a/arch/arm/configs/vexpress_ca9_defconfig
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -CONFIG_ARCH_VEXPRESS=y
> -CONFIG_AEABI=y
> -CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> -CONFIG_TEXT_BASE=0x63f00000
> -CONFIG_MALLOC_TLSF=y
> -CONFIG_PROMPT="vexpress: "
> -CONFIG_GLOB=y
> -CONFIG_HUSH_FANCY_PROMPT=y
> -CONFIG_CMDLINE_EDITING=y
> -CONFIG_AUTO_COMPLETE=y
> -CONFIG_MENU=y
> -CONFIG_BOOTM_SHOW_TYPE=y
> -CONFIG_BOOTM_VERBOSE=y
> -CONFIG_BOOTM_INITRD=y
> -CONFIG_PARTITION=y
> -CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
> -CONFIG_LONGHELP=y
> -CONFIG_CMD_MEMINFO=y
> -# CONFIG_CMD_BOOTU is not set
> -CONFIG_CMD_GO=y
> -CONFIG_CMD_LOADB=y
> -CONFIG_CMD_RESET=y
> -CONFIG_CMD_UIMAGE=y
> -CONFIG_CMD_PARTITION=y
> -CONFIG_CMD_EXPORT=y
> -CONFIG_CMD_PRINTENV=y
> -CONFIG_CMD_SAVEENV=y
> -CONFIG_CMD_UNCOMPRESS=y
> -CONFIG_CMD_SLEEP=y
> -CONFIG_CMD_DHCP=y
> -CONFIG_CMD_PING=y
> -CONFIG_CMD_TFTP=y
> -CONFIG_CMD_ECHO_E=y
> -CONFIG_CMD_EDIT=y
> -CONFIG_CMD_LOGIN=y
> -CONFIG_CMD_MENU=y
> -CONFIG_CMD_MENU_MANAGEMENT=y
> -CONFIG_CMD_PASSWD=y
> -CONFIG_CMD_READLINE=y
> -CONFIG_CMD_TIMEOUT=y
> -CONFIG_CMD_CLK=y
> -CONFIG_CMD_OFTREE=y
> -CONFIG_NET=y
> -CONFIG_NET_NFS=y
> -CONFIG_NET_NETCONSOLE=y
> -CONFIG_NET_RESOLV=y
> -CONFIG_SERIAL_AMBA_PL011=y
> -CONFIG_DRIVER_NET_SMC91111=y
> -# CONFIG_SPI is not set
> -CONFIG_FS_TFTP=y
> -CONFIG_DIGEST_SHA1_GENERIC=y
> -CONFIG_DIGEST_SHA256_GENERIC=y
> diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
> index 94fe1eaa72b1..e31da4a8c668 100644
> --- a/arch/arm/configs/vexpress_defconfig
> +++ b/arch/arm/configs/vexpress_defconfig
> @@ -1,6 +1,7 @@
>  CONFIG_ARCH_VEXPRESS=y
>  CONFIG_AEABI=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_MALLOC_SIZE=0x0
>  CONFIG_MALLOC_TLSF=y
>  CONFIG_PROMPT="vexpress: "
>  CONFIG_GLOB=y
> diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
> index bf1dd5a79150..1d5e293602f6 100644
> --- a/arch/arm/mach-vexpress/Kconfig
> +++ b/arch/arm/mach-vexpress/Kconfig
> @@ -2,13 +2,14 @@ if ARCH_VEXPRESS
>  
>  config ARCH_TEXT_BASE
>  	hex
> -	default 0x83f00000
> +	default 0x0
>  
>  choice
>  	prompt "ARM Board type"
>  
>  config MACH_VEXPRESS
>  	bool "ARM Vexpress"
> +	select RELOCATABLE
>  
>  endchoice
>  
> -- 
> 2.11.0
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
