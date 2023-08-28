Delivery-date: Mon, 28 Aug 2023 10:03:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaXDU-00BmWm-9a
	for lore@lore.pengutronix.de; Mon, 28 Aug 2023 10:03:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaXDR-00010D-Jd
	for lore@pengutronix.de; Mon, 28 Aug 2023 10:03:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ge/2J0Nn45R67Q7PzgYsXgVFL2gBgYRHSngVF68/M7E=; b=iTq0s2Tyf9DmtnU20aJUrp12V+
	1UyQrsOdre5QsTbOf5RVmsTcsFsKor8Lw+8I2rCO0+iKaCrF7GFFRiEvEQ9t1+OlkOgEzf7DD35w9
	jYOxKPLKLmdNbl605V+VNsardhABl4bQp5XFFgBoErujXBARk71I+M91zYSBu7IITUXh08PHc7ZBh
	PDAj2tvplgXonDb8opdjrqAMX1XmIcCeQC7hed4yMsaMrjWzGg4B/6tqUz4AM2admP6K64NZi20zS
	6CjflyxKk7uycYkVDECLkWO4+aNOhAlU+jSag6RqD4OoodRsT4ANMgp/55KU8ihSMesRxOYAR/ebF
	zNen41AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaXCS-0096O0-3D;
	Mon, 28 Aug 2023 08:02:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaXCQ-0096NX-0W
	for barebox@lists.infradead.org;
	Mon, 28 Aug 2023 08:02:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaXCO-0000kv-V7; Mon, 28 Aug 2023 10:02:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaXCO-0005Em-OR; Mon, 28 Aug 2023 10:02:12 +0200
Date: Mon, 28 Aug 2023 10:02:12 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230828080212.GK16522@pengutronix.de>
References: <20230824135939.1614716-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824135939.1614716-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_010214_196233_76F106E3 
X-CRM114-Status: GOOD (  25.45  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: sdhci: don't hang indefinitely waiting for DMA
 completion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 24, 2023 at 03:59:39PM +0200, Ahmad Fatoum wrote:
> barebox was observed to hang on an i.MX8MP while reading ext_csd from
> a broken eMMC that even bootROM refused to boot from. For PIO, we
> already have a maximum wait time of 10s. Do the same for DMA.
> 
> It's unlikely that in that state any further communication with the card
> will work, but at least, the system isn't stuck and the shell can be
> reached. The reset is done on the off-chance that the DMA would've completed
> after the 10s and corrupted memory if not disabled.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/sdhci.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index b0b83bfaa9a7..9829a78cb6c5 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -252,6 +252,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
>  			    dma_addr_t dma)
>  {
>  	struct device *dev = sdhci->mci->hw_dev;
> +	u64 start;
>  	int nbytes;
>  	u32 irqstat;
>  	int ret;
> @@ -261,6 +262,8 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
>  
>  	nbytes = data->blocks * data->blocksize;
>  
> +	start = get_time_ns();
> +
>  	do {
>  		irqstat = sdhci_read32(sdhci, SDHCI_INT_STATUS);
>  
> @@ -304,6 +307,13 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
>  
>  		if (irqstat & SDHCI_INT_XFER_COMPLETE)
>  			break;
> +
> +		if (is_timeout(start, 10 * SECOND)) {
> +			dev_alert(dev, "DMA wait timed out. Resetting, but recovery unlikely\n");
> +			sdhci_reset(sdhci, SDHCI_RESET_ALL);
> +			ret = -ETIMEDOUT;
> +			goto out;
> +		}
>  	} while (1);
>  
>  	ret = 0;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


