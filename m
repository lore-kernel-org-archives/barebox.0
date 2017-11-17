Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFcew-0000Lj-OK
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 09:10:04 +0000
Date: Fri, 17 Nov 2017 10:09:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171117090941.d2ber3g5l4hp7nqb@pengutronix.de>
References: <20171115223115.29004-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171115223115.29004-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] boards/zii-vf610-dev: Do not keep 'SOC_SW_RSTN' low
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 15, 2017 at 02:31:15PM -0800, Andrey Smirnov wrote:
> From users feedback, it's not very practical keep 'SOC_SW_RSTN' low
> and corresponding Ethernet switch it controls in reset. Change the
> code to keep the line high by default.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/zii-vf610-dev/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
> index eea3828aa..6fd49df54 100644
> --- a/arch/arm/boards/zii-vf610-dev/board.c
> +++ b/arch/arm/boards/zii-vf610-dev/board.c
> @@ -64,7 +64,7 @@ static int zii_vf610_cfu1_spu3_expose_signals(void)
>  	static const struct gpio signals[] = {
>  		{
>  			.gpio  = 107,
> -			.flags  = GPIOF_OUT_INIT_LOW,
> +			.flags  = GPIOF_OUT_INIT_HIGH,
>  			.label = "soc_sw_rstn",
>  		},
>  		{
> -- 
> 2.13.6
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
