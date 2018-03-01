Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erK8M-0007yU-Ml
 for barebox@lists.infradead.org; Thu, 01 Mar 2018 09:04:16 +0000
Date: Thu, 1 Mar 2018 10:04:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180301090402.rqoyjdlgoxkrzi2d@pengutronix.de>
References: <20180228172206.12823-1-linux@rempel-privat.de>
 <20180228172206.12823-2-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180228172206.12823-2-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 2/2] MIPS: dts: enable heartbeat led for
 ar9331-dptechnics-dpt-module
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 28, 2018 at 06:22:06PM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks

Sascha

> diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> index 39eb36600..2c38bbc09 100644
> --- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> +++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> @@ -12,6 +12,12 @@
>  			device-path = &spiflash, "partname:barebox-environment";
>  		};
>  	};
> +
> +	leds {
> +		system {
> +			barebox,default-trigger = "heartbeat";
> +		};
> +	};
>  };
>  
>  &spiflash {
> -- 
> 2.14.1
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
