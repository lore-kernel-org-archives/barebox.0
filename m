Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c7GON-000834-SI
 for barebox@lists.infradead.org; Thu, 17 Nov 2016 06:41:53 +0000
Date: Thu, 17 Nov 2016 07:41:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161117064127.kumvqxldgmu74g3n@pengutronix.de>
References: <1479190874-10392-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1479190874-10392-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] regmap: Add regmap_write_bits() function
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 14, 2016 at 10:21:13PM -0800, Andrey Smirnov wrote:
> Add code implementing a simple version of regmap_write_bits().
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/base/regmap/regmap.c | 27 +++++++++++++++++++++++++++
>  include/regmap.h             |  6 +++++-
>  2 files changed, 32 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
> index a042a1a..52b7d88 100644
> --- a/drivers/base/regmap/regmap.c
> +++ b/drivers/base/regmap/regmap.c
> @@ -137,6 +137,33 @@ int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
>  }
>  
>  /**
> + * regmap_write_bits - write bits of a register in a map
> + *
> + * @map:	The map
> + * @reg:	The register offset of the register
> + * @mask:	Mask indicating bits to be modified
> + *		(1 - modified, 0 - untouched)
> + * @val:	Bit value to be set
> + *
> + * Returns 0 for success or negative error code on failure
> + */
> +int regmap_write_bits(struct regmap *map, unsigned int reg,
> +		      unsigned int mask, unsigned int val)
> +{
> +	int ret;
> +	unsigned int tmp, orig;
> +
> +	ret = regmap_read(map, reg, &orig);
> +	if (ret != 0)
> +		return ret;
> +
> +	tmp = orig & ~mask;
> +	tmp |= val & mask;
> +
> +	return regmap_write(map, reg, tmp);
> +}
> +
> +/**
>   * regmap_bulk_read(): Read data from the device
>   *
>   * @map: Register map to read from
> diff --git a/include/regmap.h b/include/regmap.h
> index bcbe6c1..9675a17 100644
> --- a/include/regmap.h
> +++ b/include/regmap.h
> @@ -60,4 +60,8 @@ int regmap_get_val_bytes(struct regmap *map);
>  int regmap_get_max_register(struct regmap *map);
>  int regmap_get_reg_stride(struct regmap *map);
>  
> -#endif /* __REGMAP_H */
> \ No newline at end of file
> +int regmap_write_bits(struct regmap *map, unsigned int reg,
> +		      unsigned int mask, unsigned int val);
> +
> +
> +#endif /* __REGMAP_H */
> -- 
> 2.5.5
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
