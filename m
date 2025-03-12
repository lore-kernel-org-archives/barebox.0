Delivery-date: Wed, 12 Mar 2025 14:06:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnI-00D8Cl-0K
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:06:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnC-00023Z-Lv
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:06:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AZAwfdHO4SxRldz8ghEo3ciK+3k10iEaWbRo/aGJyAY=; b=wDElvIF6rI+lNNuwKgCbq+O5Es
	kHX8XJsf4HbvSUk/MJI4F8nYHAG/VoWITzXcRzayq9TnY65ejoHd40hdhWkxywNL1MoG7V/RDJRf0
	IgbMm4mWJ8SnScTYon3T2sHUSD3FExmSomx0mz/MO3faVeE4ZSEdzpmyzbS5QFnr1tL7D3MVplERy
	uJvdI41QySYQJ9SMM0atEO9EB+W4yCowbn+ei5mSpX3QnFOE2YXoi8XmlBQYmmK19IIGCOIxmgOgO
	fgqrKuaiif7EY/8g/JuTMzXS522u7y7fBsVnAuMN0AT/BEUlvT5uYugVPV5Hz4li6zTF9fRD6piMg
	bcw2+f1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLmd-00000008UqE-2aE4;
	Wed, 12 Mar 2025 13:06:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL0W-00000008NQh-0qXd
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:16:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-0003sM-W8; Wed, 12 Mar 2025 13:16:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-005M8b-1y;
	Wed, 12 Mar 2025 13:16:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-00AdfG-1f;
	Wed, 12 Mar 2025 13:16:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Mar 2025 13:16:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-rpmb-v1-4-0f213382a3f3@pengutronix.de>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
In-Reply-To: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741781778; l=9884;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tMWiOv8qDv4eMp52WTtkoTcK9M2Sst1j18xsOjwAriY=;
 b=9AVuo+wM2Lqaw5Kom4BSK2w78b5d2uQYjbZ8ted+qRc4twSDaD/AZ4dHzj6a4mJlftv2Kiv5j
 fao8dvwT9bdC0goepZUMjeQoycj9Hg7gNFwtX4/AzLqO7k/HvOYsNjP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_051620_418750_E8B6E10B 
X-CRM114-Status: GOOD (  31.28  )
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
Subject: [PATCH 4/9] mci: add RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements the MMC specific part to access RPMB partitions:

- Provide a function to find a RPMB capable eMMC
- partition switching to the RPMB partition
- Dissecting the OP-TEE requests into the correspnding MMC read/write
  multiblock commands

For now we only support a single eMMC RPMB partition per board. This is
the 99% case, but there might be systems with multiple eMMCs. The OP-TEE
protocol has a dev_id field to support multiple eMMCs, but OP-TEE itself
currently only supports a single RPMB. This means we really only need to
support one eMMC, but should there be multiple eMMCs on a system we will
need a way for the user to specify which one shall be used. As of now
the first one found will be used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig    |   3 +
 drivers/mci/Makefile   |   1 +
 drivers/mci/mci-core.c |  24 +++++-
 drivers/mci/rpmb.c     | 206 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/mci.h          |   3 +
 5 files changed, 236 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 4641e9cdcd..09648aa771 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -68,6 +68,9 @@ config MCI_MMC_GPP_PARTITIONS
 	  Note: by default, 'MMC' devices have no 'general purpose partitions',
 	  it requires a special one-time configuration step to enable them.
 
+config MCI_MMC_RPMB
+	bool "Support eMMC replay protected memory block (RPMB)"
+
 comment "--- MCI host drivers ---"
 
 config MCI_DWC_MSHC
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 5e951d695f..d3df4c1bb6 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_MCI)		+= mci-core.o
+obj-$(CONFIG_MCI_MMC_RPMB)	+= rpmb.o
 obj-$(CONFIG_MCI_AM654)		+= am654-sdhci.o
 obj-$(CONFIG_MCI_ARASAN)	+= arasan-sdhci.o
 obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o atmel_mci_common.o
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 18c910c4c3..9c3b35c23f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2068,7 +2068,9 @@ int mci_blk_part_switch(struct mci_part *part)
 	struct mci *mci = part->mci;
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) && !IS_ENABLED(CONFIG_MCI_MMC_GPP_PARTITIONS))
+	if (!IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
+	    !IS_ENABLED(CONFIG_MCI_MMC_GPP_PARTITIONS) &&
+	    !IS_ENABLED(CONFIG_MCI_MMC_RPMB))
 		return 0; /* no need */
 
 	if (mci->part_curr == part)
