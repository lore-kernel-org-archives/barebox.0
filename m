Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gteqT-0005lR-PN
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 20:39:59 +0000
Date: Tue, 12 Feb 2019 21:39:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212203956.mf5vx6up5wvqsi4y@pengutronix.de>
References: <20190212063439.29866-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190212063439.29866-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] nvmem: eeprom_93xx46: fix whitespaces
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 12, 2019 at 09:34:39AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/nvmem/eeprom_93xx46.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
> index d96ba32d07..49ed396dc2 100644
> --- a/drivers/nvmem/eeprom_93xx46.c
> +++ b/drivers/nvmem/eeprom_93xx46.c
> @@ -339,7 +339,7 @@ static int eeprom_93xx46_probe_dt(struct spi_device *spi)
>  	if (of_property_read_bool(np, "read-only"))
>  		pd->flags |= EE_READONLY;
>  
> -	pd->select =of_get_named_gpio_flags(np, "select", 0, &of_flags);
> +	pd->select = of_get_named_gpio_flags(np, "select", 0, &of_flags);
>  	if (gpio_is_valid(pd->select)) {
>  		char *name;
>  
> @@ -441,6 +441,3 @@ static struct driver_d eeprom_93xx46_driver = {
>  	.of_compatible = DRV_OF_COMPAT(eeprom_93xx46_of_table),
>  };
>  device_spi_driver(eeprom_93xx46_driver);
> -
> -
> -
> -- 
> 2.20.1
> 
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
