Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fp6Yn-0008AA-0y
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 06:42:38 +0000
Date: Mon, 13 Aug 2018 08:42:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180813064225.564vmipdfzsw76wh@pengutronix.de>
References: <20180810185255.8387-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180810185255.8387-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] i.MX: i2c: Fix build error in debug output code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 10, 2018 at 11:52:55AM -0700, Andrey Smirnov wrote:
> Looks like that particular chunk of the code have not been built in a
> while and bitrotted. Change function parameters appropriately to avoid
> breaking the build.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

>  drivers/i2c/busses/i2c-imx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 4ff4f5c2a..67937da73 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -200,13 +200,13 @@ static void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
>  	reg_cr = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
>  	reg_sr = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
>  
> -	dev_dbg(adapter->dev, "CONTROL:\t"
> +	dev_dbg(&adapter->dev, "CONTROL:\t"
>  		"IEN =%d, IIEN=%d, MSTA=%d, MTX =%d, TXAK=%d, RSTA=%d\n",
>  		(reg_cr & I2CR_IEN  ? 1 : 0), (reg_cr & I2CR_IIEN ? 1 : 0),
>  		(reg_cr & I2CR_MSTA ? 1 : 0), (reg_cr & I2CR_MTX  ? 1 : 0),
>  		(reg_cr & I2CR_TXAK ? 1 : 0), (reg_cr & I2CR_RSTA ? 1 : 0));
>  
> -	dev_dbg(adapter->dev, "STATUS:\t"
> +	dev_dbg(&adapter->dev, "STATUS:\t"
>  		"ICF =%d, IAAS=%d, IB  =%d, IAL =%d, SRW =%d, IIF =%d, RXAK=%d\n",
>  		(reg_sr & I2SR_ICF  ? 1 : 0), (reg_sr & I2SR_IAAS ? 1 : 0),
>  		(reg_sr & I2SR_IBB  ? 1 : 0), (reg_sr & I2SR_IAL  ? 1 : 0),
> -- 
> 2.17.1
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
