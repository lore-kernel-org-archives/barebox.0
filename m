Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqg40-0003FZ-3G
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 07:50:18 +0000
Date: Mon, 16 Jul 2012 09:49:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716074937.GA30009@pengutronix.de>
References: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
 <1342400699-6753-5-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342400699-6753-5-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 4/5] at24: add I2C eeprom for 24cl02
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 11:04:58AM +1000, Marc Reilly wrote:
> This series adds a driver for at24 eeproms. Much of the guts of the code
> is taken from the at24 driver in the linux kernel.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  drivers/eeprom/Kconfig  |    7 +++
>  drivers/eeprom/Makefile |    1 +
>  drivers/eeprom/at24.c   |  134 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 142 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/eeprom/at24.c
> 
> diff --git a/drivers/eeprom/Kconfig b/drivers/eeprom/Kconfig
> index a0b5489..56dfd1a 100644
> --- a/drivers/eeprom/Kconfig
> +++ b/drivers/eeprom/Kconfig
> @@ -8,4 +8,11 @@ config EEPROM_AT25
>  	  after you configure the board init code to know about each eeprom
>  	  on your target board.
>  
> +config EEPROM_AT24
> +	bool "at24 based eeprom"
> +	depends on I2C
> +	help
> +	  Provides read/write for the at24 family of I2C EEPROMS.
> +	  Currently only the 2K bit versions are supported.
> +	  

Trailing whitespace here.

> +{
> +	struct at24 *priv = to_at24(cdev);
> +	const u8 *buf = _buf;
> +	const int maxwrite = 8;
> +	int numtowrite;
> +	ssize_t numwritten = 0;
> +
> +	while (count) {
> +		int ret;
> +
> +		numtowrite = count;
> +		if (numtowrite > maxwrite)
> +			numtowrite = maxwrite;
> +
> +		ret = i2c_write_reg(priv->client, offset, buf, numtowrite);
> +		if (ret < 0)
> +			return (ssize_t)ret;
> +
> +		mdelay(10);

Do we need this? This makes the driver veeery slow. If we could poll
this somehow it would be much better.

> +
> +static int at24_init(void)
> +{
> +	register_driver(&at24_driver);
> +	return 0;

We can safely return the result of register_driver here. There was a
time when barebox paniced on a failed initcall, but this is not the case
anymore. Instead we have some debug output for failed initcalls which
seems more useful

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
