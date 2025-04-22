Delivery-date: Tue, 22 Apr 2025 07:27:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A8-003urT-03
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A6-0004Ai-Dg
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p9+JiE+GxJpqVbBddUNfleNRKGTkYf/NrFAp6CmrdEE=; b=cHeX4gIcBLHAbThKDvUlX71X1E
	BpcQlqmB6sCHRa/I582URyZGioE0N0kfyUatiAbL4A13R83XdWWF8Fa6mm2XBobgnCTikF3j12Ach
	KLUbdM4k/HVEj9SrVcoq4ZJTLJlERt2wncSuWMg78/HeYgGKxDd4ri7s8dl+TYtwGpYVerFbqOpHq
	hrONFuOy4hze/B8M1ZzJNsaPjfdMFhK9hEpAITkTwg99E4sN12OlioxRjTxoz+6PgnvPQcNrj009U
	VNPZlQvsaz9G7OgVcX/gcm+a55umDjBwRNK/i+iuR+8+g6bDDlagqPbevIUfNAlYMb7j//c1tTFz8
	6R0Lq5AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769c-00000005rDh-0NaX;
	Tue, 22 Apr 2025 05:26:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769X-00000005r9T-0NlN
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-0003iw-Rt; Tue, 22 Apr 2025 07:26:37 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001Uv7-25;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-1l;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:30 +0200
Message-Id: <20250422052635.3423961-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222639_152356_CD02251E 
X-CRM114-Status: GOOD (  21.21  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] mci: add common PBL helper for chainloading after BootROM initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a number of PBL drivers that communicate directly with a
SD-Card or eMMC already initialized by the BootROM and put into
transfer state. This lets us skip having a stripped down MMC framework
in the prebootloader.

Instead of duplicating this code across drivers, let's put the duplicate
code into a common location.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/Makefile  |   1 +
 drivers/mci/mci-pbl.c | 110 ++++++++++++++++++++++++++++++++++++++++++
 include/pbl/mci.h     |  37 ++++++++++++++
 3 files changed, 148 insertions(+)
 create mode 100644 drivers/mci/mci-pbl.c
 create mode 100644 include/pbl/mci.h

diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index d3df4c1bb650..8f54107e46c1 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_MCI)		+= mci-core.o
+pbl-$(CONFIG_MCI)		+= mci-pbl.o
 obj-$(CONFIG_MCI_MMC_RPMB)	+= rpmb.o
 obj-$(CONFIG_MCI_AM654)		+= am654-sdhci.o
 obj-$(CONFIG_MCI_ARASAN)	+= arasan-sdhci.o
