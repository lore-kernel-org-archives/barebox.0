Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXoWi-0004Er-5z
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 07:33:48 +0000
Date: Mon, 12 Nov 2012 08:33:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112073346.GI10369@pengutronix.de>
References: <1352055092-21128-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352055092-21128-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] at91rm9200ek: enable dt support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 04, 2012 at 07:51:32PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91rm9200ek/env/config |    2 ++
>  arch/arm/configs/at91rm9200ek_defconfig |    5 +++++
>  2 files changed, 7 insertions(+)
> 

Applied, thanks

Sascha

> diff --git a/arch/arm/boards/at91rm9200ek/env/config b/arch/arm/boards/at91rm9200ek/env/config
> index a3830cb..76c180b 100644
> --- a/arch/arm/boards/at91rm9200ek/env/config
> +++ b/arch/arm/boards/at91rm9200ek/env/config
> @@ -15,6 +15,8 @@ global.dhcp.vendor_id=barebox-at91rm9200ek
>  kernel_loc=nfs
>  # can be either 'net', 'nor' or 'initrd'
>  rootfs_loc=net
> +# can be either 'nfs', 'tftp', or empty
> +oftree_loc=nfs
>  
>  # can be either 'jffs2' or 'ubifs'
>  rootfs_type=ubifs
> diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
> index 6a105c6..2bcade9 100644
> --- a/arch/arm/configs/at91rm9200ek_defconfig
> +++ b/arch/arm/configs/at91rm9200ek_defconfig
> @@ -32,9 +32,14 @@ CONFIG_CMD_FLASH=y
>  CONFIG_CMD_BOOTM_ZLIB=y
>  CONFIG_CMD_BOOTM_BZLIB=y
>  CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_BOOTM_VERBOSE=y
>  CONFIG_CMD_BOOTM_INITRD=y
> +CONFIG_CMD_BOOTM_OFTREE=y
> +CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
> +# CONFIG_CMD_BOOTU is not set
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_GO=y
> +CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_TIMEOUT=y
>  CONFIG_CMD_PARTITION=y
>  CONFIG_CMD_GPIO=y
> -- 
> 1.7.10.4
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
