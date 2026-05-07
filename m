Delivery-date: Thu, 07 May 2026 10:14:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKts7-001tm4-34
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:14:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKts2-0003Ix-Sw
	for lore@pengutronix.de; Thu, 07 May 2026 10:14:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Jw72619Z6MU7185XsHamAxlz2CPsx/sw9v9xn1bGgc=; b=Aoja+DC0r3VDGUv71rHsHmpKV9
	NPnvvwYZflDVRl8oPBtyml63fBMKBxzaZlsYwCE97Q/UoLPCXPsY2vKPi3xldOsqZXOtdWn1kL90V
	uoLN/ipObKKBdFUp00FCkm4IVm8MI2qlFfFMLeo2WsNRSFVtmShWF3kT+Udwlq8DXRD87dxYwKCtj
	VcheYgnf1onP9dAFOgyO4pwUL7HResX8mOoQMBnywAljW7xP6YUFn8UxLD73MKTa3yPhEueaW4tMx
	oAb1V6Wl9Tim9uIWvzXIrsG6mx0XAxjKAntBmgGxNXKHj4NszeJmEp1nwSfRxCTUFyiz5zEG5O/RL
	cW3X2+ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtpv-000000036zj-212D;
	Thu, 07 May 2026 08:11:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtps-000000036yN-0ek7
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 08:11:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKtpq-000215-Mp; Thu, 07 May 2026 10:11:54 +0200
Message-ID: <18ab93be-5095-49fa-befa-d6110dd9302b@pengutronix.de>
Date: Thu, 7 May 2026 10:11:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
 <20260507-rockchip-emmc-v1-3-5e8109e8059d@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260507-rockchip-emmc-v1-3-5e8109e8059d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_011156_201823_FFC37B26 
X-CRM114-Status: GOOD (  16.38  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/6] mci: sdhci: rockchip: Wait for transfer complete
 interrupt with MMC_RSP_BUSY cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 5/7/26 9:02 AM, Sascha Hauer wrote:
> The MMC_RSP_BUSY flag indicates that we have to wait for the transfer
> completion interrupt. Other SDHCI drivers do this, but the rockchip driver
> missed it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 398c258fb9..2605a1368f 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -251,7 +251,7 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
>  {
>  	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
>  	struct mci_data *data = cmd->data;
> -	u32 command, xfer;
> +	u32 mask, command, xfer;
>  	int ret;
>  	dma_addr_t dma;
>  
> @@ -261,6 +261,10 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
>  
>  	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
>  
> +	mask = SDHCI_INT_CMD_COMPLETE;
> +	if (cmd->resp_type & MMC_RSP_BUSY)
> +		mask |= SDHCI_INT_XFER_COMPLETE;
> +
>  	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
>  
>  	sdhci_setup_data_dma(&host->sdhci, data, &dma);
> @@ -274,7 +278,7 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
>  	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
>  	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
>  
> -	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
> +	ret = sdhci_wait_for_done(&host->sdhci, mask);
>  	if (ret) {
>  		sdhci_teardown_data(&host->sdhci, data, dma);
>  		goto error;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



