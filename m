Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Hsa-0007EL-TJ
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:41:57 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Oct 2010 15:41:49 +0200
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
	<1287753331-7696-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-11-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010221541.49699.jbe@pengutronix.de>
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
Subject: Re: [PATCH 10/13] mci: align data for commands
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> Some mci controllers cannot transfer data with their DMA engines
> if the data is not sufficiently aligned. Normally this is a driver
> problem, but hey, we have no problem aligning the data and keep
> the burden from the drivers.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Juergen Beisert <jbe@pengutronix.de>

Acked-by: Juergen Beisert <jbe@pengutronix.de>

> ---
>  drivers/mci/mci-core.c |   12 ++++++------
>  1 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 34c4f8c..6f31cca 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -347,7 +347,7 @@ static int mci_switch(struct device_d *mci_dev,
> unsigned set, unsigned index, static int mmc_change_freq(struct device_d
> *mci_dev)
>  {
>  	struct mci *mci = GET_MCI_DATA(mci_dev);
> -	char ext_csd[512];
> +	char *ext_csd = sector_buf;
>  	char cardtype;
>  	int err;
>
> @@ -439,8 +439,8 @@ static int sd_change_freq(struct device_d *mci_dev)
>  	struct mci *mci = GET_MCI_DATA(mci_dev);
>  	struct mci_cmd cmd;
>  	struct mci_data data;
> -	uint32_t switch_status[16];
> -	uint scr[2];
> +	uint32_t *switch_status = sector_buf;
> +	uint32_t *scr = sector_buf;
>  	int timeout;
>  	int err;
>
> @@ -461,7 +461,7 @@ static int sd_change_freq(struct device_d *mci_dev)
>
>  retry_scr:
>  	pr_debug("Trying to read the SCR (try %d of %d)\n", 4 - timeout, 3);
> -	data.dest = (char *)&scr;
> +	data.dest = (char *)scr;
>  	data.blocksize = 8;
>  	data.blocks = 1;
>  	data.flags = MMC_DATA_READ;
> @@ -502,7 +502,7 @@ retry_scr:
>  	timeout = 4;
>  	while (timeout--) {
>  		err = sd_switch(mci_dev, SD_SWITCH_CHECK, 0, 1,
> -				(uint8_t*)&switch_status);
> +				(uint8_t*)switch_status);
>  		if (err) {
>  			pr_debug("Checking SD transfer switch frequency feature failed: %d\n",
> err); return err;
> @@ -520,7 +520,7 @@ retry_scr:
>  	if (!(__be32_to_cpu(switch_status[3]) & SD_HIGHSPEED_SUPPORTED))
>  		return 0;
>
> -	err = sd_switch(mci_dev, SD_SWITCH_SWITCH, 0, 1,
> (uint8_t*)&switch_status); +	err = sd_switch(mci_dev, SD_SWITCH_SWITCH, 0,
> 1, (uint8_t*)switch_status); if (err) {
>  		pr_debug("Switching SD transfer frequency failed: %d\n", err);
>  		return err;



-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
