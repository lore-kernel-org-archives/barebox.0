Delivery-date: Fri, 15 Mar 2024 12:58:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6D2-007pFr-28
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 12:58:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6D1-0004qm-GR
	for lore@pengutronix.de; Fri, 15 Mar 2024 12:58:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kuukfEQJ88b6uFHktXkygCj4FJ7AtXysZFDJLIOl1Zk=; b=jfQpUENZowc/AdzDoTR24IVkzs
	QvmDe6tA4qaWn8G17PzMr2hCjUQ0m7ayhzRlKDGblLuqoLuvzfqOGSCz3SmtxU7XP/ze/vj5sXZay
	gO9PC25WninpwgFtfd6txnKR2C+rc+KWQvtWQPFZIXF4qVGjt43tQGyHVGFFQz4/vVnnHGqoQecMW
	nyDKphYbr/vSSqjrCLcBDK9CAhi5yQBK1B2hr2+ES4l+aGL2GJWl3J7/2MFf/G4HNxUf/u3kBIPFB
	Bah/7nFybKkk2/7Rw+uPyrGHay7MIB/WKUpSJaElZt4BQ4bx3TFSJe6qA1vM32e4hPp5rWBy7MiO3
	NJBD36tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6CW-000000006hN-05gV;
	Fri, 15 Mar 2024 11:58:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6CS-000000006gI-2MU9
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 11:58:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rl6CR-0002lT-0l; Fri, 15 Mar 2024 12:58:11 +0100
Message-ID: <b22b72d1-e826-485a-bf82-1fb2fc2a6071@pengutronix.de>
Date: Fri, 15 Mar 2024 12:58:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
 <20240314-v2024-02-0-topic-arasan-hs200-support-v2-12-0386c27fe653@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-12-0386c27fe653@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_045812_978977_CE0697C1 
