Delivery-date: Wed, 04 Jan 2023 11:42:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD1E5-001LzI-15
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 11:42:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD1E2-0005w2-MF
	for lore@pengutronix.de; Wed, 04 Jan 2023 11:42:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SlcZEWeymEI+ZbxFl4FGIkEyYHAKR4fyb0YFBLqstNM=; b=kgFPuN+h/yAn0XDn4Rbv9kH85d
	jlx024/V90be/mZjb3cydeGgvFjQ74voFCI/nOQiKp8zJZ1DDQux63/qdBws4kL79bNyP4IJAK5TX
	8G0iDD/CT3lYDgKcWoyn/AQRqxkqNVnfoloqUUv0SfThx3ztKU6cXBNUi6rg04ep40OjAyL6Rw9vC
	FzbGxVXyUupwgCfkNvuGRPKDSBTVYLb+ka6nSPtm3rUbk7GHbPHFNs6KpLJyCH7xPT6Zr//wEMozC
	8a3ROKuU+w4vY8HNJ7FqtbFoTHbJcJmjnkCZlwTsHbTF9rwi81lVHYpq5ebjNmP0AOfFP1tzr20WY
	z+Hdu+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD1CM-008Snj-58; Wed, 04 Jan 2023 10:40:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD12s-008OMT-8l
	for barebox@bombadil.infradead.org; Wed, 04 Jan 2023 10:30:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SlcZEWeymEI+ZbxFl4FGIkEyYHAKR4fyb0YFBLqstNM=; b=HTLF0JBNH3l4JOXvU6wANi8mV4
	894tgZszc8q3rtc8O2SRMSFEfKbDiCeRPFNoujWvDmGzbiZjEmGqnAf2kWx/JsdDvi1V1HONI1yVD
	OBdw3j3TtcQqJYRg7hERccixFehOLscpcaHXalJNonNDZ1yilERYaJm/eY5tVcwwLxYx9EH1byuge
	188MLW22QDhC8BMRZcQOizeoPjxcnMnNv18sE42CTTkHhVk2BCPKjL0802T+nCEpLVCUD4ehupwbN
	2Ja32s9hsR7i+xlgcsT41NeKzYsqZ/jH8+dviFpu4RagdGxMthcA8eHKtoHCRUhIJpRnP19GwO7na
	1Bf/jL3g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pD12i-000uos-08
	for barebox@lists.infradead.org;
	Wed, 04 Jan 2023 10:30:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD12b-0004RZ-PP; Wed, 04 Jan 2023 11:30:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD12a-0007Qw-Tj; Wed, 04 Jan 2023 11:30:36 +0100
Date: Wed, 4 Jan 2023 11:30:36 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org,
	Michael Graichen <michael.graichen@hotmail.com>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <20230104103036.GO11668@pengutronix.de>
References: <20230103220317.466767-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230103220317.466767-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_103044_198397_F806A038 
X-CRM114-Status: GOOD (  27.94  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: sdhci: arasan: fix probing eMMC without no-sd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 03, 2023 at 11:03:17PM +0100, Ahmad Fatoum wrote:
> Usual procedure when calling the detect callback of a MCI host driver is
> to assume the connected card is a SD-Card and on timeout, treat it as
> MMC instead. The Arasan driver failed to do this properly leading to the
> need to specify no-sd to get eMMCs working. This is because the driver
> only handled software timeouts gracefully: The MCI host itself may also
> report timeout and it should not be treated as an error and instead
> should be silently passed along as -ETIMEDOUT, so the MCI core can check
> against it and fall back to eMMC after a failed probe for SD.
> 
> Reported-by: Michael Graichen <michael.graichen@hotmail.com>
> Reported-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Cc: Yann Sionneau <ysionneau@kalray.eu>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/mci/arasan-sdhci.c | 24 +++++++++++++-----------
>  1 file changed, 13 insertions(+), 11 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index 22389503becf..00a8ceed6836 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -136,16 +136,17 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
>  static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
>  {
>  	u64 start = get_time_ns();
> -	u16 stat;
> -	u16 error;
> +	u32 stat;
>  
>  	do {
> -		stat = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
> +		stat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
> +
> +		if (stat & SDHCI_INT_TIMEOUT)
> +			return -ETIMEDOUT;
> +
>  		if (stat & SDHCI_INT_ERROR) {
> -			error = sdhci_read16(&host->sdhci,
> -					     SDHCI_INT_ERROR_STATUS);
>  			dev_err(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
> -				error);
> +				stat);
>  			return -EPERM;
>  		}
>  
> @@ -159,8 +160,11 @@ static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
>  	return 0;
>  }
>  
> -static void print_error(struct arasan_sdhci_host *host, int cmdidx)
> +static void print_error(struct arasan_sdhci_host *host, int cmdidx, int ret)
>  {
> +	if (ret == -ETIMEDOUT)
> +		return;
> +
>  	dev_err(host->mci.hw_dev,
>  		"error while transferring data for command %d\n", cmdidx);
>  	dev_err(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
> @@ -210,10 +214,8 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
>  
>  	ret = arasan_sdhci_wait_for_done(host, mask);
> -	if (ret == -EPERM)
> +	if (ret)
>  		goto error;
> -	else if (ret)
> -		return ret;
>  
>  	sdhci_read_response(&host->sdhci, cmd);
>  	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, mask);
> @@ -223,7 +225,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  
>  error:
>  	if (ret) {
> -		print_error(host, cmd->cmdidx);
> +		print_error(host, cmd->cmdidx, ret);
>  		arasan_sdhci_reset(host, BIT(1)); // SDHCI_RESET_CMD
>  		arasan_sdhci_reset(host, BIT(2)); // SDHCI_RESET_DATA
>  	}
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


