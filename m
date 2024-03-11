Delivery-date: Mon, 11 Mar 2024 09:42:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbFK-000nrs-38
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:42:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbFK-0007wZ-Ch
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:42:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RIFP9BCMKDwrQJHyQ3tKDQUGX5dCPM+1XRuem+VFtcg=; b=bPQxzNM3k0ULfTyHCgch2MdKwj
	Ab7HoOLBW4wX0KWmb6KNqmMxB1J82rgMqBvys6KW76eskUEvGD+MoeRr1j0buMuLdQoE1dRBPbThx
	QjD957q7xL9ar2Hi2/X9/Ihda0n2CYNezGwxs1XLipvax4jImbV8UORrzRGIETPzq7nmmDAMVUOXJ
	ANt6mOQbMQJYwrKm5iZgS2yVHIEJYaIvmTwCpBeBFSnEACvYtY0sc4cn9UgSMRnuFYCMGjk1MEKFl
	EbLQEBSLd+xd337pRvNcwk3qyGPkCEjTeAJi1QizwUxDqpidchlWGv2x6udscsI/ctkFXzfqkcg1o
	6lJ+VFSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbEm-00000000eyu-2CEv;
	Mon, 11 Mar 2024 08:42:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbEi-00000000exn-3L9l
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:42:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjbEh-0007YF-5W; Mon, 11 Mar 2024 09:42:19 +0100
Message-ID: <09d3dc08-968b-49a6-b78f-5e7e6a0b93d7@pengutronix.de>
Date: Mon, 11 Mar 2024 09:42:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-12-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-12-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_014220_934255_85781C33 
X-CRM114-Status: GOOD (  17.17  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 12/12] mci: arasan: use sdhci_wait_idle2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Steffen,

On 08.03.24 12:17, Steffen Trumtrar wrote:
> To support HS200 mode, the arasan needs a differernt sdhci_wait_idle
> function. Remove the default CMD_INHIBIT_DATA, otherwise the sdhci hs200
> tuning will timeout.

AFAICS, this new sdhci_wait_idle2 is what Linux does by default. Given
that we will want to replace existing sdhci_wait_idle with the new
version, I think you should rename the old one to sdhci_wait_idle_data()
or similar and add sdhci_wait_idle2 without the 2.

> +	mask = SDHCI_CMD_INHIBIT_CMD;
> +
> +	if (data || (cmd->resp_type & MMC_RSP_BUSY))
> +		mask |= SDHCI_CMD_INHIBIT_DATA;

Here cmd is de-referenced unconditionally.

> +
> +	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
> +		mask &= ~SDHCI_CMD_INHIBIT_DATA;

Here, it's checked after the fact. Can you add a cmd && check in the hunk
before too?

Cheers,
Ahmad

> +
> +	ret = wait_on_timeout(10 * MSECOND,
> +			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
> +
> +	if (ret) {
> +		dev_err(host->mci->hw_dev,
> +				"SDHCI timeout while waiting for idle\n");
> +		return -EBUSY;
> +	}
> +
> +	return 0;
> +}
> +
>  int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd)
>  {
>  	u32 mask;
> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index 80916e670f..80c3f98c9c 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -307,6 +307,7 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
>  #define SDHCI_NO_DMA DMA_ERROR_CODE
>  int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode);
>  int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd);
> +int sdhci_wait_idle2(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data);
>  int sdhci_wait_for_done(struct sdhci *host, u32 mask);
>  void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
>  void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



