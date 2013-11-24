Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vkdnv-0005yc-Uy
 for barebox@lists.infradead.org; Sun, 24 Nov 2013 17:49:09 +0000
Received: from mail626.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id EED0CFFAEEE
 for <barebox@lists.infradead.org>; Sun, 24 Nov 2013 18:51:02 +0100 (CET)
Date: Sun, 24 Nov 2013 18:51:05 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131124175105.GB29652@ns203013.ovh.net>
References: <1385236704-2309-1-git-send-email-vicencb@gmail.com>
 <1385236704-2309-2-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385236704-2309-2-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 2/2] OMAP4: fix omap4_bootsource regression
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 20:58 Sat 23 Nov     , Vicente Bergas wrote:
> ---
>  arch/arm/mach-omap/omap4_generic.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index 64b0024..6da5cae 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -499,20 +499,18 @@ static int omap_vector_init(void)
>  	return 0;
>  }
>  
> -#define OMAP4_TRACING_VECTOR3 0x4030d048
> -
>  static int omap4_bootsource(void)
>  {
> -	enum bootsource src = BOOTSOURCE_UNKNOWN;
> +	enum bootsource src;
init at unknown is good

Best Regards,
J.
>  
>  	switch (omap_bootinfo[2] & 0xFF) {
> -	case 0x03:
> +	case OMAP44XX_SAR_BOOT_NAND:
>  		src = BOOTSOURCE_NAND;
>  		break;
> -	case 0x05:
> +	case OMAP44XX_SAR_BOOT_MMC1:
>  		src = BOOTSOURCE_MMC;
>  		break;
> -	case 0x20:
> +	case OMAP44XX_SAR_BOOT_USB_1:
>  		src = BOOTSOURCE_USB;
>  		break;
>  	default:
> -- 
> 1.8.4.2
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
