Delivery-date: Mon, 17 Mar 2025 10:36:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tw-000Yr0-11
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:36:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tu-00029B-Rv
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:36:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kygH96UC330aok0thfudBXJPfNrB5IzGzlFEjQsX3s8=; b=R5GQeb7LoGgX8/pB9EwJXaIgrk
	X+oue6Omlmhst//BkF29EqroxIN5rrUqcgs/J93e/hVCnN2DIVqmVmMAvKTpj6lK4ojMinuuwjtPb
	7Y4OxnbIjffc7zdzeINHUGgR79OJdgGtuaHDQyACocrkSsds5p+CbcDZcoDA+o1hjT8EG8gxczIo0
	0aQoKfqOKnpDS8dtT3+bBywLmgIZjZCGFnJbG4IS81ZodcvNN9V+iywV96U+XKKIBBDfuff1Cg1Ei
	bsE2fN5favZmqVE2Ca9zVOMhp5hEtJ+CkLQQNsqbERecRUC72H6mRO0jczzHHRijixaVAaflBEPXI
	Dw/Y1exw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6tU-00000001xGb-0IO7;
	Mon, 17 Mar 2025 09:36:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6rn-00000001wmJ-3yCT
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:34:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-0001Qr-Lq; Mon, 17 Mar 2025 10:34:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rl-000DpL-35;
	Mon, 17 Mar 2025 10:34:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-00H5gy-0w;
	Mon, 17 Mar 2025 10:34:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Mar 2025 10:34:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-mci-misc-cleanup-v1-2-24b4d6f5d31a@pengutronix.de>
References: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
In-Reply-To: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742204078; l=5777;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=LoO04XtQtAsrIPgbEXgYLRu5tQ+MV1ysYm9dYLFHejQ=;
 b=oyvBPXXU4S9Xs98Vn3l/mLD2Qct2AFFYeyCXZO5UZFkN5RL6XHBiMoBWD/5YQuHsFd1bAppkh
 oz8O5JAV6Q9DDwYTv6sDFcUW5xprmvMzHIYUjn6AfC+C0Ier3skPJGW
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_023440_017215_ED6AC7BE 
X-CRM114-Status: GOOD (  17.96  )
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
Subject: [PATCH 2/6] mmc: merge block read/write functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci_block_write() and mci_read_block() both have very similar
implementations. Merge them into a mci_do_block_op() function
and call it from the actual block read/write functions.

While at it rename mci_read_block() to mci_block_read() to get a
naming consistent to mci_block_write().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 123 +++++++++++++++++++++++--------------------------
 1 file changed, 57 insertions(+), 66 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 34ea775813..975896d2d8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -260,59 +260,6 @@ static int mci_poll_until_ready(struct mci *mci, int timeout_ms)
 	return 0;
 }
 
