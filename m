Delivery-date: Wed, 13 Mar 2024 08:46:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJJV-00450V-1y
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 08:46:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJJU-0000aE-Vt
	for lore@pengutronix.de; Wed, 13 Mar 2024 08:46:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fU4yQrbK3BBna6Lyc1r9fUdIMfyoamDlbLCG9dDFguU=; b=yT4Ds+fmXtts9P65O/+DXWxH+n
	sSgR+h2HF5lQjuvREHaX7w/lrbSRezeKLn7mMRgK0slbSf1PiOUO/iIQJQwN23kJoVGwnPMEtiM/M
	9MsgqURCxdMAHM8Cyxgk97Te3qkFgP4AmkNSglJxzjcsxwxcxGBYHFgRcx7Zpj2k3xm95oOsMd3qp
	grviFCzWQUKGflBgwNoT5HBehzH0CebdZXfaQNFOYyk5FZJizEiV95birVKV0H9G92eAWTMd5mumE
	n1Z0QdIGc0cGhYiSAlsUuvbrVuz9fGDWFJLMGIWWxS+E6WdJOZC9uQT0tFWyPvBz10MirrSjkM29A
	s46ujD8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJJ7-00000009EeZ-3HNR;
	Wed, 13 Mar 2024 07:45:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJJ3-00000009Edq-15E4
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 07:45:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rkJJ0-0000Fh-KJ; Wed, 13 Mar 2024 08:45:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rkJJ0-0064Tf-7n; Wed, 13 Mar 2024 08:45:42 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rkJJ0-00FVB0-0W;
	Wed, 13 Mar 2024 08:45:42 +0100
Date: Wed, 13 Mar 2024 08:45:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZfFZppHWRMrkNpCS@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-dma-support-v1-1-079e10b6ea88@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308-v2024-02-0-topic-arasan-dma-support-v1-1-079e10b6ea88@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_004545_381645_D88A2561 
X-CRM114-Status: GOOD (  22.78  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: arasan: add dma write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 08, 2024 at 11:49:59AM +0100, Steffen Trumtrar wrote:
> Switch from PIO to DMA mode in send_cmd.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> Everything needed for the Arasan SDHCI to use DMA instead of PIO is
> already present. Switch to it.
> 
> Tested on: ZynqMP.
> ---
>  drivers/mci/arasan-sdhci.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)

The subject says the patch adds DMA *write* support. It's generally DMA
support, not only for write, right? I fixed that up accordingly while
applying.

Sascha

> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index 59afac7372..973e08779d 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -147,6 +147,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  {
>  	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
>  	u32 mask, command, xfer;
> +	dma_addr_t dma;
>  	int ret;
>  
>  	ret = sdhci_wait_idle(&host->sdhci, cmd);
> @@ -156,13 +157,14 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
>  
>  	mask = SDHCI_INT_CMD_COMPLETE;
> -	if (data && data->flags == MMC_DATA_READ)
> -		mask |= SDHCI_INT_DATA_AVAIL;
>  	if (cmd->resp_type & MMC_RSP_BUSY)
>  		mask |= SDHCI_INT_XFER_COMPLETE;
>  
> -	sdhci_set_cmd_xfer_mode(&host->sdhci,
> -				cmd, data, false, &command, &xfer);
> +	sdhci_setup_data_dma(&host->sdhci, data, &dma);
> +
> +	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
> +				dma == SDHCI_NO_DMA ? false : true,
> +				&command, &xfer);
>  
>  	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
>  	if (data) {
> @@ -174,15 +176,15 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
>  	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
>  
> -	ret = sdhci_wait_for_done(&host->sdhci, mask);
> +	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
>  	if (ret)
>  		goto error;
>  
>  	sdhci_read_response(&host->sdhci, cmd);
> -	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, mask);
> +	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
>  
>  	if (data)
> -		ret = sdhci_transfer_data_pio(&host->sdhci, data);
> +		ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
>  
>  error:
>  	if (ret) {
> 
> ---
> base-commit: ed7c14536d521793199abf0597164a46ba68e8e5
> change-id: 20240308-v2024-02-0-topic-arasan-dma-support-edd318cce298
> 
> Best regards,
> -- 
> Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


