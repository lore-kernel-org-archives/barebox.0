Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJFRp-0002fG-Df
 for barebox@lists.infradead.org; Thu, 17 May 2018 09:43:47 +0000
Date: Thu, 17 May 2018 11:43:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180517094333.eyi6zjahrxd2vsqc@pengutronix.de>
References: <20180516201827.6430-1-andrew.smirnov@gmail.com>
 <20180516201827.6430-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180516201827.6430-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 2/4] bootsource: Add bootsource alias name API
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 16, 2018 at 01:18:25PM -0700, Andrey Smirnov wrote:
> Add API allowing to query and override the name of the alias pointing
> at DTB node representing current bootsource.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/bootsource.c  | 74 ++++++++++++++++++++++++++++++++++++++++++++
>  include/bootsource.h |  2 ++
>  2 files changed, 76 insertions(+)
> 
> diff --git a/common/bootsource.c b/common/bootsource.c
> index 78ecd8267..ed435c051 100644
> --- a/common/bootsource.c
> +++ b/common/bootsource.c
> @@ -41,6 +41,80 @@ static const char *bootsource_str[] = {
>  
>  static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
>  static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> +const char *bootsource_alias_name = NULL;
> +
> +/**
> + * bootsource_get_alias_name() - Get the name of the bootsource alias
> + *
> + * This function will return newly allocated string containing name of
> + * the alias that is expected to point to DTB node corresponding to
> + * detected bootsource
> + *
> + * NOTE: Caller is expected to free() the string allocated by this
> + * function
> + */
> +char *bootsource_get_alias_name(void)
> +{
> +	int instance = bootsource_instance;
> +	const char *stem;
> +
> +	/*
> +	 * If alias name was overridden via
> +	 * bootsource_set_alias_name() return that value without
> +	 * asking any questions.
> +	 *
> +	 * Note that we have to strdup() the result to make it
> +	 * free-able.
> +	 */
> +	if (bootsource_alias_name)
> +		return strdup(bootsource_alias_name);
> +
> +	if (bootsource >= ARRAY_SIZE(bootsource_str) ||
> +	    bootsource == BOOTSOURCE_UNKNOWN)
> +		return NULL;

This is already handled by the default path of the switch/case below.

> +
> +	switch (bootsource) {
> +	case BOOTSOURCE_I2C_EEPROM: /* FALLTHROUGH */
> +	case BOOTSOURCE_SPI_EEPROM:
> +		/*
> +		 * For I2C and SPI EEPROMs we set the stem to be 'i2c'
> +		 * and 'spi' correspondingly. The resulting alias will
> +		 * be pointing at the controller said EEPROM is
> +		 * attached to.
> +		 *
> +		 * NOTE: This code assumes single bootable EEPROM per
> +		 * controller
> +		 */
> +		BUILD_BUG_ON(BOOTSOURCE_SPI != BOOTSOURCE_SPI_EEPROM - 1);
> +		BUILD_BUG_ON(BOOTSOURCE_I2C != BOOTSOURCE_I2C_EEPROM - 1);
> +
> +		stem = bootsource_str[bootsource - 1];

Can we make this conversion more explicit?

	case BOOTSOURCE_I2C_EEPROM:
		stem = bootsource_str[BOOTSOURCE_I2C];
		break;
	case BOOTSOURCE_SPI_EEPROM:
		stem = bootsource_str[BOOTSOURCE_SPI];
		break;

It makes it more obvious what happens here.

> +		break;
> +	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
> +	case BOOTSOURCE_I2C:	/* FALLTHROUGH */
> +	case BOOTSOURCE_MMC:	/* FALLTHROUGH */
> +	case BOOTSOURCE_SPI:	/* FALLTHROUGH */
> +	case BOOTSOURCE_CAN:
> +		stem = bootsource_str[bootsource];
> +		break;
> +	default:
> +		return NULL;
> +	}
> +
> +	/*
> +	 * Assume 0 if instance was not specified by bootsource
> +	 * detection code.
> +	 */
> +	if (instance == BOOTSOURCE_INSTANCE_UNKNOWN)
> +		instance = 0;

Hm, if some SoC has forgotten to setup the instance I think we should
just bail out here and fix the SoC code instead.

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
