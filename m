Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2BER-0004Mn-Vm
 for barebox@lists.infradead.org; Thu, 03 Nov 2016 06:10:37 +0000
Date: Thu, 3 Nov 2016 07:10:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161103061014.hilq5nldzc3r7qme@pengutronix.de>
References: <1477948819-13931-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1477948819-13931-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: riotboard: fix barebox partition size
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 31, 2016 at 10:20:19PM +0100, Lucas Stach wrote:
> This was missed when updating all the partition sizes. The
> environment partition has been moved to the correct location,
> but the barebox partition size remained unchanged.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/dts/imx6s-riotboard.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
> index 7193f28..5758872 100644
> --- a/arch/arm/dts/imx6s-riotboard.dts
> +++ b/arch/arm/dts/imx6s-riotboard.dts
> @@ -29,7 +29,7 @@
>  
>  	partition@0 {
>  		label = "barebox";
> -		reg = <0x0 0x80000>;
> +		reg = <0x0 0xe0000>;
>  	};
>  
>  	environment_usdhc4: partition@e0000 {
> -- 
> 2.7.4
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
