Delivery-date: Wed, 19 Mar 2025 16:53:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvjf-001Vqc-0J
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:53:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvjd-00063K-Cu
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:53:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9rdHbCxiT6Y14GWesATGEtBmyMGdHwZHLX6P08EaGPw=; b=LRADA/ClgmN84GCwqmrC3GcWIi
	AFwSjYz9fEaGH5cjeZIQ1nqEZLZlqr4nGI4qbLhy1S0FodKUN8CoOeLp4VotVt/zcYT0xc07EYQX6
	OAitghDIaKHs+fNR0eMktMBoW0esBLAmtL3JnGo2B6DlPk0ByVcgEIReNCpuPgnFoNs3Cqr4YZPNL
	cgs/yOW+bdwfkd6AQTMdGF+6i8J0F1nIOO8fm8UIxRVm2HsUz3oF9jPCgbec/ZZ/LY3fFzLXR7NtT
	irYIspuBuVLjZGQS97Gham4NcIm/MdrayxzgmMte0Ifp6VHX9RSUsQJ5ixrwwyBISgT1hwSoORitR
	FYt/xHtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvjA-00000009Sh0-19zR;
	Wed, 19 Mar 2025 15:53:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvj6-00000009Sg8-3Et7
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:53:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuvj5-0005tZ-DR; Wed, 19 Mar 2025 16:53:03 +0100
Message-ID: <63082337-c9aa-467b-9a6b-5c98e5614c88@pengutronix.de>
Date: Wed, 19 Mar 2025 16:53:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
References: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
 <20250319-rpmb-v2-4-a8801fb35cd4@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250319-rpmb-v2-4-a8801fb35cd4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_085305_125270_20AC7CBE 
