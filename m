Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XX2HE-0003eu-2C
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 06:11:41 +0000
Date: Thu, 25 Sep 2014 08:11:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140925061117.GF4992@pengutronix.de>
References: <1411563425-28463-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411563425-28463-1-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i2c: at91: fix coding style issue
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Hi Rapha=EBl,

On Wed, Sep 24, 2014 at 02:57:02PM +0200, Rapha=EBl Poggi wrote:
> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  drivers/i2c/busses/i2c-at91.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied all, thanks

Sascha

> =

> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> index 399f6a9..2ce3fa3 100644
> --- a/drivers/i2c/busses/i2c-at91.c
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -186,8 +186,8 @@ static int at91_twi_wait_completion(struct at91_twi_d=
ev *dev)
>  =

>  	dev->transfer_status |=3D status;
>  =

> -	while(!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP)) {
> -		if(is_timeout(start, AT91_I2C_TIMEOUT)) {
> +	while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP)) {
> +		if (is_timeout(start, AT91_I2C_TIMEOUT)) {
>  			dev_warn(&dev->adapter.dev, "timeout waiting for bus ready\n");
>  			return -ETIMEDOUT;
>  		}
> -- =

> 2.1.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
