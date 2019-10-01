Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCPA-0001b2-RT
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 07:17:06 +0000
Date: Tue, 1 Oct 2019 09:17:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20191001071702.tmzghjpyupkl6fpf@pengutronix.de>
References: <20191001062518.1123-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001062518.1123-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] gpio: da9062: fix uninitialized variable read
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

Hi Ahmad,

thanks for covering that :)

On 19-10-01 08:25, Ahmad Fatoum wrote:
> In cases where reg < 0x100, WARN_ON will evaluate the uninitialized
> client variable. Fix this by initializing it to NULL.
> This way, the function will always early-return if the reg is < 0x100.
> 
> Fixes: 17a43d293c ("gpio: add DA9062 MFD gpio support")
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/gpio/gpio-da9062.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpio/gpio-da9062.c b/drivers/gpio/gpio-da9062.c
> index 2f018166ccc5..2d4bde7508be 100644
> --- a/drivers/gpio/gpio-da9062.c
> +++ b/drivers/gpio/gpio-da9062.c
> @@ -37,7 +37,7 @@ static inline struct da9062_gpio *to_da9062(struct gpio_chip *chip)
>  static int gpio_da9062_reg_update(struct da9062_gpio *priv, unsigned int reg,
>  				  uint8_t mask, uint8_t val)
>  {
> -	struct i2c_client *client;
> +	struct i2c_client *client = NULL;
>  	uint8_t tmp;
>  	int ret;
>  
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