-
-/**
- * Write one or several blocks of data to the card
- * @param mci_dev MCI instance
- * @param src Where to read from to write to the card
- * @param blocknum Block number to write
- * @param blocks Block count to write
- * @return Transaction status (0 on success)
- */
-static int mci_block_write(struct mci *mci, const void *src, int blocknum,
-	int blocks)
-{
-	struct mci_cmd cmd = {};
-	struct mci_data data;
-	unsigned mmccmd;
-	int ret;
-
-	/*
-	 * Quoting eMMC Spec v5.1 (JEDEC Standard No. 84-B51):
-	 * Due to legacy reasons, a Device may still treat CMD24/25 during
-	 * prg-state (while busy is active) as a legal or illegal command.
-	 * A host should not send CMD24/25 while the Device is in the prg
-	 * state and busy is active.
-	 */
-	ret = mci_poll_until_ready(mci, 1000 /* ms */);
-	if (ret && ret != -ENOSYS)
-		return ret;
-
-	if (blocks > 1)
-		mmccmd = MMC_CMD_WRITE_MULTIPLE_BLOCK;
-	else
-		mmccmd = MMC_CMD_WRITE_SINGLE_BLOCK;
-
-	mci_setup_cmd(&cmd,
-		mmccmd,
-		mci->high_capacity != 0 ? blocknum : blocknum * mci->write_bl_len,
-		MMC_RSP_R1);
-
-	data.src = src;
-	data.blocks = blocks;
-	data.blocksize = mci->write_bl_len;
-	data.flags = MMC_DATA_WRITE;
-
-	ret = mci_send_cmd(mci, &cmd, &data);
-
-	if (ret || blocks > 1) {
-		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
-		mci_send_cmd(mci, &cmd, NULL);
-        }
-
-	return ret;
-}
-
 /**
  * Erase one or several blocks of data to the card
  * @param mci_dev MCI instance
@@ -364,35 +311,51 @@ static int mci_block_erase(struct mci *card, unsigned int from,
 	return -EIO;
 }
 
-/**
- * Read one or several block(s) of data from the card
- * @param mci MCI instance
- * @param dst Where to store the data read from the card
- * @param blocknum Block number to read
- * @param blocks number of blocks to read
- */
-static int mci_read_block(struct mci *mci, void *dst, int blocknum,
+static int mci_do_block_op(struct mci *mci, const void *src, void *dst, int blocknum,
 		int blocks)
 {
 	struct mci_cmd cmd = {};
 	struct mci_data data;
 	int ret;
-	unsigned mmccmd;
+	unsigned mmccmd_multi_block, mmccmd_single_block, mmccmd;
+	unsigned int flags;
+
+	if (dst) {
+		mmccmd_multi_block = MMC_CMD_READ_MULTIPLE_BLOCK;
+		mmccmd_single_block = MMC_CMD_READ_SINGLE_BLOCK;
+		flags = MMC_DATA_READ;
+	} else {
+		/*
+		 * Quoting eMMC Spec v5.1 (JEDEC Standard No. 84-B51):
+		 * Due to legacy reasons, a Device may still treat CMD24/25 during
+		 * prg-state (while busy is active) as a legal or illegal command.
+		 * A host should not send CMD24/25 while the Device is in the prg
+		 * state and busy is active.
+		 */
+		ret = mci_poll_until_ready(mci, 1000 /* ms */);
+		if (ret && ret != -ENOSYS)
+			return ret;
+
+		mmccmd_multi_block = MMC_CMD_WRITE_MULTIPLE_BLOCK;
+		mmccmd_single_block = MMC_CMD_WRITE_SINGLE_BLOCK;
+		flags = MMC_DATA_WRITE;
+	}
 
 	if (blocks > 1)
-		mmccmd = MMC_CMD_READ_MULTIPLE_BLOCK;
+		mmccmd = mmccmd_multi_block;
 	else
-		mmccmd = MMC_CMD_READ_SINGLE_BLOCK;
+		mmccmd = mmccmd_single_block;
 
 	mci_setup_cmd(&cmd,
 		mmccmd,
 		mci->high_capacity != 0 ? blocknum : blocknum * mci->read_bl_len,
 		MMC_RSP_R1);
 
+	data.src = src;
 	data.dest = dst;
 	data.blocks = blocks;
 	data.blocksize = mci->read_bl_len;
-	data.flags = MMC_DATA_READ;
+	data.flags = flags;
 
 	ret = mci_send_cmd(mci, &cmd, &data);
 
@@ -401,9 +364,37 @@ static int mci_read_block(struct mci *mci, void *dst, int blocknum,
 			      IS_SD(mci) ? MMC_RSP_R1b : MMC_RSP_R1);
 		mci_send_cmd(mci, &cmd, NULL);
 	}
+
 	return ret;
 }
 
+/**
+ * Read one or several block(s) of data from the card
+ * @param mci MCI instance
+ * @param dst Where to store the data read from the card
+ * @param blocknum Block number to read
+ * @param blocks number of blocks to read
+ */
+static int mci_block_read(struct mci *mci, void *dst, int blocknum,
+		int blocks)
+{
+	return mci_do_block_op(mci, NULL, dst, blocknum, blocks);
+}
+
+/**
+ * Write one or several blocks of data to the card
+ * @param mci_dev MCI instance
+ * @param src Where to read from to write to the card
+ * @param blocknum Block number to write
+ * @param blocks Block count to write
+ * @return Transaction status (0 on success)
+ */
+static int mci_block_write(struct mci *mci, const void *src, int blocknum,
+	int blocks)
+{
+	return mci_do_block_op(mci, src, NULL, blocknum, blocks);
+}
+
 /**
  * Reset the attached MMC/SD card
  * @param mci MCI instance
@@ -2244,7 +2235,7 @@ static int mci_sd_read(struct block_device *blk, void *buffer, sector_t block,
 
 	while (num_blocks) {
 		read_block = min(num_blocks, max_req_block);
-		rc = mci_read_block(mci, buffer, block, read_block);
+		rc = mci_block_read(mci, buffer, block, read_block);
 		if (rc != 0) {
 			dev_dbg(&mci->dev, "Reading block %llu failed with %d\n", block, rc);
 			return rc;

-- 
2.39.5



