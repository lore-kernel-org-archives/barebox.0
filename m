Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3Hz-00016m-2P
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 06:51:21 +0000
Date: Tue, 4 Jun 2019 08:51:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604065117.nhgay4nbswjmuwnx@pengutronix.de>
References: <20190531074102.28035-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531074102.28035-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH RFC] ARM: imx8: fix discrepancy between comment and code
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 31, 2019 at 09:41:02AM +0200, Ahmad Fatoum wrote:
> The comment speaks of a one second polling timeout, while the polling
> is indefinite with timeout not accounted for. Thus change the comment
> to reflect the actual behavior.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx8-ddrc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx8-ddrc.c b/arch/arm/mach-imx/imx8-ddrc.c
> index 18454a91533b..736865eb6f12 100644
> --- a/arch/arm/mach-imx/imx8-ddrc.c
> +++ b/arch/arm/mach-imx/imx8-ddrc.c
> @@ -29,7 +29,7 @@ static u32 ddrc_phy_get_message(void __iomem *phy, int type)
>  
>  	/*
>  	 * When BIT0 set to 0, the PMU has a message for the user
> -	 * 10ms seems not enough for poll message, so use 1s here.
> +	 * Wait for it indefinitely.
>  	 */
>  	readl_poll_timeout(phy + DDRC_PHY_REG(0xd0004),
>  			   r, !(r & BIT(0)), 0);
> @@ -104,4 +104,4 @@ void ddrc_phy_wait_training_complete(void __iomem *phy)
>  		putc_ll('\r');
>  		putc_ll('\n');
>  	}
> -}
> \ No newline at end of file
> +}
> -- 
> 2.20.1
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
