Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiuxx-0006Xl-V3
 for barebox@lists.infradead.org; Wed, 10 Jun 2020 07:16:09 +0000
Date: Wed, 10 Jun 2020 09:16:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200610071604.GN11869@pengutronix.de>
References: <20200608071606.22711-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608071606.22711-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] fixup! mci: sdhci: add Atmel SDHCI (sama5d2, sam9x60)
 support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 08, 2020 at 09:16:06AM +0200, Ahmad Fatoum wrote:
> sdhci_write32 accepts the register as second argument, not third.
> Fix this up.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/atmel-sdhci-common.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

The commit you fixup is already in master, so I reworded the subject and
added a Fixes: tag.

Sascha

> 
> diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
> index 680b1980c020..b9524622620f 100644
> --- a/drivers/mci/atmel-sdhci-common.c
> +++ b/drivers/mci/atmel-sdhci-common.c
> @@ -358,8 +358,8 @@ int at91_sdhci_init(struct at91_sdhci *host, u32 maxclk,
>  	}
>  
>  	if (cal_always_on) {
> -		sdhci_write32(sdhci, AT91_SDHCI_CALCR_ALWYSON | AT91_SDHCI_CALCR_EN,
> -			     AT91_SDHCI_CALCR);
> +		sdhci_write32(sdhci, AT91_SDHCI_CALCR,
> +			     AT91_SDHCI_CALCR_ALWYSON | AT91_SDHCI_CALCR_EN);
>  	}
>  
>  	return 0;
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
