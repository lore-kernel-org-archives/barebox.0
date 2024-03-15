Delivery-date: Fri, 15 Mar 2024 13:19:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6Wn-007qps-2h
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 13:19:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6Wn-0001rX-6A
	for lore@pengutronix.de; Fri, 15 Mar 2024 13:19:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CsBAWgJAijl8bjD/0nD4vBGyCuXVaBjixzrjYToJw6Y=; b=xtXU9t18OyZs1hjn2k82wMDkzN
	F8Q+m33Bt5NZGVD5P6XrxE4I7bBx8EMjmU5B8dIri179ev3rwgd9qNsKge1qbDNn6VjQIjSBZ6ax8
	T55DLzMyZN1Whu0cw9oNDUYkdv33TckxLsg5IXnPMxfp6BfOfkTP2uw31bk7fnT4HaLsMNUeg1i+c
	iN3MMqfeJVFs6PoEkE9evwtsulX9cMLJKMtBTVF1UJzxdAAjQfzlehnr6MGo4gNUjpTVxHxsJ6a84
	foR8pOxtCR/lMIMB4s67XOIzGBztIjHPVLKYl2vrhORIzzlM3gkmBBtGAhn8mSNziSvTGQ+cGPIaZ
	k/xu6kQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6WJ-00000000A7f-3ZkX;
	Fri, 15 Mar 2024 12:18:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6WF-00000000A5c-1pOm
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 12:18:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rl6WD-0001TL-ST; Fri, 15 Mar 2024 13:18:37 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rl6WD-006V5a-GF; Fri, 15 Mar 2024 13:18:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rl6WD-0012AN-1K;
	Fri, 15 Mar 2024 13:18:37 +0100
Date: Fri, 15 Mar 2024 13:18:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ZfQ8nZLimv4L5jPy@pengutronix.de>
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
 <20240314-v2024-02-0-topic-arasan-hs200-support-v2-13-0386c27fe653@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-13-0386c27fe653@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_051839_512276_FC7396E0 
X-CRM114-Status: GOOD (  25.76  )
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
Subject: Re: [PATCH v2 13/14] mci: arasan-sdhci: add HS200 tuning support on
 ZynqMP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 14, 2024 at 07:47:36PM +0100, Steffen Trumtrar wrote:
> The ZynpMP 8.9a has an Arasan IP core that supports HS200 tuning.
> Register the callback with the mci-core.
> 
> Arasan uses the SDHCI tuning method.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/arasan-sdhci.c | 62 +++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 59 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index eb81ff907b..80489e98f4 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -128,6 +128,46 @@ static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
>  	return 0;
>  }
>  
> +static void arasan_zynqmp_dll_reset(struct arasan_sdhci_host *host, u32 deviceid)
> +{
> +	u16 clk;
> +
> +	clk = sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL);
> +	clk &= ~(SDHCI_CLOCK_CARD_EN | SDHCI_CLOCK_INT_EN);
> +	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, clk);
> +
> +	/* Issue DLL Reset */
> +	zynqmp_pm_sd_dll_reset(deviceid, PM_DLL_RESET_PULSE);
> +
> +	clk = sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL);
> +
> +	sdhci_enable_clk(&host->sdhci, clk);
> +}
> +
> +static int arasan_zynqmp_execute_tuning(struct mci_host *mci, u32 opcode)
> +{
> +	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
> +	struct clk_hw *hw = &host->clk_data.sdcardclk_hw;
> +	const char *clk_name = clk_hw_get_name(hw);
> +	u32 device_id = !strcmp(clk_name, "clk_out_sd0") ? NODE_SD_0 :
> +							   NODE_SD_1;
> +	int err;
> +
> +	/* ZynqMP SD controller does not perform auto tuning in DDR50 mode */
> +	if (mci->timing == MMC_TIMING_UHS_DDR50)
> +		return 0;
> +
> +	arasan_zynqmp_dll_reset(host, device_id);
> +
> +	err = sdhci_execute_tuning(&host->sdhci, opcode);
> +	if (err)
> +		return err;
> +
> +	arasan_zynqmp_dll_reset(host, device_id);
> +
> +	return 0;
> +}
> +
>  static int arasan_sdhci_init(struct mci_host *mci, struct device *dev)
>  {
>  	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
> @@ -226,8 +266,9 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  				cmd, data, false, &command, &xfer);
>  
>  	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
> -	if (data) {
> +	if (xfer)
>  		sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
> +	if (data) {
>  		sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE,
>  			      SDHCI_DMA_BOUNDARY_512K | SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
>  		sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
> @@ -235,6 +276,10 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
>  	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
>  
> +	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
> +	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK || cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200)
> +		mask = SDHCI_INT_DATA_AVAIL;
> +

Thist hunk conflicts with b80c0e1ec6 ("mci: arasan: add dma support"):

<<<<<<< HEAD
	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
=======
	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK || cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200)
		mask = SDHCI_INT_DATA_AVAIL;

	ret = sdhci_wait_for_done(&host->sdhci, mask);
>>>>>>> for-next/mmc-hs200

I am not sure how to resolve this just by looking at it. Please rebase
your series on that patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


