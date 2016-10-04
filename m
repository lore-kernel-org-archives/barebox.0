Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brK2B-00045m-CY
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 07:21:04 +0000
Date: Tue, 4 Oct 2016 09:20:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004072041.mfou7hpp3uoihqys@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-15-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1475505657-898-15-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 14/20] i.MX: i2c-imx: Add Vybrid support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 03, 2016 at 07:40:51AM -0700, Andrey Smirnov wrote:
> Vybrid flavour of the I2C controller requires some additional quirks on
> part of the driver. This commit ports those quirks code from analogous
> Linux kernel driver.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/i2c/busses/i2c-imx.c | 215 ++++++++++++++++++++++++++++++++-----------
>  1 file changed, 160 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index e407896..dbc76c2 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -43,6 +43,7 @@
> +static inline void fsl_i2c_write_reg(unsigned int val,
> +				     struct fsl_i2c_struct *i2c_fsl,
> +				     unsigned int reg)
> +{
> +	writeb(val, i2c_fsl->base + (reg << i2c_fsl->hwdata->regshift));
> +}
> +
> +static inline unsigned char fsl_i2c_read_reg(struct fsl_i2c_struct *i2c_fsl,
> +					     unsigned int reg)
> +{
> +	return readb(i2c_fsl->base + (reg << i2c_fsl->hwdata->regshift));
> +}

Can we have the introduction of the read/write accessor functions as a
separate patch (with regshift hardcoded to 0)? This would make reviewing
the rest easier.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
