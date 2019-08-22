Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mlH-0007wo-BQ
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 13:04:23 +0000
Message-ID: <c5f7463ec15576308833d022113f65183410b8b2.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 22 Aug 2019 15:04:18 +0200
In-Reply-To: <20190822125158.10296-5-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
 <20190822125158.10296-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 4/8] ARM: i.MX: imx8-ddrc: Remove debug code
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On Thu, 2019-08-22 at 14:51 +0200, Sascha Hauer wrote:
> various puthex_ll() printed values without any context are not
> helpful when
> debugging unrelated stuff, so remove them. When they are really
> needed
> they should be added with proper pr_debug() statements.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx8-ddrc.c | 20 ++------------------
>  1 file changed, 2 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx8-ddrc.c b/arch/arm/mach-imx/imx8-
> ddrc.c
> index 736865eb6f..8bb2672102 100644
> --- a/arch/arm/mach-imx/imx8-ddrc.c
> +++ b/arch/arm/mach-imx/imx8-ddrc.c
> @@ -69,15 +69,8 @@ static void ddrc_phy_fetch_streaming_message(void
> __iomem *phy)
>  	const u16 index = ddrc_phy_get_message(phy,
> PMC_MESSAGE_STREAM);
>  	u16 i;
>  
> -	putc_ll('|');
> -	puthex_ll(index);
> -
> -	for (i = 0; i < index; i++) {
> -		const u32 arg = ddrc_phy_get_message(phy,
> PMC_MESSAGE_STREAM);
> -
> -		putc_ll('|');
> -		puthex_ll(arg);
> -	}
> +	for (i = 0; i < index; i++)
> +		ddrc_phy_get_message(phy, PMC_MESSAGE_STREAM);
>  }
>  
>  void ddrc_phy_wait_training_complete(void __iomem *phy)
> @@ -85,23 +78,14 @@ void ddrc_phy_wait_training_complete(void __iomem
> *phy)
>  	for (;;) {
>  		const u32 m = ddrc_phy_get_message(phy,
> PMC_MESSAGE_ID);
>  
> -		puthex_ll(m);
> -
>  		switch (m) {
>  		case PMC_TRAIN_STREAM_START:
>  			ddrc_phy_fetch_streaming_message(phy);
>  			break;
>  		case PMC_TRAIN_SUCCESS:
> -			putc_ll('P');
> -			putc_ll('\r');
> -			putc_ll('\n');
>  			return;
>  		case PMC_TRAIN_FAIL:
> -			putc_ll('F');
>  			hang();
>  		}
> -
> -		putc_ll('\r');
> -		putc_ll('\n');
>  	}
>  }

Acked-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
