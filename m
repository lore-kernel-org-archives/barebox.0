Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uue8M-0000i6-NG
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 07:39:19 +0000
Date: Thu, 4 Jul 2013 09:38:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130704073856.GW516@pengutronix.de>
References: <1372878167-19034-1-git-send-email-philipp.zabel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372878167-19034-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX6: Fix usbmisc label in devicetree
To: Philipp Zabel <philipp.zabel@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 03, 2013 at 09:02:47PM +0200, Philipp Zabel wrote:
> Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/dts/imx6qdl.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
> index 8b5b3b7..34535a7 100644
> --- a/arch/arm/dts/imx6qdl.dtsi
> +++ b/arch/arm/dts/imx6qdl.dtsi
> @@ -645,7 +645,7 @@
>  				status = "disabled";
>  			};
>  
> -			usbmisc: usbmisc: usbmisc@02184800 {
> +			usbmisc: usbmisc@02184800 {
>  				#index-cells = <1>;
>  				compatible = "fsl,imx6q-usbmisc";
>  				reg = <0x02184800 0x200>;
> -- 
> 1.8.3.1
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
