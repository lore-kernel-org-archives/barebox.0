Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJVqS-0007G2-Ar
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 05:23:21 +0000
Date: Wed, 1 Apr 2020 07:23:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200401052318.GT27288@pengutronix.de>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
 <20200331184722.22707-5-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331184722.22707-5-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 04/23] ARM: zii-common: Check for I2C errors in
 do_rdu2_switch_reset()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Mar 31, 2020 at 11:47:03AM -0700, Andrey Smirnov wrote:
> ---
>  arch/arm/boards/zii-common/switch-cmd.c | 20 +++++++++++++++++---
>  1 file changed, 17 insertions(+), 3 deletions(-)

Missing Signed-off-by:

Sascha

> 
> diff --git a/arch/arm/boards/zii-common/switch-cmd.c b/arch/arm/boards/zii-common/switch-cmd.c
> index 2b9c34bfa..5e39d8fc6 100644
> --- a/arch/arm/boards/zii-common/switch-cmd.c
> +++ b/arch/arm/boards/zii-common/switch-cmd.c
> @@ -19,6 +19,7 @@
>  static int do_rdu2_switch_reset(void)
>  {
>  	struct i2c_client client;
> +	int ret;
>  	u8 reg;
>  
>  	client.adapter = i2c_get_adapter(1);
> @@ -29,12 +30,25 @@ static int do_rdu2_switch_reset(void)
>  	client.addr = 0x38;
>  	reg = 0x78;
>  	/* set switch reset time to 100ms */
> -	i2c_write_reg(&client, 0x0a, &reg, 1);
> +
> +	ret = i2c_write_reg(&client, 0x0a, &reg, 1);
> +	if (ret < 0) {
> +		pr_err("Failed to set switch reset time\n");
> +		return ret;
> +	}
>  	/* reset the switch */
>  	reg = 0x01;
> -	i2c_write_reg(&client, 0x0d, &reg, 1);
> +	ret = i2c_write_reg(&client, 0x0d, &reg, 1);
> +	if (ret < 0) {
> +		pr_err("Failed to reset the switch\n");
> +		return ret;
> +	}
>  	/* issue dummy command to work around firmware bug */
> -	i2c_read_reg(&client, 0x01, &reg, 1);
> +	ret = i2c_read_reg(&client, 0x01, &reg, 1);
> +	if (ret < 0) {
> +		pr_err("Failed to issue a dummy command\n");
> +		return ret;
> +	}
>  
>  	return 0;
>  }
> -- 
> 2.21.0
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
