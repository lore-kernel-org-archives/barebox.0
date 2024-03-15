Delivery-date: Fri, 15 Mar 2024 12:57:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6BS-007p7l-2h
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 12:57:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6BS-0003jW-26
	for lore@pengutronix.de; Fri, 15 Mar 2024 12:57:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=90c+74KxJUeBd5P86wI7z00flwDcO3YTwqopboo+Z5w=; b=sqUyFZDKkCyHKecgDWvsPt1NOg
	09P7t465rt8kCwpI1W1fuU9xpk2aOw3tKlGjFjqL4RyrLyWbI7yUnL7Ypr1XLFZ9IaC/SmLE0GLjm
	v09Uka2DregIqZdLPOGgNL61vQ1Cf722AJE+qEviKTwW4y/wOenc/kk06wm8CQ3oxgPm+LMEzOtNf
	DS1dpQD5tTQ7zOJQA+TsL7d4MkUY5ml3nurO0T9npVM0VSAkTkP1fSw+PM2FORm5OcHxomiriDXS/
	YMcvVAynrpPrPxZdxGzl7fA9xjQ1dyyE7XwpM1HCMEuakEArFXvL7llgugFDKj5rV0kBHlGdcroLf
	HxPIo2rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6B0-000000006YQ-3qeX;
	Fri, 15 Mar 2024 11:56:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6Ax-000000006Xm-2RvP
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 11:56:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rl6Aw-0002lT-5P; Fri, 15 Mar 2024 12:56:38 +0100
Message-ID: <70d1da6a-3e13-49ee-b4d9-46b31981cb73@pengutronix.de>
Date: Fri, 15 Mar 2024 12:56:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
 <20240314-v2024-02-0-topic-arasan-hs200-support-v2-14-0386c27fe653@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-14-0386c27fe653@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_045639_809284_9D72C395 
X-CRM114-Status: GOOD (  22.23  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 14/14] mci: sdhci: replace sdhci_wait_idle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.03.24 19:47, Steffen Trumtrar wrote:
> Linux uses a different sdhci_wait_idle function than what barebox
> currently does. For HS200 support, the linux version needs to be used.
> As currently only arasan-sdhci is tested with HS200, keep the old
> sdhci_wait_idle as sdhci_wait_idle_data and convert all users of it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

I would have split this up into two commits, but this is ok too:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/am654-sdhci.c            |  2 +-
>  drivers/mci/arasan-sdhci.c           |  2 +-
>  drivers/mci/atmel-sdhci-common.c     |  4 ++--
>  drivers/mci/dove-sdhci.c             |  2 +-
>  drivers/mci/mci-bcm2835.c            |  2 +-
>  drivers/mci/rockchip-dwcmshc-sdhci.c |  2 +-
>  drivers/mci/sdhci.c                  | 29 +++++++++++++++++++++++++++--
>  drivers/mci/sdhci.h                  |  3 ++-
>  8 files changed, 36 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
> index 1d94834c1a..391b65591c 100644
> --- a/drivers/mci/am654-sdhci.c
> +++ b/drivers/mci/am654-sdhci.c
> @@ -471,7 +471,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	int ret;
>  	dma_addr_t dma;
>  
> -	ret = sdhci_wait_idle(&host->sdhci, cmd);
> +	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index 80489e98f4..0a06308dbe 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -250,7 +250,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	u32 mask, command, xfer;
>  	int ret;
>  
> -	ret = sdhci_wait_idle(&host->sdhci, cmd);
> +	ret = sdhci_wait_idle(&host->sdhci, cmd, data);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
> index a69d6b67b5..082ce842f7 100644
> --- a/drivers/mci/atmel-sdhci-common.c
> +++ b/drivers/mci/atmel-sdhci-common.c
> @@ -98,7 +98,7 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
>  	int status;
>  	int ret;
>  
> -	ret = sdhci_wait_idle(&host->sdhci, cmd);
> +	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
>  	if (ret)
>  		return ret;
>  
> @@ -188,7 +188,7 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
>  	u32 caps, caps_clk_mult;
>  	int ret;
>  
> -	ret = sdhci_wait_idle(&host->sdhci, NULL);
> +	ret = sdhci_wait_idle_data(&host->sdhci, NULL);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
> index 8a4c4a11b4..d37046ad31 100644
> --- a/drivers/mci/dove-sdhci.c
> +++ b/drivers/mci/dove-sdhci.c
> @@ -62,7 +62,7 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	unsigned int num_bytes = 0;
>  	struct dove_sdhci *host = priv_from_mci_host(mci);
>  
> -	ret = sdhci_wait_idle(&host->sdhci, cmd);
> +	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index 2b541e4c05..455ce994f7 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -128,7 +128,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
>  		block_data |= data->blocksize;
>  	}
>  
> -	ret = sdhci_wait_idle(&host->sdhci, cmd);
> +	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 03f463a3f6..f503dbae65 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -249,7 +249,7 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	int ret;
>  	dma_addr_t dma;
>  
> -	ret = sdhci_wait_idle(&host->sdhci, cmd);
> +	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index 7dedd5a7b2..8bba1e3bf9 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -788,7 +788,32 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
>  	sdhci_write16(host, SDHCI_CLOCK_CONTROL, clk);
>  }
>  
> -int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd)
> +int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
> +{
> +	u32 mask;
> +	int ret;
> +
> +	mask = SDHCI_CMD_INHIBIT_CMD;
> +
> +	if (data || (cmd && (cmd->resp_type & MMC_RSP_BUSY)))
> +		mask |= SDHCI_CMD_INHIBIT_DATA;
> +
> +	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
> +		mask &= ~SDHCI_CMD_INHIBIT_DATA;
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
> +int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
>  {
>  	u32 mask;
>  	int ret;
> @@ -820,7 +845,7 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
>  
>  	sdhci_set_uhs_signaling(host, host->mci->timing);
>  
> -	sdhci_wait_idle(host, NULL);
> +	sdhci_wait_idle_data(host, NULL);
>  
>  	sdhci_write16(host, SDHCI_CLOCK_CONTROL, 0);
>  
> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index f10a801c88..15ce2b92b6 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -309,7 +309,8 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
>  
>  #define SDHCI_NO_DMA DMA_ERROR_CODE
>  int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode);
> -int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd);
> +int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd);
> +int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data);
>  int sdhci_wait_for_done(struct sdhci *host, u32 mask);
>  void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
>  void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



