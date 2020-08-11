Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5OsN-0005Oj-V8
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 07:39:16 +0000
Date: Tue, 11 Aug 2020 09:39:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200811073912.GI9475@pengutronix.de>
References: <20200717180443.11390-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200717180443.11390-1-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] arm: baltos: export DIP switch value
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, Jul 17, 2020 at 08:04:43PM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Some device in the OnRISC device family provide four DIP switches.
> Read them and provide their value as a hex in the global variable
> "board.dip".
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/boards/vscom-baltos/board.c | 42 ++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)

Applied, thanks.

Indeed Oleksijs function to read an id from an gpio array might be of
help here, it could be converted once the series is merged.

Sascha

> 
> diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
> index 800f42df3..59782d299 100644
> --- a/arch/arm/boards/vscom-baltos/board.c
> +++ b/arch/arm/boards/vscom-baltos/board.c
> @@ -45,6 +45,43 @@ struct bsp_vs_hwparam {
>  	uint8_t MAC3[6];
>  } __attribute__ ((packed));
>  
> +static uint8_t get_dip_switch(uint16_t id, uint32_t rev)
> +{
> +	uint16_t maj, min;
> +	uint8_t dip = 0;
> +
> +	maj = rev >> 16;
> +	min = rev & 0xffff;
> +
> +	if ((id == 220 || id == 222) && (maj == 1 && min == 2))
> +		id = 214;
> +
> +	switch(id) {
> +		case 214:
> +		case 215:
> +			dip = !gpio_get_value(44);
> +			dip += !gpio_get_value(45) << 1;
> +			dip += !gpio_get_value(46) << 2;
> +			dip += !gpio_get_value(47) << 3;
> +			break;
> +		case 212:
> +		case 221:
> +		case 223:
> +		case 224:
> +		case 225:
> +		case 226:
> +		case 227:
> +		case 230:
> +			dip = !gpio_get_value(82);
> +			dip += !gpio_get_value(83) << 1;
> +			dip += !gpio_get_value(105) << 2;
> +			dip += !gpio_get_value(106) << 3;
> +			break;
> +	}
> +
> +	return dip;
> +}
> +
>  static int baltos_read_eeprom(void)
>  {
>  	struct bsp_vs_hwparam hw_param;
> @@ -52,6 +89,7 @@ static int baltos_read_eeprom(void)
>  	char *buf, var_buf[32];
>  	int rc;
>  	unsigned char mac_addr[6];
> +	uint8_t dip;
>  
>  	if (!of_machine_is_compatible("vscom,onrisc"))
>  		return 0;
> @@ -109,6 +147,10 @@ static int baltos_read_eeprom(void)
>  		gpio_direction_output(135, 0);
>  	}
>  
> +	dip = get_dip_switch(hw_param.SystemId, hw_param.HwRev);
> +	sprintf(var_buf, "%02x", dip);
> +	globalvar_add_simple("board.dip", var_buf);
> +
>  	return 0;
>  }
>  environment_initcall(baltos_read_eeprom);
> -- 
> 2.17.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
