Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGuBl-00049j-KF
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 16:10:18 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 94826FFBE32
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 18:16:17 +0200 (CEST)
Date: Wed, 26 Sep 2012 18:07:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120926160746.GW26553@game.jcrosoft.org>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
 <1348484692-24993-15-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348484692-24993-15-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 14/23] net fec: Switch to clk support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:04 Mon 24 Sep     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/fec_imx.c |   27 ++++++++++++++++++++++++---
>  drivers/net/fec_imx.h |    1 +
>  2 files changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 6acf6bd..4606558 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -24,6 +24,8 @@
>  #include <clock.h>
>  #include <xfuncs.h>
>  #include <linux/phy.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
>  
>  #include <asm/mmu.h>
>  
> @@ -43,6 +45,19 @@ struct fec_frame {
>  	uint8_t head[16];	/* MAC header(6 + 6 + 2) + 2(aligned) */
>  };
>  
> +#ifdef CONFIG_COMMON_CLK
> +static inline unsigned long fec_clk_get_rate(struct fec_priv *fec)
> +{
> +	return clk_get_rate(fec->clk);
> +}
> +#else
> +static inline unsigned long fec_clk_get_rate(struct fec_priv *fec)
> +{
> +	return imx_get_fecclk();
> +}
> +#endif
> +
> +
>  /*
>   * MII-interface related functions
>   */
> @@ -54,7 +69,7 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
>  	uint32_t phy;		/* convenient holder for the PHY */
>  	uint64_t start;
>  
> -	writel(((imx_get_fecclk() >> 20) / 5) << 1,
> +	writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
is the rate changing?

if not put it in the fec will reduce the number function call

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
