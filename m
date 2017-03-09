Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cls68-0002ru-5u
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 07:02:54 +0000
Date: Thu, 9 Mar 2017 08:02:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170309070228.3l63difxib6uo3pf@pengutronix.de>
References: <20170307095632.13605-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170307095632.13605-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx233-olinuxino: add CONFIG_CONSOLE_ACTIVATE_ALL
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 07, 2017 at 10:56:32AM +0100, Oleksij Rempel wrote:
> if not set, barebox will use first console by default.
> On this board first console is KEYBOARD_GPIO, so we will end
> in unusable state.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/configs/imx233-olinuxino_defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233-olinuxino_defconfig
> index 991386b30..47d485b4e 100644
> --- a/arch/arm/configs/imx233-olinuxino_defconfig
> +++ b/arch/arm/configs/imx233-olinuxino_defconfig
> @@ -20,6 +20,7 @@ CONFIG_BOOTM_INITRD=y
>  CONFIG_BOOTM_OFTREE=y
>  CONFIG_BOOTM_OFTREE_UIMAGE=y
>  CONFIG_BLSPEC=y
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_DEFAULT_COMPRESSION_LZO=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
>  CONFIG_RESET_SOURCE=y
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
