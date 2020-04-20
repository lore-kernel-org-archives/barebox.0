Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQPpE-0002vm-Kv
 for barebox@lists.infradead.org; Mon, 20 Apr 2020 06:22:38 +0000
Date: Mon, 20 Apr 2020 08:22:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200420062232.GB1694@pengutronix.de>
References: <20200415092916.21285-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415092916.21285-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/4] mci: sdhci: provide sdhci_readx_poll_timeout helpers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 15, 2020 at 11:29:13AM +0200, Ahmad Fatoum wrote:
> The sdhci_readN accessors don't lend themselves for clean use with
> readx_poll_timeout because they accept two arguments. Add
> a sdhci-specific helper, so the sdhci drivers can cut down on the
> timeout loop boilerplate.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/sdhci.h | 51 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index a307dc97cd9a..7ac32f1541b8 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -1,6 +1,8 @@
>  #ifndef __MCI_SDHCI_H
>  #define __MCI_SDHCI_H
>  
> +#include <pbl.h>
> +
>  #define SDHCI_DMA_ADDRESS					0x00
>  #define SDHCI_BLOCK_SIZE__BLOCK_COUNT				0x04
>  #define SDHCI_BLOCK_SIZE					0x04
> @@ -144,4 +146,53 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
>  			     u32 *xfer);
>  int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data);
>  
> +/**
> + * sdhci_readx_poll_timeout -	Periodically poll an sdhci register until
> + *				a condition is met or a timeout occurs
> + * @bits: access width
> + * @sdhci: sdhci instance
> + * @reg: Register to poll
> + * @val: Variable to read the value into
> + * @cond: Break condition (usually involving @val)
> + * @timeout_us: Timeout in us, 0 means never timeout
> + *
> + * Returns 0 on success and -ETIMEDOUT upon a timeout. In either
> + * case, the last read value at @reg is stored in @val.
> + *
> + * When available, you'll probably want to use one of the specialized
> + * macros defined below rather than this macro directly.
> + *
> + * We do not have timing functions in the PBL, so ignore the timeout value and
> + * loop infinitely here.
> + *
> + * Based on readx_poll_timeout from <linux/iopoll.h>
> + */
> +#define sdhci_readx_poll_timeout(bits, sdhci, reg, val, cond, timeout_us)	\
> +({ \
> +	uint64_t start; \
> +	if (!IN_PBL && timeout_us) \
> +		start = get_time_ns(); \
> +	for (;;) { \
> +		(val) = sdhci_read##bits(sdhci, reg); \
> +		if (cond) \
> +			break; \
> +		if (!IN_PBL && timeout_us && \
> +		    is_timeout(start, ((timeout_us) * USECOND))) { \
> +			(val) = sdhci_read##bits(sdhci, reg); \
> +			break; \
> +		} \
> +	} \
> +	(cond) ? 0 : -ETIMEDOUT; \
> +})

Is this really an improvement? How many variants of these helpers will we get?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
