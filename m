Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f176.google.com ([209.85.217.176])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNqwo-0006Qj-37
 for barebox@lists.infradead.org; Thu, 04 Apr 2013 20:39:50 +0000
Received: by mail-lb0-f176.google.com with SMTP id y8so3144030lbh.35
 for <barebox@lists.infradead.org>; Thu, 04 Apr 2013 13:39:47 -0700 (PDT)
Date: Fri, 5 Apr 2013 00:39:19 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130405003919.f8f49fab40da401164d710ce@gmail.com>
In-Reply-To: <1364883552-6563-4-git-send-email-dev@lynxeye.de>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
 <1364883552-6563-4-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH v3 03/10] tegra: switch to DT only
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue,  2 Apr 2013 08:19:05 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> We will follow the Linux kernel and go devicetree only for Tegra. This
> doesn't prevent specific code for certain boards, but always requires a
> valid DTB for all boards.
> 
> Also regenerate the AC100 defconfig to reflect this change.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/Kconfig                         |  2 ++
>  arch/arm/configs/toshiba_ac100_defconfig |  9 ++++++---
>  arch/arm/dts/tegra20-paz00.dts           | 12 ++++++++++++
>  arch/arm/dts/tegra20.dtsi                |  5 +++++
>  4 files changed, 25 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/dts/tegra20-paz00.dts
>  create mode 100644 arch/arm/dts/tegra20.dtsi
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 7d42826..8f37d12 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -139,6 +139,8 @@ config ARCH_TEGRA
>  	bool "Nvidia Tegra"
>  	select CPU_V7
>  	select HAS_DEBUG_LL
> +	select BUILTIN_DTB
> +	select OFTREE
>  
>  config ARCH_ZYNQ
>  	bool "Xilinx Zynq-based boards"
> diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
> index 065189d..b44fd26 100644
> --- a/arch/arm/configs/toshiba_ac100_defconfig
> +++ b/arch/arm/configs/toshiba_ac100_defconfig
> @@ -1,4 +1,5 @@
> -CONFIG_ARCH_TEGRA=y

Why?

We will get this after 'make toshiba_ac100_defconfig':

CONFIG_ARCH_AT91=y
...
# CONFIG_ARCH_TEGRA is not set

> +CONFIG_BUILTIN_DTB=y
> +CONFIG_BUILTIN_DTB_NAME="tegra20-paz00"
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  CONFIG_TEXT_BASE=0x01000000
>  CONFIG_BROKEN=y
> @@ -14,6 +15,7 @@ CONFIG_ENABLE_DEVICE_NOISE=y
>  CONFIG_CMD_SLEEP=y
>  # CONFIG_CMD_TRUE is not set
>  # CONFIG_CMD_FALSE is not set
> +CONFIG_CMD_TFTP=y
>  CONFIG_CMD_LOADB=y
>  CONFIG_CMD_LOADY=y
>  CONFIG_CMD_LOADS=y
> @@ -23,12 +25,12 @@ CONFIG_CMD_SHA1SUM=y
>  CONFIG_CMD_BOOTM_SHOW_TYPE=y
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_GO=y
> +CONFIG_CMD_OFTREE=y
>  CONFIG_NET=y
>  CONFIG_NET_DHCP=y
>  CONFIG_NET_PING=y
> -CONFIG_CMD_TFTP=y
> -CONFIG_FS_TFTP=y
>  CONFIG_NET_NETCONSOLE=y
> +CONFIG_OFDEVICE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_NET_USB=y
>  CONFIG_NET_USB_ASIX=y
> @@ -36,4 +38,5 @@ CONFIG_NET_USB_ASIX=y
>  CONFIG_USB=y
>  CONFIG_USB_EHCI=y
>  CONFIG_USB_STORAGE=y
> +CONFIG_FS_TFTP=y
>  CONFIG_FS_FAT=y
> diff --git a/arch/arm/dts/tegra20-paz00.dts b/arch/arm/dts/tegra20-paz00.dts
> new file mode 100644
> index 0000000..09ccb8b
> --- /dev/null
> +++ b/arch/arm/dts/tegra20-paz00.dts
> @@ -0,0 +1,12 @@
> +/dts-v1/;
> +
> +/include/ "tegra20.dtsi"
> +
> +/ {
> +	model = "Toshiba AC100 / Dynabook AZ";
> +	compatible = "compal,paz00", "nvidia,tegra20";
> +
> +	memory {
> +		reg = <0x00000000 0x20000000>;
> +	};
> +};
> diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
> new file mode 100644
> index 0000000..9f8860b
> --- /dev/null
> +++ b/arch/arm/dts/tegra20.dtsi
> @@ -0,0 +1,5 @@
> +/include/ "skeleton.dtsi"
> +
> +/ {
> +	compatible = "nvidia,tegra20";
> +};
> -- 
> 1.8.1.4
> 


-- 
antonynpavlov@gmail.com <antonynpavlov@gmail.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
