Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmHqM-0003Yc-Qg
 for barebox@lists.infradead.org; Mon, 19 May 2014 07:18:43 +0000
Date: Mon, 19 May 2014 09:18:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140519071820.GB5858@pengutronix.de>
References: <cover.1400228358.git.silvio.fricke@gmail.com>
 <2464c6d2b00867800402cef77f347af2905bcd37.1400228358.git.silvio.fricke@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2464c6d2b00867800402cef77f347af2905bcd37.1400228358.git.silvio.fricke@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: edmqmx6: disable menu framework
To: Silvio Fricke <silvio.fricke@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 16, 2014 at 11:06:49AM +0200, Silvio Fricke wrote:
> Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
> ---
>  arch/arm/configs/datamodul-edm-qmx6_defconfig | 3 ---
>  1 file changed, 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/datamodul-edm-qmx6_defconfig b/arch/arm/configs/datamodul-edm-qmx6_defconfig
> index 30e5a53..5a4d7c4 100644
> --- a/arch/arm/configs/datamodul-edm-qmx6_defconfig
> +++ b/arch/arm/configs/datamodul-edm-qmx6_defconfig
> @@ -17,7 +17,6 @@ CONFIG_LONGHELP=y
>  CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
> -CONFIG_MENU=y
>  CONFIG_CONSOLE_ACTIVATE_NONE=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/datamodul-edm-qmx6/env"
> @@ -29,8 +28,6 @@ CONFIG_CMD_SAVEENV=y
>  CONFIG_CMD_EXPORT=y
>  CONFIG_CMD_PRINTENV=y
>  CONFIG_CMD_READLINE=y
> -CONFIG_CMD_MENU=y
> -CONFIG_CMD_MENU_MANAGEMENT=y
>  CONFIG_CMD_TIME=y
>  CONFIG_CMD_LN=y
>  CONFIG_CMD_TFTP=y
> -- 
> 1.9.2
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
