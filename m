Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMBZ3-00017e-Ga
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 06:48:42 +0000
Date: Wed, 18 Sep 2013 08:48:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130918064820.GH30088@pengutronix.de>
References: <1379404245-6533-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379404245-6533-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] atmel_mci: add devname pdata support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2013 at 09:50:45AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can specify the devname in the board
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-at91/include/mach/board.h | 1 +
>  drivers/mci/atmel_mci.c                 | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> index d695020..aa0fdae 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -150,6 +150,7 @@ struct atmel_mci_platform_data {
>  	unsigned bus_width;
>  	int detect_pin;
>  	int wp_pin;
> +	char *devname;
>  };
>  
>  void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data);
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index dca3813..36107a6 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -563,6 +563,7 @@ static int atmci_probe(struct device_d *hw_dev)
>  	host->mci.init = atmci_reset;
>  	host->mci.card_present = atmci_card_present;
>  	host->mci.hw_dev = hw_dev;
> +	host->mci.devname = pd->devname;
>  
>  	if (pd->bus_width >= 4)
>  		host->mci.host_caps |= MMC_CAP_4_BIT_DATA;
> -- 
> 1.8.4.rc1
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
