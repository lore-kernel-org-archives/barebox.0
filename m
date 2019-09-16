Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9laI-0002fN-2X
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:38:07 +0000
Date: Mon, 16 Sep 2019 09:37:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190916073759.aoqpmyb7rtgw4ae4@pengutronix.de>
References: <20190914062424.7919-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190914062424.7919-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] net: dsa: mv88e6xxx: Wait for EEPROM done after HW reset
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>

On Fri, Sep 13, 2019 at 11:24:24PM -0700, Andrey Smirnov wrote:
> Based on a unpublished patch from Andrew Lunn:
> 
>     The the switch is hardware reset, it reads the contents of the
>     EEPROM.

Could you correct this sentence to make its meaning clear?

>     This can contain instructions for programming values into
>     registers and to perform waits between such programming. Reading
>     the EEPROM can take longer than the 100ms
>     mv88e6xxx_hardware_reset() waits after deasserting the reset
>     GPIO. So poll the EEPROM done bit to ensure it is complete.
> 
>     Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> 
> @@ -836,6 +865,11 @@ static int mv88e6xxx_probe(struct device_d *dev)
>  		 */
>  		mv88e6xxx_hardware_reset_delay();
>  	}
> +	/*
> +	 * Switch will not retrun valid data over MDIO until EEPROM is
> +	 * loaded

s/retrun/return/

> +	 */
> +	mv88e6xxx_g1_wait_eeprom_done(chip);
>  
>  	err = mv88e6xxx_detect(chip);
>  	if (err)
> +void mv88e6xxx_g1_wait_eeprom_done(struct mv88e6xxx_chip *chip)
> +{
> +	const uint64_t start   = get_time_ns();
> +	const uint64_t timeout = 20 * SECOND;
> +	u16 val;
> +	int err;
> +
> +	/* Wait up to 1 second for the switch to finish reading the
> +	 * EEPROM.
> +	 */
> +	while (!is_timeout(start, timeout)) {
> +		err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_STS, &val);
> +		if (err) {
> +			dev_err(chip->dev, "Error reading status");
> +			return;
> +		}
> +
> +		if (val != 0xFFFF && /* switch will return 0xffff it it */

This comment looks incomplete.

> +		    val & BIT(MV88E6XXX_G1_STS_IRQ_EEPROM_DONE))
> +			return;
> +

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
