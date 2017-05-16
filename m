Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAVAI-0001jX-Ax
 for barebox@lists.infradead.org; Tue, 16 May 2017 05:37:00 +0000
Date: Tue, 16 May 2017 07:36:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170516053635.agrat3ir57xonjes@pengutronix.de>
References: <1494797186-3338-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1494797186-3338-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX50: Amazon Kindle: Model EY21 compatibility
 check
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, May 14, 2017 at 11:26:25PM +0200, Alexander Kurz wrote:
> Extend the compatibility check for i.MX50 based kindles also on model EY21.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/boards/kindle-mx50/board.c | 3 ++-
>  arch/arm/dts/imx50-kindle-ey21.dts  | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
> index 7bd4f91..089dd8e 100644
> --- a/arch/arm/boards/kindle-mx50/board.c
> +++ b/arch/arm/boards/kindle-mx50/board.c
> @@ -123,7 +123,8 @@ static void kindle_rev_init(void)
>  static int is_mx50_kindle(void)
>  {
>  	return of_machine_is_compatible("amazon,kindle-d01100") ||
> -		of_machine_is_compatible("amazon,kindle-d01200");
> +		of_machine_is_compatible("amazon,kindle-d01200") ||
> +		of_machine_is_compatible("amazon,kindle-ey21");
>  }
>  
>  static int kindle_mx50_late_init(void)
> diff --git a/arch/arm/dts/imx50-kindle-ey21.dts b/arch/arm/dts/imx50-kindle-ey21.dts
> index 1b8f2ad..0be7001 100644
> --- a/arch/arm/dts/imx50-kindle-ey21.dts
> +++ b/arch/arm/dts/imx50-kindle-ey21.dts
> @@ -17,7 +17,7 @@
>  
>  / {
>  	model = "Amazon Kindle EY21";
> -	compatible = "fsl,imx50";
> +	compatible = "amazon,kindle-ey21", "fsl,imx50";
>  
>  	memory {
>  		device_type = "memory";
> -- 
> 2.1.4
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
