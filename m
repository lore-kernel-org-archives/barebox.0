Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIVk9-0002CA-S6
 for barebox@lists.infradead.org; Thu, 30 Jun 2016 06:46:34 +0000
Date: Thu, 30 Jun 2016 08:46:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160630064611.GY20657@pengutronix.de>
References: <1467219409-16450-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467219409-16450-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] ARM: i.MX clk-pllv2: Do not use a negative value for
 the unsigned variable
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Jun 29, 2016 at 07:56:48PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-imx/clk-pllv2.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/clk-pllv2.c b/arch/arm/mach-imx/clk-pllv2.c
> index a2b016f..5ba07fa 100644
> --- a/arch/arm/mach-imx/clk-pllv2.c
> +++ b/arch/arm/mach-imx/clk-pllv2.c
> @@ -113,8 +113,9 @@ static unsigned long __clk_pllv2_recalc_rate(unsigned long parent_rate,
>  	temp = (u64) ref_clk * mfn_abs;
>  	do_div(temp, mfd + 1);
>  	if (mfn < 0)
> -		temp = -temp;
> -	temp = (ref_clk * mfi) + temp;
> +		temp = (ref_clk * mfi) - temp;
> +	else
> +		temp = (ref_clk * mfi) + temp;
>  
>  	return temp;
>  }
> -- 
> 2.4.9
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
