Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNYpq-0002Y4-83
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 07:46:39 +0000
Date: Fri, 16 Nov 2018 08:46:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181116074625.lwwouvfii43sroky@pengutronix.de>
References: <20181115185458.22396-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181115185458.22396-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] rtc: ds1307: Set DS1341_BIT_DOSF in the right register
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 15, 2018 at 10:54:58AM -0800, Andrey Smirnov wrote:
> DS1341_BIT_DOSF is located in DS1337_REG_STATUS, not
> DS1337_REG_CONTROL. Fix the code to reflect that.
> 
> Also fix "additionale" -> "additional" typo while at it.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/rtc/rtc-ds1307.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
> index bb597305e..f1feee468 100644
> --- a/drivers/rtc/rtc-ds1307.c
> +++ b/drivers/rtc/rtc-ds1307.c
> @@ -348,10 +348,10 @@ static int ds1307_probe(struct device_d *dev)
>  			ds1307->regs[1] &= ~DS1341_BIT_ECLK;
>  
>  			/*
> -			 * Let's set additionale RTC bits to
> +			 * Let's set additional RTC bits to
>  			 * facilitate maximum power saving.
>  			 */
> -			ds1307->regs[0] |=  DS1341_BIT_DOSF;
> +			ds1307->regs[1] |=  DS1341_BIT_DOSF;
>  			ds1307->regs[0] &= ~DS1341_BIT_EGFIL;
>  
>  			i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
> -- 
> 2.19.1
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
