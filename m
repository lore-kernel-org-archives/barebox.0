Delivery-date: Fri, 18 Aug 2023 08:29:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWsz1-0092Ql-3r
	for lore@lore.pengutronix.de; Fri, 18 Aug 2023 08:29:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWsyy-0000KA-OR
	for lore@pengutronix.de; Fri, 18 Aug 2023 08:29:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SnIGAhtm56BCUW/yfo6EI388R9g70ZS1ykstKtVSUNo=; b=WEcaNQxxtQwbhVaCPd1b8nU1DJ
	KUCmri4Hr6+ir4JGhb/liJ+GS2xtnXHsPGHnVT9BEHkzbXQZfxR7g5GLYSPWEFMWVA9UaWjjj5Nn2
	HAcFkqiID0KkelZ1rrUzieGPftJkJSGn+0dbRO9jsORazSA+DT/gu1R+lPoOmop+O8+tp6pI65nPA
	zgPo4xYwO1A2G3FEYWeso7U5/GX2Dd6NUJO3tn/xQIl2CvMkQDPi0eX4SMT90rc64+JMmeklLZIEu
	GlCnbO9cqbYCd9LcCzckJQNtA37lhret/UWN24fDOC3s8nge/5gw9m6ftDaFkgs3X7jJCMUXQ/f/f
	31A2FcVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWsxg-007ngQ-1B;
	Fri, 18 Aug 2023 06:27:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWsxb-007ng4-2B
	for barebox@lists.infradead.org;
	Fri, 18 Aug 2023 06:27:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWsxZ-0000HG-R6; Fri, 18 Aug 2023 08:27:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWsxY-0007Aj-56; Fri, 18 Aug 2023 08:27:48 +0200
Date: Fri, 18 Aug 2023 08:27:48 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20230818062748.GM5650@pengutronix.de>
References: <20230816093945.19974-1-jmaselbas@kalray.eu>
 <20230816093945.19974-7-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230816093945.19974-7-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_232751_904442_222CE17B 
X-CRM114-Status: GOOD (  25.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 7/7] mci: Add dwcmshc-sdhci driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

Some small things inline.


On Wed, Aug 16, 2023 at 11:39:45AM +0200, Jules Maselbas wrote:
> +#include "sdhci.h"
> +
> +#define CARD_STATUS_MASK (0x1e00)
> +#define CARD_STATUS_TRAN (4 << 9)
> +static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
> +				struct mci_data *data);
> +
> +struct dwcmshc_host {
> +	struct mci_host mci;
> +	struct sdhci sdhci;
> +	unsigned int in_abort_sequence;
> +};
> +
> +#define priv_from_mci_host(h) container_of(h, struct dwcmshc_host, mci)

Writing this as static inline function immediately makes the type of 'h'
clear.

> +
> +static void mci_setup_cmd(struct mci_cmd *p, unsigned int cmd, unsigned int arg,
> +			  unsigned int response)
> +{
> +	p->cmdidx = cmd;
> +	p->cmdarg = arg;
> +	p->resp_type = response;
> +}
> +
> +static int do_abort_sequence(struct mci_host *mci, struct mci_cmd *current_cmd)
> +{
> +	int ret = 0;
> +	struct dwcmshc_host *host = priv_from_mci_host(mci);
> +	struct mci_cmd cmd;
> +	u64 start;
> +
> +	host->in_abort_sequence = 1;
> +
> +	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
> +	ret = dwcmshc_mci_send_cmd(mci, &cmd, NULL);
> +	if (ret) {
> +		dev_err(host->mci.hw_dev, "Abort failed at first cmd12!\n");
> +		goto out;
> +	}
> +	mci_setup_cmd(&cmd, MMC_CMD_SEND_STATUS, mci->mci->rca << 16,
> +		      MMC_RSP_R1);
> +	ret = dwcmshc_mci_send_cmd(mci, &cmd, NULL);
> +	if (ret) {
> +		dev_err(host->mci.hw_dev, "Abort failed at first cmd13!\n");
> +		goto out;
> +	}
> +
> +	if ((cmd.response[0] & CARD_STATUS_MASK) == CARD_STATUS_TRAN)
> +		goto out; /* All is OK! */
> +
> +	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
> +	ret = dwcmshc_mci_send_cmd(mci, &cmd, NULL);
> +	if (ret) {
> +		dev_err(host->mci.hw_dev, "Abort failed at second cmd12!\n");
> +		goto out;
> +	}
> +
> +	mci_setup_cmd(&cmd, MMC_CMD_SEND_STATUS, mci->mci->rca << 16,
> +		      MMC_RSP_R1);
> +	ret = dwcmshc_mci_send_cmd(mci, &cmd, NULL);
> +	if (ret) {
> +		dev_err(host->mci.hw_dev, "Abort failed at second cmd13!\n");
> +		goto out;
> +	}
> +
> +	if ((cmd.response[0] & CARD_STATUS_MASK) == CARD_STATUS_TRAN) {
> +		goto out; /* All is OK! */
> +	} else {
> +		dev_err(host->mci.hw_dev,
> +			"Abort sequence failed to put card in TRAN state!\n");
> +		ret = 1;

This should be an error code.

> +		goto out;
> +	}
> +
> +out:
> +	/* Perform SW reset if in abort sequence */
> +	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET,
> +		       SDHCI_RESET_DATA | SDHCI_RESET_CMD);
> +	start = get_time_ns();
> +	while (sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) != 0) {
> +		if (is_timeout(start, 50 * MSECOND)) {
> +			dev_err(host->mci.hw_dev,
> +				"SDHCI data reset timeout\n");
> +			break;
> +		}
> +	}
> +	host->in_abort_sequence = 0;
> +	return ret;
> +}
> +
> +static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
> +				struct mci_data *data)
> +{
> +	struct dwcmshc_host *host = priv_from_mci_host(mci);
> +	dma_addr_t dma = SDHCI_NO_DMA;
> +	u32 mask, command, xfer;
> +	int ret;
> +
> +	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION
> +	    && host->in_abort_sequence == 0)
> +		return do_abort_sequence(mci, cmd);