X-CRM114-Status: GOOD (  46.54  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 04/10] mci: add RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 3/19/25 16:30, Sascha Hauer wrote:
> This implements the MMC specific part to access RPMB partitions:
> 
> - Provide a function to find a RPMB capable eMMC
> - partition switching to the RPMB partition
> - Dissecting the OP-TEE requests into the correspnding MMC read/write
>   multiblock commands
> 
> For now we only support a single eMMC RPMB partition per board. This is
> the 99% case, but there might be systems with multiple eMMCs. The OP-TEE
> protocol has a dev_id field to support multiple eMMCs, but OP-TEE itself
> currently only supports a single RPMB. This means we really only need to
> support one eMMC, but should there be multiple eMMCs on a system we will
> need a way for the user to specify which one shall be used. As of now
> the first one found will be used.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/Kconfig    |   3 +
>  drivers/mci/Makefile   |   1 +
>  drivers/mci/mci-core.c |  37 +++++++--
>  drivers/mci/rpmb.c     | 210 +++++++++++++++++++++++++++++++++++++++++++++++++
>  include/mci.h          |   5 ++
>  5 files changed, 251 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 4641e9cdcd..09648aa771 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -68,6 +68,9 @@ config MCI_MMC_GPP_PARTITIONS
>  	  Note: by default, 'MMC' devices have no 'general purpose partitions',
>  	  it requires a special one-time configuration step to enable them.
>  
> +config MCI_MMC_RPMB
> +	bool "Support eMMC replay protected memory block (RPMB)"
> +
>  comment "--- MCI host drivers ---"
>  
>  config MCI_DWC_MSHC
> diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
> index 5e951d695f..d3df4c1bb6 100644
> --- a/drivers/mci/Makefile
> +++ b/drivers/mci/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_MCI)		+= mci-core.o
> +obj-$(CONFIG_MCI_MMC_RPMB)	+= rpmb.o
>  obj-$(CONFIG_MCI_AM654)		+= am654-sdhci.o
>  obj-$(CONFIG_MCI_ARASAN)	+= arasan-sdhci.o
>  obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o atmel_mci_common.o
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 3bf0f15def..48bdd1a0c7 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -2052,7 +2052,9 @@ int mci_blk_part_switch(struct mci_part *part)
>  	struct mci *mci = part->mci;
>  	int ret;
>  
> -	if (!IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) && !IS_ENABLED(CONFIG_MCI_MMC_GPP_PARTITIONS))
> +	if (!IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
> +	    !IS_ENABLED(CONFIG_MCI_MMC_GPP_PARTITIONS) &&
> +	    !IS_ENABLED(CONFIG_MCI_MMC_RPMB))
>  		return 0; /* no need */
>  
>  	if (mci->part_curr == part)
> @@ -2953,7 +2955,6 @@ void mci_of_parse_node(struct mci_host *host,
>  {
>  	u32 bus_width;
>  	u32 dsr_val;
> -	const char *alias;
>  
>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return;
> @@ -2961,9 +2962,14 @@ void mci_of_parse_node(struct mci_host *host,
>  	if (!host->hw_dev || !np)
>  		return;
>  
> -	alias = of_alias_get(np);
> -	if (alias)
> -		host->devname = xstrdup(alias);
> +	host->of_id = of_alias_get_id(np, "mmc");
> +	if (host->of_id < 0)
> +		host->of_id = of_alias_get_id(np->parent, "mmc");
> +
> +	if (host->of_id >= 0) {
> +		host->devname = xasprintf("mmc%u", host->of_id);
> +		host->of_id_valid = true;
> +	}
>  
>  	/* "bus-width" is translated to MMC_CAP_*_BIT_DATA flags */
>  	if (of_property_read_u32(np, "bus-width", &bus_width) < 0) {
> @@ -3051,3 +3057,24 @@ struct mci *mci_get_device_by_name(const char *name)
>  
>  	return NULL;
>  }
> +
> +struct mci *mci_get_rpmb_dev(unsigned int id)
> +{
> +	struct mci *mci;
> +
> +	list_for_each_entry(mci, &mci_list, list) {
> +		if (mci->host->of_id != id)
> +			continue;
> +
> +		mci_detect_card(mci->host);
> +
> +		if (!mci->rpmb_part) {
> +			dev_err(&mci->dev, "requested MMC does not have a RPMB partition\n");
> +			return NULL;
> +		}
> +
> +		return mci;
> +	}
> +
> +	return NULL;
> +}
> diff --git a/drivers/mci/rpmb.c b/drivers/mci/rpmb.c
> new file mode 100644
> index 0000000000..6c693aa1ea
> --- /dev/null
> +++ b/drivers/mci/rpmb.c
> @@ -0,0 +1,210 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2014, Staubli Faverges
> + * Pierre Aubert
> + *
> + * eMMC- Replay Protected Memory Block
> + * According to JEDEC Standard No. 84-A441
> + */
> +#define pr_fmt(fmt) "mmc-rpmb: " fmt
> +
> +#include <mci.h>
> +#include <malloc.h>
> +#include <dma.h>
> +
> +int mmc_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
> +			  void *rsp, unsigned long rsplen);
> +
> +/**
> + * struct rpmb_frame - rpmb frame as defined by eMMC 5.1 (JESD84-B51)
> + *
> + * @stuff        : stuff bytes
> + * @key_mac      : The authentication key or the message authentication
> + *                 code (MAC) depending on the request/response type.
> + *                 The MAC will be delivered in the last (or the only)
> + *                 block of data.
> + * @data         : Data to be written or read by signed access.
> + * @nonce        : Random number generated by the host for the requests
> + *                 and copied to the response by the RPMB engine.
> + * @write_counter: Counter value for the total amount of the successful
> + *                 authenticated data write requests made by the host.
> + * @addr         : Address of the data to be programmed to or read
> + *                 from the RPMB. Address is the serial number of
> + *                 the accessed block (half sector 256B).
> + * @block_count  : Number of blocks (half sectors, 256B) requested to be
> + *                 read/programmed.
> + * @result       : Includes information about the status of the write counter
> + *                 (valid, expired) and result of the access made to the RPMB.
> + * @req_resp     : Defines the type of request and response to/from the memory.
> + *
> + * The stuff bytes and big-endian properties are modeled to fit to the spec.
> + */
> +struct rpmb_frame {
> +	u8 stuff[196];
> +	u8 key_mac[32];
> +	u8 data[256];
> +	u8 nonce[16];
> +	__be32 write_counter;
> +	__be16 addr;
> +	__be16 block_count;
> +	__be16 result;
> +	__be16 req_resp;
> +} __packed;
> +
> +#define RPMB_PROGRAM_KEY	0x1	/* Program RPMB Authentication Key */
> +#define RPMB_GET_WRITE_COUNTER	0x2	/* Read RPMB write counter */
> +#define RPMB_WRITE_DATA		0x3	/* Write data to RPMB partition */
> +#define RPMB_READ_DATA		0x4	/* Read data from RPMB partition */
> +#define RPMB_RESULT_READ	0x5	/* Read result request  (Internal) */
> +
> +static int mci_read_write_blocks(struct mci *mci, u32 opcode, int write_flag, void *buf,
> +				 unsigned int buf_bytes)
> +{
> +	int blocks = buf_bytes / 512;
> +	struct mci_cmd cmd = {
> +		.cmdidx = opcode,
> +		.resp_type = MMC_RSP_R1,
> +	};
> +	struct mci_data data = {
> +		.blocks = blocks,
> +		.blocksize = sizeof(struct rpmb_frame),
> +	};
> +	int ret;
> +
> +	if (write_flag) {
> +		data.src = buf;
> +		data.flags = MMC_DATA_WRITE;
> +	} else {
> +		data.dest = buf;
> +		data.flags = MMC_DATA_READ;
> +	}
> +
> +	ret = mci_set_blockcount(mci, blocks | (write_flag & MMC_CMD23_ARG_REL_WR));
> +	if (ret)
> +		return ret;
> +
> +	return mci_send_cmd(mci, &cmd, &data);
> +}
> +
> +static int rpmb_route_frames(struct mci *mci, void *req,
> +			     unsigned int req_len, void *resp,
> +			     unsigned int resp_len)
> +{
> +	struct rpmb_frame *frm = req;
> +	unsigned int cmd_count;
> +	u16 req_type;
> +	bool write;
> +	int ret;
> +
> +	if (req_len < sizeof(*frm))
> +		return -EINVAL;
> +
> +	req_type = be16_to_cpu(frm->req_resp);
> +	switch (req_type) {
> +	case RPMB_PROGRAM_KEY:
> +		if (req_len != sizeof(struct rpmb_frame) ||
> +		    resp_len != sizeof(struct rpmb_frame))
> +			return -EINVAL;
> +		write = true;
> +		break;
> +	case RPMB_GET_WRITE_COUNTER:
> +		if (req_len != sizeof(struct rpmb_frame) ||
> +		    resp_len != sizeof(struct rpmb_frame))
> +			return -EINVAL;
> +		write = false;
> +		break;
> +	case RPMB_WRITE_DATA:
> +		if (req_len % sizeof(struct rpmb_frame) ||
> +		    resp_len != sizeof(struct rpmb_frame))
> +			return -EINVAL;
> +		write = true;
> +		break;
> +	case RPMB_READ_DATA:
> +		if (req_len != sizeof(struct rpmb_frame) ||
> +		    resp_len % sizeof(struct rpmb_frame))
> +			return -EINVAL;
> +		write = false;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	if (write)
> +		cmd_count = 3;
> +	else
> +		cmd_count = 2;
> +
> +	if (write) {
> +		struct rpmb_frame *frm = resp;
> +
> +		/* Send write request frame(s) */
> +		ret = mci_read_write_blocks(mci, MMC_CMD_WRITE_MULTIPLE_BLOCK,
> +			  1 | MMC_CMD23_ARG_REL_WR, req, req_len);
> +		if (ret)
> +			goto out;
> +
> +		/* Send result request frame */
> +		memset(frm, 0, sizeof(*frm));
> +		frm->req_resp = cpu_to_be16(RPMB_RESULT_READ);
> +		ret = mci_read_write_blocks(mci, MMC_CMD_WRITE_MULTIPLE_BLOCK, 1,
> +					    resp, resp_len);
> +		if (ret)
> +			goto out;
> +
> +		/* Read response frame */
> +		ret = mci_read_write_blocks(mci, MMC_CMD_READ_MULTIPLE_BLOCK, 0,
> +					    resp, resp_len);
> +		if (ret)
> +			goto out;
> +	} else {
> +		/* Send write request frame(s) */
> +		ret = mci_read_write_blocks(mci, MMC_CMD_WRITE_MULTIPLE_BLOCK, 1,
> +					    req, req_len);
> +		if (ret)
> +			goto out;
> +
> +		/* Read response frame */
> +		ret = mci_read_write_blocks(mci, MMC_CMD_READ_MULTIPLE_BLOCK, 0,
> +					    resp, resp_len);
> +		if (ret)
> +			goto out;
> +	}
> +out:
> +	return ret;
> +}
> +
> +int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
> +			  void *rsp, unsigned long rsplen)
> +{
> +	/*
> +	 * Whoever crafted the data supplied to this function knows how to
> +	 * format the PRMB frames and which response is expected. If
> +	 * there's some unexpected mismatch it's more helpful to report an
> +	 * error immediately than trying to guess what was the intention
> +	 * and possibly just delay an eventual error which will be harder
> +	 * to track down.
> +	 */
> +	void *rpmb_data;
> +	int ret;
> +
> +	if (!IS_ALIGNED((uintptr_t)rsp, ARCH_DMA_MINALIGN) ||
> +	    !IS_ALIGNED(rsplen, ARCH_DMA_MINALIGN)) {
> +		pr_err_once("response or length not DMA aligned\n");

A reference to the device would be useful.

> +		return -EINVAL;
> +	}
> +
> +	mci_blk_part_switch(mci->rpmb_part);
> +
> +	/* Memory alignment is required by MMC driver */
> +	rpmb_data = dma_alloc(reqlen);
> +	if (!rpmb_data)
> +		return -ENOMEM;
> +
> +	memcpy(rpmb_data, req, reqlen);
> +
> +	ret = rpmb_route_frames(mci, rpmb_data, reqlen, rsp, rsplen);
> +
> +	free(rpmb_data);

dma_free() please

> +
> +	return ret;
> +}
> diff --git a/include/mci.h b/include/mci.h
> index 08a3e46f7d..43a0b01315 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -554,6 +554,8 @@ struct mci_host {
>  	struct device *hw_dev;	/**< the host MCI hardware device */
>  	struct mci *mci;
>  	const char *devname;		/**< the devicename for the card, defaults to disk%d */
> +	int of_id;
> +	bool of_id_valid;
>  	unsigned voltages;
>  	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* */
>  	unsigned caps2;		/* More host capabilities */
> @@ -736,6 +738,9 @@ int mmc_select_timing(struct mci *mci);
>  int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
>  int mci_blk_part_switch(struct mci_part *part);
>  int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data);
> +struct mci *mci_get_rpmb_dev(unsigned int id);
> +int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
> +			  void *rsp, unsigned long rsplen);
>  
>  static inline bool mmc_card_hs200(struct mci *mci)
>  {
> 