diff --git a/drivers/mci/mci-pbl.c b/drivers/mci/mci-pbl.c
new file mode 100644
index 000000000000..b58cd8dafe84
--- /dev/null
+++ b/drivers/mci/mci-pbl.c
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This code assumes that the SD/eMMC is already in transfer mode,
+ * because it card initialization has been done by the BootROM.
+ *
+ * In interest of reducing complexity, code size and boot time, we
+ * don't want to reset the card, but reuse it as-is.
+ *
+ * Full reinitialization of the card has to wait until we are
+ * in barebox proper (see mci-core.c).
+ */
+
+#define pr_fmt(fmt) "mci-pbl: " fmt
+
+#include <mci.h>
+#include <pbl/mci.h>
+#include <pbl/bio.h>
+#include <linux/minmax.h>
+#include <linux/bug.h>
+
+#define MCI_PBL_BLOCK_LEN		512
+
+static int pbl_mci_read_blocks(struct pbl_mci *mci, void *dst,
+			       off_t start, unsigned int nblocks)
+{
+	struct mci_cmd cmd = {};
+	struct mci_data data;
+	int ret;
+
+	if (mci->capacity == PBL_MCI_STANDARD_CAPACITY)
+		start *= MCI_PBL_BLOCK_LEN;
+
+	mci_setup_cmd(&cmd, MMC_CMD_READ_SINGLE_BLOCK,
+		      start, MMC_RSP_R1);
+	if (nblocks > 1)
+		cmd.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK;
+
+	data.dest = dst;
+	data.flags = MMC_DATA_READ;
+	data.blocksize = MCI_PBL_BLOCK_LEN;
+	data.blocks = nblocks;
+
+	ret = pbl_mci_send_cmd(mci, &cmd, &data);
+	if (ret || nblocks > 1) {
+		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0,
+			      MMC_RSP_R1b);
+		pbl_mci_send_cmd(mci, &cmd, NULL);
+	}
+
+	return ret;
+}
+
+static int pbl_bio_mci_read(struct pbl_bio *bio, off_t start,
+			    void *buf, unsigned int nblocks)
+{
+	struct pbl_mci *mci = bio->priv;
+	unsigned int count = 0;
+	unsigned int block_len = MCI_PBL_BLOCK_LEN;
+	int ret;
+
+	while (count < nblocks) {
+		unsigned n = nblocks - count;
+
+		if (mci->max_blocks_per_read)
+			n = min(n, mci->max_blocks_per_read);
+
+		ret = pbl_mci_read_blocks(mci, buf, start, n);
+		if (ret < 0)
+			return ret;
+
+		count += n;
+		start += n;
+		buf += n *block_len;
+	}
+
+	return count;
+}
+
+static const char *capacity_tostr(enum pbl_mci_capacity capacity)
+{
+	switch (capacity) {
+	case PBL_MCI_STANDARD_CAPACITY:
+		return "standard";
+	case PBL_MCI_HIGH_CAPACITY:
+		return "high/extended";
+	case PBL_MCI_ULTRA_CAPACITY:
+		return "ultra";
+	case PBL_MCI_RESERVED_CAPACITY:
+		return "reserved";
+	case PBL_MCI_UNKNOWN_CAPACITY:
+		break;
+	}
+
+	return "unknown";
+}
+
+int pbl_mci_bio_init(struct pbl_mci *mci, struct pbl_bio *bio)
+{
+
+	if (mci->capacity == PBL_MCI_UNKNOWN_CAPACITY)
+		BUG();
+	else
+		pr_debug("assuming %s capacity card\n",
+			 capacity_tostr(mci->capacity));
+
+	bio->priv = mci;
+	bio->read = pbl_bio_mci_read;
+
+	return 0;
+}
diff --git a/include/pbl/mci.h b/include/pbl/mci.h
new file mode 100644
index 000000000000..dd4fcac5412b
--- /dev/null
+++ b/include/pbl/mci.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __PBL_MCI_H__
+#define __PBL_MCI_H__
+
+#include <linux/types.h>
+#include <mci.h>
+
+struct mci_cmd;
+struct mci_data;
+struct pbl_bio;
+
+enum pbl_mci_capacity {
+	PBL_MCI_UNKNOWN_CAPACITY,
+	PBL_MCI_STANDARD_CAPACITY,
+	PBL_MCI_HIGH_CAPACITY, /* and extended */
+	PBL_MCI_ULTRA_CAPACITY,
+	PBL_MCI_RESERVED_CAPACITY,
+};
+
+struct pbl_mci {
+	void *priv;
+	enum pbl_mci_capacity capacity;
+	unsigned max_blocks_per_read;
+	int (*send_cmd)(struct pbl_mci *mci, struct mci_cmd *cmd,
+			struct mci_data *data);
+};
+
+static inline int pbl_mci_send_cmd(struct pbl_mci *mci,
+				   struct mci_cmd *cmd,
+				   struct mci_data *data)
+{
+	return mci->send_cmd(mci, cmd, data);
+}
+
+int pbl_mci_bio_init(struct pbl_mci *mci, struct pbl_bio *bio);
+
+#endif /* __PBL_MCI_H__ */
-- 
2.39.5