You could factor the rest of this function out to some dwcmshc_mci_do_send_cmd()
and call it from here and do_abort_sequence().

> +
> +	/* Do not wait for CMD_INHIBIT_DAT on stop commands */
> +	mask = SDHCI_CMD_INHIBIT_CMD;
> +	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
> +		mask |= SDHCI_CMD_INHIBIT_DATA;
> +
> +	/* Wait for bus idle */
> +	ret = wait_on_timeout(50 * MSECOND,
> +			      !(sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
> +	if (ret) {
> +		dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for idle\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	if (data)
> +		dev_dbg(host->mci.hw_dev, "cmd %d arg %d bcnt %d bsize %d\n",
> +			cmd->cmdidx, cmd->cmdarg, data->blocks, data->blocksize);
> +	else
> +		dev_dbg(host->mci.hw_dev, "cmd %d arg %d\n", cmd->cmdidx, cmd->cmdarg);
> +
> +	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
> +
> +	sdhci_setup_data_dma(&host->sdhci, data, &dma);
> +
> +	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
> +
> +	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
> +				dma == SDHCI_NO_DMA ? false : true,
> +				&command, &xfer);
> +
> +	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
> +
> +	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
> +	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
> +
> +	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
> +	if (ret)
> +		goto error;
> +
> +	sdhci_read_response(&host->sdhci, cmd);
> +
> +	ret = sdhci_transfer_data(&host->sdhci, data, dma);
> +error:
> +	if (ret) {
> +		sdhci_reset(&host->sdhci, SDHCI_RESET_CMD);
> +		sdhci_reset(&host->sdhci, SDHCI_RESET_DATA);
> +	}
> +
> +	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
> +	return ret;
> +}
> +
> +static void dwcmshc_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
> +{
> +	struct dwcmshc_host *host = priv_from_mci_host(mci);
> +	u16 val;
> +
> +	debug("%s: clock = %u, bus-width = %d, timing = %02x\n", __func__,
> +	      ios->clock, ios->bus_width, ios->timing);

dev_dbg()

> +static int dwcmshc_mci_init(struct mci_host *mci, struct device *dev)
> +{
> +	struct dwcmshc_host *host = priv_from_mci_host(mci);
> +	u16 ctrl2;
> +
> +	/* reset mshci controller */
> +	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
> +
> +	/* wait for reset completion */
> +	if (wait_on_timeout(100 * MSECOND,
> +			    (sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET)
> +			     & SDHCI_RESET_ALL) == 0)) {
> +		dev_err(dev, "SDHCI reset timeout\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	sdhci_write16(&host->sdhci, SDHCI_INT_ERROR_ENABLE, ~0);
> +	sdhci_write16(&host->sdhci, SDHCI_INT_ENABLE, ~0);
> +	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
> +	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, ~0);
> +
> +	sdhci_enable_v4_mode(&host->sdhci);
> +
> +	dev_dbg(host->mci.hw_dev, "host version4: %s\n",
> +		ctrl2 & SDHCI_CTRL_V4_MODE ? "enabled" : "disabled");
> +
> +	return 0;
> +}
> +

[...]

> +static int dwcmshc_probe(struct device *dev)
> +{
> +	struct dwcmshc_host *host;
> +	struct resource *iores;
> +	struct mci_host *mci;
> +	struct clk *clk;
> +	int ret;
> +
> +	host = xzalloc(sizeof(*host));
> +	mci = &host->mci;
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		ret = PTR_ERR(iores);
> +		goto err_mem_req;
> +	}
> +
> +	clk = clk_get(dev, NULL);
> +	if (IS_ERR(clk)) {
> +		ret = PTR_ERR(clk);
> +		goto err_clk_get;
> +	}
> +	clk_enable(clk);
> +
> +	host->sdhci.base = IOMEM(iores->start);
> +	host->sdhci.mci = mci;
> +	host->sdhci.max_clk = clk_get_rate(clk);
> +
> +	mci->hw_dev = dev;
> +	mci->init = dwcmshc_mci_init;
> +	mci->set_ios = dwcmshc_mci_set_ios;
> +	mci->send_cmd = dwcmshc_mci_send_cmd;
> +	mci->card_present = dwcmshc_mci_card_present;
> +
> +	mci_of_parse(&host->mci);
> +
> +	/* Enable host_version4 */
> +	sdhci_enable_v4_mode(&host->sdhci);

This is also called from dwcmshc_mci_init(). Do we need both?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


