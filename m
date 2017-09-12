Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dreZU-0005S8-4I
 for barebox@lists.infradead.org; Tue, 12 Sep 2017 06:21:22 +0000
Date: Tue, 12 Sep 2017 08:20:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170912062058.zwrs42is6w4b7afm@pengutronix.de>
References: <20170827070230.13382-1-linux@rempel-privat.de>
 <20170827070230.13382-9-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170827070230.13382-9-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 08/10] rename tplink devicetree
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 27, 2017 at 09:02:28AM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/configs/tplink-wdr4300_defconfig                          | 2 +-
>  arch/mips/dts/{ar9344_tl_wdr4300.dts => ar9344-tl-wdr4300-v1.7.dts} | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>  rename arch/mips/dts/{ar9344_tl_wdr4300.dts => ar9344-tl-wdr4300-v1.7.dts} (91%)

Why do you rename it? The answer should be in the commit message.

Sascha

> 
> diff --git a/arch/mips/configs/tplink-wdr4300_defconfig b/arch/mips/configs/tplink-wdr4300_defconfig
> index 63189b754..b5be221f6 100644
> --- a/arch/mips/configs/tplink-wdr4300_defconfig
> +++ b/arch/mips/configs/tplink-wdr4300_defconfig
> @@ -1,5 +1,5 @@
>  CONFIG_BUILTIN_DTB=y
> -CONFIG_BUILTIN_DTB_NAME="ar9344_tl_wdr4300"
> +CONFIG_BUILTIN_DTB_NAME="ar9344-tl-wdr4300-v1.7"
>  CONFIG_MACH_MIPS_ATH79=y
>  CONFIG_BOARD_TPLINK_WDR4300=y
>  CONFIG_PBL_IMAGE=y
> diff --git a/arch/mips/dts/ar9344_tl_wdr4300.dts b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
> similarity index 91%
> rename from arch/mips/dts/ar9344_tl_wdr4300.dts
> rename to arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
> index 139717a6b..d16cab005 100644
> --- a/arch/mips/dts/ar9344_tl_wdr4300.dts
> +++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
> @@ -6,8 +6,8 @@
>  #include "ar9344.dtsi"
>  
>  / {
> -	model = "TP-Link WDR4300";
> -	compatible = "tplink,tl-wdr4300";
> +	model = "TP-Link WDR4300 v1.7";
> +	compatible = "tplink,tl-wdr4300", "tplink,tl-wdr4300-v1.7";
>  
>  	aliases {
>  		serial0 = &uart0;
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
