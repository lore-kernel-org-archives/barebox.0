Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U9alW-0000A0-JQ
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 12:33:15 +0000
Received: from mail605.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 161081018712
 for <barebox@lists.infradead.org>; Sun, 24 Feb 2013 13:49:07 +0100 (CET)
Date: Sun, 24 Feb 2013 13:32:12 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130224123212.GA10258@game.jcrosoft.org>
References: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
 <1361697839-14310-7-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361697839-14310-7-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 7/7] ARM: pcm038: Update defconfig
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 13:23 Sun 24 Feb     , Alexander Shiyan wrote:
more info here

what you enable or disable at least
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/configs/pcm038_defconfig | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
> index e2f5388..aaaaf15 100644
> --- a/arch/arm/configs/pcm038_defconfig
> +++ b/arch/arm/configs/pcm038_defconfig
> @@ -5,6 +5,7 @@ CONFIG_MACH_PCM038=y
>  CONFIG_AEABI=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  CONFIG_ARM_UNWIND=y
> +CONFIG_PBL_IMAGE=y
>  CONFIG_MMU=y
>  CONFIG_TEXT_BASE=0xa7f00000
>  CONFIG_MALLOC_SIZE=0x1000000
> @@ -48,6 +49,9 @@ CONFIG_CMD_MAGICVAR=y
>  CONFIG_CMD_MAGICVAR_HELP=y
>  CONFIG_CMD_GPIO=y
>  CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_SPI=y
> +CONFIG_CMD_MIITOOL=y
> +CONFIG_CMD_CLK=y
>  CONFIG_NET=y
>  CONFIG_NET_DHCP=y
>  CONFIG_NET_PING=y
> @@ -56,6 +60,8 @@ CONFIG_NET_RESOLV=y
>  CONFIG_DRIVER_NET_FEC_IMX=y
>  CONFIG_NET_USB=y
>  CONFIG_NET_USB_ASIX=y
> +CONFIG_I2C=y
> +CONFIG_I2C_IMX=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
>  CONFIG_MTD=y
> @@ -73,5 +79,4 @@ CONFIG_DRIVER_VIDEO_IMX=y
>  CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
>  CONFIG_FS_TFTP=y
>  CONFIG_FS_NFS=y
> -CONFIG_ZLIB=y
>  CONFIG_LZO_DECOMPRESS=y
> -- 
> 1.7.12.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
