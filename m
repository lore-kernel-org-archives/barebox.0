Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3HdC-0002LD-3G
 for barebox@lists.infradead.org; Thu, 19 May 2016 06:40:27 +0000
Date: Thu, 19 May 2016 08:40:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160519064004.GB11148@pengutronix.de>
References: <1463553122-3033-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463553122-3033-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] imx-bbu-nand-fcb: add missing newline character
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, May 18, 2016 at 08:32:02AM +0200, Stefan Christ wrote:
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  common/imx-bbu-nand-fcb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> index 1ffa79d..72b7b0e 100644
> --- a/common/imx-bbu-nand-fcb.c
> +++ b/common/imx-bbu-nand-fcb.c
> @@ -927,13 +927,13 @@ static void read_firmware_all(struct mtd_info *mtd, struct fcb_block *fcb, void
>  	    fcb->Firmware2_startingPage == fw0) {
>  		first = 1;
>  	} else {
> -		pr_warn("FCB is not what we expect. Update will not be robust");
> +		pr_warn("FCB is not what we expect. Update will not be robust\n");
>  		*used = 0;
>  		return;
>  	}
>  
>  	if (fcb->PagesInFirmware1 != fcb->PagesInFirmware2) {
> -		pr_warn("FCB is not what we expect. Update will not be robust");
> +		pr_warn("FCB is not what we expect. Update will not be robust\n");
>  		return;
>  	}
>  
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
