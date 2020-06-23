Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnfyb-0008CX-1a
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 10:16:25 +0000
Date: Tue, 23 Jun 2020 12:16:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200623101623.GC11869@pengutronix.de>
References: <20200623100846.21965-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623100846.21965-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 1/3] mci: sdhci: atmel: don't print errors on command
 timeouts
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 23, 2020 at 12:08:44PM +0200, Ahmad Fatoum wrote:
> Time outs can be expected, e.g. when probing whether a card is a MMC
> one. The core handles it, so don't have the driver print an error.
> 
> While at it, simplify the error handling. We don't need to read the
> status more than once and returning -EPERM on non-timeout is what the
> other drivers are doing.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> v1 -> v2:
>   no change
> ---
>  drivers/mci/atmel-sdhci-common.c | 40 ++++++++++++++++++--------------
>  1 file changed, 22 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
> index b9524622620f..fff4468d71e8 100644
> --- a/drivers/mci/atmel-sdhci-common.c
> +++ b/drivers/mci/atmel-sdhci-common.c
> @@ -83,10 +83,10 @@ exit:
>  static int at91_sdhci_wait_for_done(struct at91_sdhci *host, u32 mask)
>  {
>  	struct sdhci *sdhci = &host->sdhci;
> -	u16 status;
> +	u32 status;
>  	int ret;
>  
> -	ret = sdhci_read16_poll_timeout(sdhci, SDHCI_INT_NORMAL_STATUS, status,
> +	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_INT_STATUS, status,
>  					(status & mask) == mask || (status & SDHCI_INT_ERROR),
>  					USEC_PER_SEC);
>  
> @@ -95,13 +95,15 @@ static int at91_sdhci_wait_for_done(struct at91_sdhci *host, u32 mask)
>  		return ret;
>  	}
>  
> +	if (status & SDHCI_INT_TIMEOUT)
> +		return -ETIMEDOUT;
> +
>  	if (status & SDHCI_INT_ERROR) {
> -		pr_err("SDHCI_INT_ERROR: 0x%08x\n",
> -			sdhci_read16(sdhci, SDHCI_INT_ERROR_STATUS));
> +		pr_err("SDHCI_INT_STATUS: 0x%08x\n", status);
>  		return -EPERM;
>  	}
>  
> -	return status;
> +	return status & 0xFFFF;
>  }
>  
>  int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
> @@ -109,7 +111,8 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
>  {
>  	unsigned command, xfer;
>  	struct sdhci *sdhci = &host->sdhci;
> -	u32 mask, status, state;
> +	u32 mask, state;
> +	int status;
>  	int ret;
>  
>  	/* Wait for idle before next command */
> @@ -147,28 +150,29 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
>  	sdhci_write16(sdhci, SDHCI_COMMAND, command);
>  
>  	status = at91_sdhci_wait_for_done(host, mask);
> -	if (status >= 0 && (status & (SDHCI_INT_ERROR | mask)) == mask) {
> -		sdhci_read_response(sdhci, cmd);
> -		sdhci_write32(sdhci, SDHCI_INT_STATUS, mask);
> -
> -		if (data)
> -			sdhci_transfer_data(sdhci, data);
> +	if (status < 0)
> +		goto error;
>  
> -		udelay(1000);
> +	sdhci_read_response(sdhci, cmd);
> +	sdhci_write32(sdhci, SDHCI_INT_STATUS, mask);
>  
> -		status = sdhci_read32(sdhci, SDHCI_INT_STATUS);
> -		sdhci_write32(sdhci, SDHCI_INT_STATUS, ~0U);
> +	if (data)
> +		sdhci_transfer_data(sdhci, data);
>  
> -		return 0;
> -	}
> +	udelay(1000);
>  
>  	status = sdhci_read32(sdhci, SDHCI_INT_STATUS);
>  	sdhci_write32(sdhci, SDHCI_INT_STATUS, ~0U);
>  
> +	return 0;
> +
> +error:
> +	sdhci_write32(sdhci, SDHCI_INT_STATUS, ~0U);
> +
>  	sdhci_reset(sdhci, SDHCI_RESET_CMD);
>  	sdhci_reset(sdhci, SDHCI_RESET_DATA);
>  
> -	return status & SDHCI_INT_TIMEOUT ? -ETIMEDOUT : -ECOMM;
> +	return status;
>  }
>  
>  static void at91_sdhci_set_power(struct at91_sdhci *host, unsigned vdd)
> -- 
> 2.27.0
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