@@ -3067,3 +3069,23 @@ struct mci *mci_get_device_by_name(const char *name)
 
 	return NULL;
 }
+
+struct mci *mci_get_rpmb_dev(void)
+{
+	struct mci *mci;
+
+	if (rpmb_partition)
+		return rpmb_partition->mci;
+
+	list_for_each_entry(mci, &mci_list, list) {
+		if (mci->host->caps2 & MMC_CAP2_NO_MMC)
+			continue;
+
+		mci_detect_card(mci->host);
+
+		if (rpmb_partition)
+			return rpmb_partition->mci;
+	}
+
+	return NULL;
+}
diff --git a/drivers/mci/rpmb.c b/drivers/mci/rpmb.c
new file mode 100644
index 0000000000..5c98222bad
--- /dev/null
+++ b/drivers/mci/rpmb.c
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2014, Staubli Faverges
+ * Pierre Aubert
+ *
+ * eMMC- Replay Protected Memory Block
+ * According to JEDEC Standard No. 84-A441
+ */
+
+#include <mci.h>
+#include <malloc.h>
+#include <dma.h>
+
+int mmc_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
+			  void *rsp, unsigned long rsplen);
+
+/**
+ * struct rpmb_frame - rpmb frame as defined by eMMC 5.1 (JESD84-B51)
+ *
+ * @stuff        : stuff bytes
+ * @key_mac      : The authentication key or the message authentication
+ *                 code (MAC) depending on the request/response type.
+ *                 The MAC will be delivered in the last (or the only)
+ *                 block of data.
+ * @data         : Data to be written or read by signed access.
+ * @nonce        : Random number generated by the host for the requests
+ *                 and copied to the response by the RPMB engine.
+ * @write_counter: Counter value for the total amount of the successful
+ *                 authenticated data write requests made by the host.
+ * @addr         : Address of the data to be programmed to or read
+ *                 from the RPMB. Address is the serial number of
+ *                 the accessed block (half sector 256B).
+ * @block_count  : Number of blocks (half sectors, 256B) requested to be
+ *                 read/programmed.
+ * @result       : Includes information about the status of the write counter
+ *                 (valid, expired) and result of the access made to the RPMB.
+ * @req_resp     : Defines the type of request and response to/from the memory.
+ *
+ * The stuff bytes and big-endian properties are modeled to fit to the spec.
+ */
+struct rpmb_frame {
+	u8 stuff[196];
+	u8 key_mac[32];
+	u8 data[256];
+	u8 nonce[16];
+	__be32 write_counter;
+	__be16 addr;
+	__be16 block_count;
+	__be16 result;
+	__be16 req_resp;
+} __packed;
+
+#define RPMB_PROGRAM_KEY	0x1	/* Program RPMB Authentication Key */
+#define RPMB_GET_WRITE_COUNTER	0x2	/* Read RPMB write counter */
+#define RPMB_WRITE_DATA		0x3	/* Write data to RPMB partition */
+#define RPMB_READ_DATA		0x4	/* Read data from RPMB partition */
+#define RPMB_RESULT_READ	0x5	/* Read result request  (Internal) */
+
+static int mci_read_write_blocks(struct mci *mci, u32 opcode, int write_flag, void *buf,
+				 unsigned int buf_bytes)
+{
+	int blocks = buf_bytes / 512;
+	struct mci_cmd cmd = {
+		.cmdidx = opcode,
+		.resp_type = MMC_RSP_R1,
+	};
+	struct mci_data data = {
+		.blocks = blocks,
+		.blocksize = sizeof(struct rpmb_frame),
+	};
+	int ret;
+
+	if (write_flag) {
+		data.src = buf;
+		data.flags = MMC_DATA_WRITE;
+	} else {
+		data.dest = buf;
+		data.flags = MMC_DATA_READ;
+	}
+
+	ret = mci_set_blockcount(mci, blocks | (write_flag & MMC_CMD23_ARG_REL_WR));
+	if (ret)
+		return ret;
+
+	return mci_send_cmd(mci, &cmd, &data);
+}
+
+static int rpmb_route_frames(struct mci *mci, void *req,
+			     unsigned int req_len, void *resp,
+			     unsigned int resp_len)
+{
+	struct rpmb_frame *frm = req;
+	unsigned int cmd_count;
+	u16 req_type;
+	bool write;
+	int ret;
+
+	if (req_len < sizeof(*frm))
+		return -EINVAL;
+
+	req_type = be16_to_cpu(frm->req_resp);
+	switch (req_type) {
+	case RPMB_PROGRAM_KEY:
+		if (req_len != sizeof(struct rpmb_frame) ||
+		    resp_len != sizeof(struct rpmb_frame))
+			return -EINVAL;
+		write = true;
+		break;
+	case RPMB_GET_WRITE_COUNTER:
+		if (req_len != sizeof(struct rpmb_frame) ||
+		    resp_len != sizeof(struct rpmb_frame))
+			return -EINVAL;
+		write = false;
+		break;
+	case RPMB_WRITE_DATA:
+		if (req_len % sizeof(struct rpmb_frame) ||
+		    resp_len != sizeof(struct rpmb_frame))
+			return -EINVAL;
+		write = true;
+		break;
+	case RPMB_READ_DATA:
+		if (req_len != sizeof(struct rpmb_frame) ||
+		    resp_len % sizeof(struct rpmb_frame))
+			return -EINVAL;
+		write = false;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (write)
+		cmd_count = 3;
+	else
+		cmd_count = 2;
+
+	if (write) {
+		struct rpmb_frame *frm = resp;
+
+		/* Send write request frame(s) */
+		ret = mci_read_write_blocks(mci, MMC_CMD_WRITE_MULTIPLE_BLOCK,
+			  1 | MMC_CMD23_ARG_REL_WR, req, req_len);
+		if (ret)
+			goto out;
+
+		/* Send result request frame */
+		memset(frm, 0, sizeof(*frm));
+		frm->req_resp = cpu_to_be16(RPMB_RESULT_READ);
+		ret = mci_read_write_blocks(mci, MMC_CMD_WRITE_MULTIPLE_BLOCK, 1,
+					    resp, resp_len);
+		if (ret)
+			goto out;
+
+		/* Read response frame */
+		ret = mci_read_write_blocks(mci, MMC_CMD_READ_MULTIPLE_BLOCK, 0,
+					    resp, resp_len);
+		if (ret)
+			goto out;
+	} else {
+		/* Send write request frame(s) */
+		ret = mci_read_write_blocks(mci, MMC_CMD_WRITE_MULTIPLE_BLOCK, 1,
+					    req, req_len);
+		if (ret)
+			goto out;
+
+		/* Read response frame */
+		ret = mci_read_write_blocks(mci, MMC_CMD_READ_MULTIPLE_BLOCK, 0,
+					    resp, resp_len);
+		if (ret)
+			goto out;
+	}
+out:
+	return ret;
+}
+
+int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
+			  void *rsp, unsigned long rsplen)
+{
+	/*
+	 * Whoever crafted the data supplied to this function knows how to
+	 * format the PRMB frames and which response is expected. If
+	 * there's some unexpected mismatch it's more helpful to report an
+	 * error immediately than trying to guess what was the intention
+	 * and possibly just delay an eventual error which will be harder
+	 * to track down.
+	 */
+	void *rpmb_data = NULL;
+	int ret;
+
+	mci_blk_part_switch(mci->rpmb_part);
+
+	if (!IS_ALIGNED((uintptr_t)req, ARCH_DMA_MINALIGN)) {
+		/* Memory alignment is required by MMC driver */
+		rpmb_data = dma_alloc(reqlen);
+		if (!rpmb_data)
+			return -ENOMEM;
+
+		memcpy(rpmb_data, req, reqlen);
+		req = rpmb_data;
+	}
+
+	ret = rpmb_route_frames(mci, req, reqlen, rsp, rsplen);
+
+	free(rpmb_data);
+
+	return ret;
+}
diff --git a/include/mci.h b/include/mci.h
index 08a3e46f7d..ec0390eedf 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -736,6 +736,9 @@ int mmc_select_timing(struct mci *mci);
 int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
 int mci_blk_part_switch(struct mci_part *part);
 int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data);
+struct mci *mci_get_rpmb_dev(void);
+int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
+			  void *rsp, unsigned long rsplen);
 
 static inline bool mmc_card_hs200(struct mci *mci)
 {

-- 
2.39.5



