Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5Hpj-0001tL-6T
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 12:50:27 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 14:48:43 +0200
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
	<1286796505-16049-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-12-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010111448.43598.jbe@pengutronix.de>
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
Subject: Re: [PATCH 11/17] mci: handle SD cards < 2.0 correctly
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> With SD cards older than 2.0 the sd_send_if_cond() fails. Do
> not assume it's an MMC card in this case. Instead, assume
> it's a MMC card if sd_send_op_cond() fails.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/mci-core.c |   24 +++++++-----------------
>  1 files changed, 7 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index a6c81b8..57b82bf 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1148,26 +1148,16 @@ static int mci_card_probe(struct device_d *mci_dev)
>
>  	/* Check if this card can handle the "SD Card Physical Layer
> Specification 2.0" */ rc = sd_send_if_cond(mci_dev);
> -	if (rc) {
> +	rc = sd_send_op_cond(mci_dev);
> +	if (rc && rc == -ETIMEDOUT) {
>  		/* If the command timed out, we check for an MMC card */
> -		if (rc == -ETIMEDOUT) {
> -			pr_debug("Card seems to be a MultiMediaCard\n");
> -			rc = mmc_send_op_cond(mci_dev);
> -			if (rc) {
> -				pr_err("MultiMediaCard voltage select failed with %d\n", rc);
> -				goto on_error;
> -			}
> -		} else
> -			goto on_error;
> -	} else {
> -		/* Its a 2.xx card. Setup operation conditions */
> -		rc = sd_send_op_cond(mci_dev);
> -		if (rc) {
> -			pr_debug("Cannot setup SD card's operation condition\n");
> -			goto on_error;
> -		}
> +		pr_debug("Card seems to be a MultiMediaCard\n");
> +		rc = mmc_send_op_cond(mci_dev);
>  	}
>
> +	if (rc)
> +		goto on_error;
> +
>  	rc = mci_startup(mci_dev);
>  	if (rc) {
>  		printf("Card's startup fails with %d\n", rc);

Tested-by: Juergen Beisert <jbe@pengutronix.de>

@Marek: You need this patch to make your SD card work on the mini2440.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
