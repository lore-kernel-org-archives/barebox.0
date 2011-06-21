Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QZ9Lf-0004nI-Vv
	for barebox@lists.infradead.org; Tue, 21 Jun 2011 22:23:08 +0000
Date: Wed, 22 Jun 2011 00:23:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110621222304.GD6069@pengutronix.de>
References: <1308694216-6221-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1308694216-6221-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [RFC PATCH] atmel-mci: fix initialization of 8bit-bus-width-mode
	for at91sam9g45
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 22, 2011 at 12:10:16AM +0200, Hubert Feurstein wrote:
> When the bus_width was set to 8, then only one data-line has been initialized.
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>

applied to -next

Sascha

> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  It seems that nobody tried the 8bit mode yet, because this init-bug is present in the
>  linux kernel as well. 
> 
>  @Sascha: I assume the mci-host-driver should set both bits (MMC_MODE_4BIT and MMC_MODE_8BIT)
>  when bus_width == 8 ???
> 
>  arch/arm/mach-at91/at91sam9g45_devices.c |    4 ++--
>  drivers/mci/atmel_mci.c                  |    4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
> index dc01705..a474bd7 100644
> --- a/arch/arm/mach-at91/at91sam9g45_devices.c
> +++ b/arch/arm/mach-at91/at91sam9g45_devices.c
> @@ -285,7 +285,7 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
>  
>  		/* DAT0, maybe DAT1..DAT3 and maybe DAT4..DAT7 */
>  		at91_set_A_periph(AT91_PIN_PA2, 1);
> -		if (data->bus_width == 4) {
> +		if (data->bus_width >= 4) {
>  			at91_set_A_periph(AT91_PIN_PA3, 1);
>  			at91_set_A_periph(AT91_PIN_PA4, 1);
>  			at91_set_A_periph(AT91_PIN_PA5, 1);
> @@ -310,7 +310,7 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
>  
>  		/* DAT0, maybe DAT1..DAT3 and maybe DAT4..DAT7 */
>  		at91_set_A_periph(AT91_PIN_PA23, 1);
> -		if (data->bus_width == 4) {
> +		if (data->bus_width >= 4) {
>  			at91_set_A_periph(AT91_PIN_PA24, 1);
>  			at91_set_A_periph(AT91_PIN_PA25, 1);
>  			at91_set_A_periph(AT91_PIN_PA26, 1);
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index 49a7851..d8bcf81 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -451,9 +451,9 @@ static int mci_probe(struct device_d *hw_dev)
>  	host->mci.init = mci_reset;
>  
>  	host->mci.host_caps = pd->host_caps;
> -	if (pd->bus_width == 4)
> +	if (pd->bus_width >= 4)
>  		host->mci.host_caps |= MMC_MODE_4BIT;
> -	else if (pd->bus_width == 8)
> +	if (pd->bus_width == 8)
>  		host->mci.host_caps |= MMC_MODE_8BIT;
>  
>  	host->base = (void __iomem *)hw_dev->map_base;
> -- 
> 1.7.4.1
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
