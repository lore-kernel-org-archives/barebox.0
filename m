Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBlmg-0003Ku-PW
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 11:06:40 +0000
Date: Thu, 6 Oct 2011 13:06:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111006110635.GW31404@pengutronix.de>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
	<1317305076-3334-7-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1317305076-3334-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC PATCH 6/6] toshiba-ac100_defconfig update: enable
	USB-related stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 29, 2011 at 06:04:36PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/configs/toshiba_ac100_defconfig |   26 ++++++++++++++++++--------
>  1 files changed, 18 insertions(+), 8 deletions(-)

Please add the defconfig as last patch without modifying it.

Sascha

> 
> diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
> index 7d4627a..48fd0b3 100644
> --- a/arch/arm/configs/toshiba_ac100_defconfig
> +++ b/arch/arm/configs/toshiba_ac100_defconfig
> @@ -14,21 +14,31 @@ CONFIG_ENABLE_DEVICE_NOISE=y
>  CONFIG_CMD_SLEEP=y
>  # CONFIG_CMD_TRUE is not set
>  # CONFIG_CMD_FALSE is not set
> -# CONFIG_CMD_RM is not set
> -# CONFIG_CMD_MKDIR is not set
> -# CONFIG_CMD_RMDIR is not set
> -# CONFIG_CMD_CP is not set
> -# CONFIG_CMD_PWD is not set
> -# CONFIG_CMD_MOUNT is not set
> -# CONFIG_CMD_UMOUNT is not set
>  # CONFIG_CMD_CLEAR is not set
>  # CONFIG_CMD_ECHO is not set
>  CONFIG_CMD_LOADB=y
>  CONFIG_CMD_LOADY=y
>  CONFIG_CMD_LOADS=y
>  CONFIG_CMD_MEMINFO=y
> -# CONFIG_CMD_BOOTM is not set
> +CONFIG_CMD_MD5SUM=y
> +CONFIG_CMD_SHA1SUM=y
> +CONFIG_CMD_BOOTM_ZLIB=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_GO=y
> +CONFIG_NET=y
> +CONFIG_NET_DHCP=y
> +CONFIG_NET_PING=y
> +CONFIG_NET_TFTP=y
> +CONFIG_NET_TFTP_PUSH=y
> +CONFIG_NET_NETCONSOLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> +CONFIG_NET_USB=y
> +CONFIG_NET_USB_ASIX=y
>  # CONFIG_SPI is not set
> +CONFIG_ATA=y
> +CONFIG_ATA_DISK=y
> +CONFIG_USB=y
> +CONFIG_USB_EHCI=y
> +CONFIG_USB_STORAGE=y
> +CONFIG_FS_FAT=y
> -- 
> 1.7.6.3
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
