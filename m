Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCAl8-0008DI-KD
	for barebox@lists.infradead.org; Fri, 07 Oct 2011 13:46:47 +0000
Date: Fri, 7 Oct 2011 15:46:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111007134639.GE31404@pengutronix.de>
References: <1317286622-7477-1-git-send-email-rosen.kolev@amk-drives.bg>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1317286622-7477-1-git-send-email-rosen.kolev@amk-drives.bg>
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
Subject: Re: [PATCH] Allow data-only i2c transfers
To: Rosen Kolev <rosen.kolev@amk-drives.bg>
Cc: barebox@lists.infradead.org

Hi Rosen,

On Thu, Sep 29, 2011 at 11:57:02AM +0300, Rosen Kolev wrote:
> Modified the i2c_imx driver to support data-only transfers, without
> command byte.  This allows to construct more complex i2c transfers
> and support non genuine devices like Atmel ATxx secure memory, where the
> master reads data after a write command.

I must say that I don't really like this patch and hardware guys
making such changes necessary.
Anyway, this is probably the best way around this issue, so I applied
this one to next.

Sascha

> 
> Signed-off-by: Rosen Kolev <rosen.kolev@amk-drives.bg>
> ---
>  drivers/i2c/busses/i2c-imx.c |   52 ++++++++++++++++++++++-------------------
>  include/i2c/i2c.h            |    1 +
>  2 files changed, 29 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 2d075f7..d928839 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -314,19 +314,21 @@ static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
>  	void __iomem *base = i2c_imx->base;
>  	int i, result;
>  
> -	dev_dbg(adapter->dev,
> -		"<%s> write slave address: addr=0x%02x\n",
> -		__func__, msgs->addr << 1);
> +	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
> +		dev_dbg(adapter->dev,
> +			"<%s> write slave address: addr=0x%02x\n",
> +			__func__, msgs->addr << 1);
>  
> -	/* write slave address */
> -	writeb(msgs->addr << 1, base + IMX_I2C_I2DR);
> +		/* write slave address */
> +		writeb(msgs->addr << 1, base + IMX_I2C_I2DR);
>  
> -	result = i2c_imx_trx_complete(adapter);
> -	if (result)
> -		return result;
> -	result = i2c_imx_acked(adapter);
> -	if (result)
> -		return result;
> +		result = i2c_imx_trx_complete(adapter);
> +		if (result)
> +			return result;
> +		result = i2c_imx_acked(adapter);
> +		if (result)
> +			return result;
> +	}
>  
>  	/* write data */
>  	for (i = 0; i < msgs->len; i++) {
> @@ -352,22 +354,24 @@ static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
>  	int i, result;
>  	unsigned int temp;
>  
> -	dev_dbg(adapter->dev,
> -		"<%s> write slave address: addr=0x%02x\n",
> -		__func__, (msgs->addr << 1) | 0x01);
> -
>  	/* clear IIF */
>  	writeb(0x0, base + IMX_I2C_I2SR);
>  
> -	/* write slave address */
> -	writeb((msgs->addr << 1) | 0x01, base + IMX_I2C_I2DR);
> +	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
> +		dev_dbg(adapter->dev,
> +			"<%s> write slave address: addr=0x%02x\n",
> +			__func__, (msgs->addr << 1) | 0x01);
>  
> -	result = i2c_imx_trx_complete(adapter);
> -	if (result)
> -		return result;
> -	result = i2c_imx_acked(adapter);
> -	if (result)
> -		return result;
> +		/* write slave address */
> +		writeb((msgs->addr << 1) | 0x01, base + IMX_I2C_I2DR);
> +
> +		result = i2c_imx_trx_complete(adapter);
> +		if (result)
> +			return result;
> +		result = i2c_imx_acked(adapter);
> +		if (result)
> +			return result;
> +	}
>  
>  	/* setup bus to read data */
>  	temp = readb(base + IMX_I2C_I2CR);
> @@ -428,7 +432,7 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
>  
>  	/* read/write data */
>  	for (i = 0; i < num; i++) {
> -		if (i) {
> +		if (i && !(msgs[i].flags & I2C_M_DATA_ONLY)) {
>  			temp = readb(base + IMX_I2C_I2CR);
>  			temp |= I2CR_RSTA;
>  			writeb(temp, base + IMX_I2C_I2CR);
> diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
> index 2507d68..ccbf518 100644
> --- a/include/i2c/i2c.h
> +++ b/include/i2c/i2c.h
> @@ -30,6 +30,7 @@ struct i2c_platform_data {
>  #define I2C_NAME_SIZE	20
>  
>  #define I2C_M_RD		0x0001	/* read data, from slave to master */
> +#define I2C_M_DATA_ONLY		0x0002	/* transfer data bytes only */
>  #define I2C_M_TEN               0x0010  /* this is a ten bit chip address */
>  #define I2C_M_IGNORE_NAK        0x1000  /* if I2C_FUNC_PROTOCOL_MANGLING */
>  
> -- 
> 1.7.2.3
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