X-CRM114-Status: GOOD (  41.76  )
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
Subject: Re: [PATCH v2 12/14] mci: sdhci: add tuning support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.03.24 19:47, Steffen Trumtrar wrote:
> The arasan SDHCI driver doesn't use MMC tuning but SDHCI tuning. Both
> are not supported yet in barebox.
> Add SDHCI tuning support from linux v6.7.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/sdhci.c | 275 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  drivers/mci/sdhci.h |  27 ++++++
>  2 files changed, 301 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index edb819d66d..7dedd5a7b2 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -9,6 +9,227 @@
>  
>  #include "sdhci.h"
>  
> +#define MAX_TUNING_LOOP 40
> +#define  SDHCI_MAKE_BLKSZ(dma, blksz) (((dma & 0x7) << 12) | (blksz & 0xFFF))
> +
> +enum sdhci_reset_reason {
> +	SDHCI_RESET_FOR_INIT,
> +	SDHCI_RESET_FOR_REQUEST_ERROR,
> +	SDHCI_RESET_FOR_REQUEST_ERROR_DATA_ONLY,
> +	SDHCI_RESET_FOR_TUNING_ABORT,
> +	SDHCI_RESET_FOR_CARD_REMOVED,
> +	SDHCI_RESET_FOR_CQE_RECOVERY,
> +};
> +
> +static void sdhci_reset_for_reason(struct sdhci *host, enum sdhci_reset_reason reason)
> +{
> +	if (host->quirks2 & SDHCI_QUIRK2_ISSUE_CMD_DAT_RESET_TOGETHER) {
> +		sdhci_reset(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
> +		return;
> +	}
> +
> +	switch (reason) {
> +	case SDHCI_RESET_FOR_INIT:
> +		sdhci_reset(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
> +		break;
> +	case SDHCI_RESET_FOR_REQUEST_ERROR:
> +	case SDHCI_RESET_FOR_TUNING_ABORT:
> +	case SDHCI_RESET_FOR_CARD_REMOVED:
> +	case SDHCI_RESET_FOR_CQE_RECOVERY:
> +		sdhci_reset(host, SDHCI_RESET_CMD);
> +		sdhci_reset(host, SDHCI_RESET_DATA);
> +		break;
> +	case SDHCI_RESET_FOR_REQUEST_ERROR_DATA_ONLY:
> +		sdhci_reset(host, SDHCI_RESET_DATA);
> +		break;
> +	}
> +}
> +
> +#define sdhci_reset_for(h, r) sdhci_reset_for_reason((h), SDHCI_RESET_FOR_##r)
> +
> +static int sdhci_send_command_retry(struct sdhci *host, struct mci_cmd *cmd)
> +{
> +	int timeout = 10;
> +
> +	while ((sdhci_read32(host, SDHCI_PRESENT_STATE) & SDHCI_CMD_INHIBIT_CMD)) {
> +		if (!timeout--)
> +			return -ETIMEDOUT;
> +
> +		mdelay(1);
> +	}
> +
> +	return host->mci->send_cmd(host->mci, cmd, NULL);
> +}
> +
> +/*
> + * We use sdhci_send_tuning() because mmc_send_tuning() is not a good fit. SDHCI
> + * tuning command does not have a data payload (or rather the hardware does it
> + * automatically) so mmc_send_tuning() will return -EIO. Also the tuning command
> + * interrupt setup is different to other commands and there is no timeout
> + * interrupt so special handling is needed.
> + */
> +static int sdhci_send_tuning(struct sdhci *host, u32 opcode)
> +{
> +	struct mci_cmd cmd = {};
> +	int ret;
> +
> +	cmd.cmdidx = opcode;
> +	cmd.resp_type = MMC_RSP_R1 | MMC_CMD_ADTC;
> +
> +	/*
> +	 * In response to CMD19, the card sends 64 bytes of tuning
> +	 * block to the Host Controller. So we set the block size
> +	 * to 64 here.
> +	 */
> +	if (cmd.cmdidx == MMC_SEND_TUNING_BLOCK_HS200 &&
> +	    host->mci->bus_width == MMC_BUS_WIDTH_8) {
> +		sdhci_write16(host, SDHCI_BLOCK_SIZE, SDHCI_MAKE_BLKSZ(7, 128));
> +	} else {
> +		sdhci_write16(host, SDHCI_BLOCK_SIZE, SDHCI_MAKE_BLKSZ(7, 64));
> +	}
> +
> +	ret = sdhci_send_command_retry(host, &cmd);
> +
> +	return ret;
> +}
> +
> +static void sdhci_end_tuning(struct sdhci *host)
> +{
> +	sdhci_write32(host, SDHCI_INT_ENABLE, host->tuning_old_ier);
> +	sdhci_write32(host, SDHCI_SIGNAL_ENABLE, host->tuning_old_sig);
> +}
> +
> +static void sdhci_start_tuning(struct sdhci *host)
> +{
> +	u16 ctrl;
> +
> +	ctrl = sdhci_read16(host, SDHCI_HOST_CONTROL2);
> +	ctrl |= SDHCI_CTRL_EXEC_TUNING;
> +	sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl);
> +
> +	mdelay(1);
> +
> +	host->tuning_old_ier = sdhci_read32(host, SDHCI_INT_ENABLE);
> +	host->tuning_old_sig = sdhci_read32(host, SDHCI_SIGNAL_ENABLE);
> +
> +	sdhci_write32(host, SDHCI_INT_ENABLE, SDHCI_INT_DATA_AVAIL);
> +	sdhci_write32(host, SDHCI_SIGNAL_ENABLE, SDHCI_INT_DATA_AVAIL);
> +}
> +
> +static void sdhci_reset_tuning(struct sdhci *host)
> +{
> +	u16 ctrl;
> +
> +	ctrl = sdhci_read16(host, SDHCI_HOST_CONTROL2);
> +	ctrl &= ~SDHCI_CTRL_TUNED_CLK;
> +	ctrl &= ~SDHCI_CTRL_EXEC_TUNING;
> +	sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl);
> +}
> +
> +static void sdhci_abort_tuning(struct sdhci *host, u32 opcode)
> +{
> +	sdhci_reset_tuning(host);
> +
> +	sdhci_reset_for(host, TUNING_ABORT);
> +
> +	sdhci_end_tuning(host);
> +
> +	mci_send_abort_tuning(host->mci->mci, opcode);
> +}
> +
> +static int __sdhci_execute_tuning(struct sdhci *host, u32 opcode)
> +{
> +	int i;
> +	int ret;
> +
> +	/*
> +	 * Issue opcode repeatedly till Execute Tuning is set to 0 or the number
> +	 * of loops reaches tuning loop count.
> +	 * Some controllers are known to always require 40 iterations.
> +	 */
> +	for (i = 0; i < host->tuning_loop_count; i++) {
> +		u16 ctrl;
> +
> +		ret = sdhci_send_tuning(host, opcode);
> +		if (ret) {
> +			sdhci_abort_tuning(host, opcode);
> +			return -ETIMEDOUT;
> +		}
> +
> +		/* Spec does not require a delay between tuning cycles */
> +		if (host->tuning_delay > 0)
> +			mdelay(host->tuning_delay);
> +
> +		ctrl = sdhci_read16(host, SDHCI_HOST_CONTROL2);
> +		if (!(ctrl & SDHCI_CTRL_EXEC_TUNING)) {
> +			if (ctrl & SDHCI_CTRL_TUNED_CLK) {
> +				return 0; /* Success! */
> +			}
> +			break;
> +		}
> +
> +	}
> +
> +	dev_dbg(&host->mci->mci->dev, "Tuning timeout, falling back to fixed sampling clock\n");
> +	sdhci_reset_tuning(host);
> +	return -EAGAIN;
> +}
> +
> +int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode)
> +{
> +	struct mci_host *host = sdhci->mci;
> +	int err = 0;
> +	unsigned int tuning_count = 0;
> +
> +	if (sdhci->tuning_mode == SDHCI_TUNING_MODE_1)
> +		tuning_count = sdhci->tuning_count;
> +
> +	/*
> +	 * The Host Controller needs tuning in case of SDR104 and DDR50
> +	 * mode, and for SDR50 mode when Use Tuning for SDR50 is set in
> +	 * the Capabilities register.
> +	 * If the Host Controller supports the HS200 mode then the
> +	 * tuning function has to be executed.
> +	 */
> +	switch (host->timing) {
> +	/* HS400 tuning is done in HS200 mode */
> +	case MMC_TIMING_MMC_HS400:
> +		err = -EINVAL;
> +		goto out;
> +
> +	case MMC_TIMING_MMC_HS200:
> +		break;
> +
> +	case MMC_TIMING_UHS_SDR104:
> +	case MMC_TIMING_UHS_DDR50:
> +		break;
> +
> +	case MMC_TIMING_UHS_SDR50:
> +		fallthrough;
> +
> +	default:
> +		goto out;
> +	}
> +
> +	if (sdhci->platform_execute_tuning) {
> +		err = sdhci->platform_execute_tuning(host, opcode);
> +		goto out;
> +	}
> +
> +	if (sdhci->tuning_delay < 0)
> +		sdhci->tuning_delay = opcode == MMC_SEND_TUNING_BLOCK;
> +
> +	sdhci_start_tuning(sdhci);
> +
> +	sdhci->tuning_err = __sdhci_execute_tuning(sdhci, opcode);
> +
> +	sdhci_end_tuning(sdhci);
> +out:
> +
> +	return err;
> +}
> +EXPORT_SYMBOL_GPL(sdhci_execute_tuning);
> +
>  void sdhci_read_response(struct sdhci *sdhci, struct mci_cmd *cmd)
>  {
>  	if (cmd->resp_type & MMC_RSP_136) {
> @@ -50,7 +271,12 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
>  
>  	*command |= SDHCI_CMD_INDEX(cmd->cmdidx);
>  
> -	if (data) {
> +	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK ||
> +	    cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200) {
> +		*command |= SDHCI_DATA_PRESENT;
> +		*xfer = SDHCI_DATA_TO_HOST;
> +
> +	} else if (data) {
>  		*command |= SDHCI_DATA_PRESENT;
>  
>  		*xfer |= SDHCI_BLOCK_COUNT_EN;
> @@ -111,6 +337,31 @@ void sdhci_set_bus_width(struct sdhci *host, int width)
>  	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
>  }
>  
> +static void sdhci_set_uhs_signaling(struct sdhci *host, unsigned timing)
> +{
> +	u16 ctrl_2;
> +
> +	ctrl_2 = sdhci_read16(host, SDHCI_HOST_CONTROL2);
> +	/* Select Bus Speed Mode for host */
> +	ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
> +	if ((timing == MMC_TIMING_MMC_HS200) ||
> +	    (timing == MMC_TIMING_UHS_SDR104))
> +		ctrl_2 |= SDHCI_CTRL_UHS_SDR104;
> +	else if (timing == MMC_TIMING_UHS_SDR12)
> +		ctrl_2 |= SDHCI_CTRL_UHS_SDR12;
> +	else if (timing == MMC_TIMING_UHS_SDR25)
> +		ctrl_2 |= SDHCI_CTRL_UHS_SDR25;
> +	else if (timing == MMC_TIMING_UHS_SDR50)
> +		ctrl_2 |= SDHCI_CTRL_UHS_SDR50;
> +	else if ((timing == MMC_TIMING_UHS_DDR50) ||
> +		 (timing == MMC_TIMING_MMC_DDR52))
> +		ctrl_2 |= SDHCI_CTRL_UHS_DDR50;
> +	else if (timing == MMC_TIMING_MMC_HS400)
> +		ctrl_2 |= SDHCI_CTRL_HS400; /* Non-standard */
> +	sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl_2);
> +}
> +EXPORT_SYMBOL_GPL(sdhci_set_uhs_signaling);
> +
>  static inline bool sdhci_can_64bit_dma(struct sdhci *host)
>  {
>  	/*
> @@ -567,6 +818,8 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
>  
>  	host->mci->clock = 0;
>  
> +	sdhci_set_uhs_signaling(host, host->mci->timing);
> +
>  	sdhci_wait_idle(host, NULL);
>  
>  	sdhci_write16(host, SDHCI_CLOCK_CONTROL, 0);
> @@ -695,5 +948,25 @@ int sdhci_setup_host(struct sdhci *host)
>  	if (sdhci_can_64bit_dma(host))
>  		host->flags |= SDHCI_USE_64_BIT_DMA;
>  
> +	if ((mci->caps2 & (MMC_CAP2_HS200_1_8V_SDR | MMC_CAP2_HS400_1_8V)))
> +		host->flags |= SDHCI_SIGNALING_180;
> +
> +	host->tuning_delay = -1;
> +	host->tuning_loop_count = MAX_TUNING_LOOP;
> +
> +	/* Initial value for re-tuning timer count */
> +	host->tuning_count = FIELD_GET(SDHCI_RETUNING_TIMER_COUNT_MASK,
> +				       host->caps1);
> +
> +	/*
> +	 * In case Re-tuning Timer is not disabled, the actual value of
> +	 * re-tuning timer will be 2 ^ (n - 1).
> +	 */
> +	if (host->tuning_count)
> +		host->tuning_count = 1 << (host->tuning_count - 1);
> +
> +	/* Re-tuning mode supported by the Host Controller */
> +	host->tuning_mode = FIELD_GET(SDHCI_RETUNING_MODE_MASK, host->caps1);
> +
>  	return 0;
>  }
> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index 2139498855..f10a801c88 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -28,9 +28,11 @@
>  #define SDHCI_TRANSFER_MODE					0x0c
>  #define  SDHCI_MULTIPLE_BLOCKS			BIT(5)
>  #define  SDHCI_DATA_TO_HOST			BIT(4)
> +#define  SDHCI_TRNS_AUTO_CMD12			BIT(3)
>  #define  SDHCI_BLOCK_COUNT_EN			BIT(1)
>  #define  SDHCI_DMA_EN				BIT(0)
>  #define SDHCI_COMMAND						0x0e
> +#define  SDHCI_MAKE_CMD(c, f) 			(((c & 0xff) << 8) | (f & 0xff))
>  #define  SDHCI_CMD_INDEX(c)			(((c) & 0x3f) << 8)
>  #define  SDHCI_COMMAND_CMDTYP_SUSPEND		(1 << 6)
>  #define  SDHCI_COMMAND_CMDTYP_RESUME		(2 << 6)
> @@ -121,6 +123,15 @@
>  #define SDHCI_SIGNAL_ENABLE					0x38
>  #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
>  #define SDHCI_HOST_CONTROL2					0x3E
> +#define  SDHCI_CTRL_UHS_MASK			GENMASK(3, 0)
> +#define   SDHCI_CTRL_UHS_SDR12			0x0
> +#define   SDHCI_CTRL_UHS_SDR25			0x1
> +#define   SDHCI_CTRL_UHS_SDR50			0x2
> +#define   SDHCI_CTRL_UHS_SDR104			0x3
> +#define   SDHCI_CTRL_UHS_DDR50			0x4
> +#define   SDHCI_CTRL_HS400			0x5 /* Non-standard */
> +#define  SDHCI_CTRL_EXEC_TUNING			BIT(6)
> +#define  SDHCI_CTRL_TUNED_CLK			BIT(7)
>  #define  SDHCI_CTRL_64BIT_ADDR			BIT(13)
>  #define  SDHCI_CTRL_V4_MODE			BIT(12)
>  #define SDHCI_CAPABILITIES					0x40
> @@ -225,12 +236,27 @@ struct sdhci {
>  #define SDHCI_QUIRK_MISSING_CAPS		BIT(27)
>  	unsigned int quirks2;
>  #define SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN	BIT(15)
> +#define SDHCI_QUIRK2_ISSUE_CMD_DAT_RESET_TOGETHER	BIT(19)
>  	u32 caps;	/* CAPABILITY_0 */
>  	u32 caps1;	/* CAPABILITY_1 */
>  	bool read_caps;	/* Capability flags have been read */
>  	u32 sdma_boundary;
>  
> +	unsigned int		tuning_count;	/* Timer count for re-tuning */
> +	unsigned int		tuning_mode;	/* Re-tuning mode supported by host */
> +	unsigned int		tuning_err;	/* Error code for re-tuning */
> +#define SDHCI_TUNING_MODE_1	0
> +#define SDHCI_TUNING_MODE_2	1
> +#define SDHCI_TUNING_MODE_3	2
> +	/* Delay (ms) between tuning commands */
> +	int			tuning_delay;
> +	int			tuning_loop_count;
> +	int			tuning_old_ier;
> +	int			tuning_old_sig;
> +
>  	struct mci_host	*mci;
> +
> +	int (*platform_execute_tuning)(struct mci_host *host, u32 opcode);
>  };
>  
>  static inline u32 sdhci_read32(struct sdhci *host, int reg)
> @@ -282,6 +308,7 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
>  }
>  
>  #define SDHCI_NO_DMA DMA_ERROR_CODE
> +int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode);
>  int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd);
>  int sdhci_wait_for_done(struct sdhci *host, u32 mask);
>  void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



