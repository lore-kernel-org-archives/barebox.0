Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1US5JQ-00053l-Ap
 for barebox@lists.infradead.org; Tue, 16 Apr 2013 12:48:40 +0000
Date: Tue, 16 Apr 2013 14:48:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130416124838.GJ1906@pengutronix.de>
References: <1365941258-5599-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365941258-5599-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] atmel_mci: add write protect detection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Apr 14, 2013 at 02:07:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/mci/atmel_mci.c |   42 +++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 41 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index f032403..4e8b86e 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -370,6 +370,23 @@ static int atmci_card_present(struct mci_host *mci)
>  	return ret == 0 ? 1 : 0;
>  }
>  
> +static int atmci_card_write_protected(struct mci_host *mci)
> +{
> +	struct atmel_mci_host *host = to_mci_host(mci);
> +	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
> +	int ret;
> +
> +	/* No gpio, assume card is not protected */
> +	if (!gpio_is_valid(pd->wp_pin))
> +		return 0;

This is unnecessary. gpio_get_value will check for gpio_is_valid aswell.

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
