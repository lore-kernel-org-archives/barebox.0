Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAF0j-00011D-0e
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 08:36:09 +0000
Date: Mon, 3 Feb 2014 09:35:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140203083547.GH16215@pengutronix.de>
References: <1391373169-7304-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391373169-7304-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 1/2] sandbox: update defconfig to use new environment
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Feb 02, 2014 at 09:32:48PM +0100, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/sandbox/configs/sandbox_defconfig | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
> index 2ee7f782ede8..2ef8fa41ec51 100644
> --- a/arch/sandbox/configs/sandbox_defconfig
> +++ b/arch/sandbox/configs/sandbox_defconfig
> @@ -1,18 +1,20 @@
> -CONFIG_GLOB=y
> +CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_PARTITION=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
>  CONFIG_DEBUG_INFO=y
>  CONFIG_CMD_EDIT=y
>  CONFIG_CMD_SLEEP=y
>  CONFIG_CMD_SAVEENV=y
> -CONFIG_CMD_LOADENV=y
>  CONFIG_CMD_EXPORT=y
>  CONFIG_CMD_PRINTENV=y
>  CONFIG_CMD_READLINE=y
> +CONFIG_CMD_TFTP=y
>  CONFIG_CMD_MEMINFO=y
>  CONFIG_CMD_CRC=y
> +CONFIG_CMD_FLASH=y
>  # CONFIG_CMD_BOOTM is not set
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_GO=y
> @@ -21,8 +23,7 @@ CONFIG_CMD_PARTITION=y
>  CONFIG_NET=y
>  CONFIG_NET_DHCP=y
>  CONFIG_NET_PING=y
> -CONFIG_CMD_TFTP=y
> -CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_NET_TAP=y
>  # CONFIG_SPI is not set
>  CONFIG_FS_CRAMFS=y
> +CONFIG_FS_TFTP=y
> -- 
> 1.8.5.3
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
