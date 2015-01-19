Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDAgf-0004AP-L3
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 11:40:06 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3A106FFC9C3
 for <barebox@lists.infradead.org>; Mon, 19 Jan 2015 12:39:42 +0100 (CET)
Date: Mon, 19 Jan 2015 12:39:39 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150119113939.GD30554@ns203013.ovh.net>
References: <1421661294-23345-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421661294-23345-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: let gmac auto detect phy id
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On 17:54 Mon 19 Jan     , Bo Shen wrote:
> On the SAMA5D33 and SAMA5D35 the GMAC PHY ID is 1 while not 7.
> So, let the GMAC auto detect phy id, or else hard code to 7,
> it can not work on these two boards.
> 
> Signed-off-by: Bo Shen <voice.shen@atmel.com>
> ---
> 
>  arch/arm/boards/sama5d3xek/init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
> index 49d2b37..0b83147 100644
> --- a/arch/arm/boards/sama5d3xek/init.c
> +++ b/arch/arm/boards/sama5d3xek/init.c
> @@ -123,7 +123,7 @@ static void ek_add_device_nand(void) {}
>  #if defined(CONFIG_DRIVER_NET_MACB)
>  static struct macb_platform_data gmac_pdata = {
>  	.phy_interface = PHY_INTERFACE_MODE_RGMII,
> -	.phy_addr = 7,
> +	.phy_addr = -1,
IIRC the auto detect do not work on all board
NACK

Best Regards,
J.
>  };
>  
>  static struct macb_platform_data macb_pdata = {
> -- 
> 2.3.0.rc0
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
