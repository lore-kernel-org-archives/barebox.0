Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoRm8-0002pq-Ro
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 06:51:33 +0000
Date: Wed, 12 Nov 2014 07:51:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141112065111.GE30369@pengutronix.de>
References: <1415716859-19077-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415716859-19077-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 1/4] ARM: update imx_v7_defconfig
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 11, 2014 at 03:40:56PM +0100, Christian Hemp wrote:
> Enable micrel phy
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  arch/arm/configs/imx_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied all, thanks

Sascha

> 
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 2c8eb85..7076ecd 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -107,6 +107,7 @@ CONFIG_OFDEVICE=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_DRIVER_NET_FEC_IMX=y
>  CONFIG_AT803X_PHY=y
> +CONFIG_MICREL_PHY=y
>  CONFIG_NET_USB=y
>  CONFIG_NET_USB_ASIX=y
>  CONFIG_NET_USB_SMSC95XX=y
> -- 
> 1.9.1
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
