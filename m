Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WXPFm-0005z7-2k
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 06:11:27 +0000
Date: Tue, 8 Apr 2014 08:10:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140408061056.GT27055@pengutronix.de>
References: <1396879094-25026-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396879094-25026-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Documentation: Update binding doc for i.MX IIM
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Apr 07, 2014 at 05:58:14PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  Documentation/devicetree/bindings/misc/fsl,imx-iim.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt b/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
> index ed3efcc..9759210 100644
> --- a/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
> +++ b/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
> @@ -2,7 +2,7 @@ Freescale i.MX IIM (Ic Identification Module)
>  
>  Required properties:
>  
> -- compatible: fsl,imx-iim
> +- compatible: fsl,imx27-iim
>  - reg: physical register base and size
>  
>  Optional properties:
> @@ -14,7 +14,7 @@ Optional properties:
>  Example:
>  
>  iim: iim@83f98000 {
> -	compatible = "fsl,imx51-iim", "fsl,imx-iim";
> +	compatible = "fsl,imx51-iim", "fsl,imx27-iim";
>  	reg = <0x83f98000 0x4000>;
>  	barebox,provide-mac-address = <&fec 1 9>;
>  };
> -- 
> 1.8.3.2
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
