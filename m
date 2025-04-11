Delivery-date: Fri, 11 Apr 2025 07:29:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u36xV-00B7cX-2W
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 07:29:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u36xV-0003p0-09
	for lore@pengutronix.de; Fri, 11 Apr 2025 07:29:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R9SuwhGDwAcyuuvYyT9iWB3fUVl4j5rYnTGQnsgc0tA=; b=0fCNjtaRuVPgFHOQ3r9bgAFwjY
	xtPha4cNbTQbNFvH5pm7zGtIxf7ePxhavF8Pw4zb0/N+7KNl9oxNvZNw9Vg2suohUM2BrCG5clmiw
	4yti1AmL28hfwnUBgjNrm3ofKVnvax5AMWNzBTo1ilAXiGGWwzzCEQHaJfNpbL+PqXJjDCggBHW6o
	Hc9oB128bhmrrs3r5+XUDGsrXK026cvwEqk/oY+869HSFg1oit3hf1uPlgMWyJRllHTh2bAtO7cpL
	IUy9RcVI9H8ouCN6vTzINnZl0eboeqfBeB4VFvIYkg50I2dkdw2ZxT8HBBxRonPfbZBlY1FKP3yuf
	W7NiG16w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u36wb-0000000CXQd-13cl;
	Fri, 11 Apr 2025 05:28:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u36wY-0000000CXPy-0RPc
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 05:28:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u36wW-0003cA-4m; Fri, 11 Apr 2025 07:28:44 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u36wV-004NjC-35;
	Fri, 11 Apr 2025 07:28:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u36wV-007KVA-2m;
	Fri, 11 Apr 2025 07:28:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 07:28:41 +0200
Message-Id: <20250411052841.1745388-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_222846_144347_D9E34A20 
X-CRM114-Status: GOOD (  18.12  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Revert "mmc: merge block read/write functions"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The premise of the code merger that they share so much code already that
it makes sense to combine them. This resulted in the introduction
of at least three bugs:

  - Writes were broken intermittently, until they were fixed in
    f646ed68434f ("mci: fix data write")

  - eMMC writes are broken at least on STM32MP1, because eMMC
    expects R1b for STOP_TRANSMISSION, but R1 was used

  - The merged code assumes read_bl_len and write_bl_len are
    identical, which is not necessarily the case on eMMCs
    at lower speed mode

Instead of fixing these by adding even more conditionals into the code,
just revert the offending commit.

Fixes: 38543119546f ("mmc: merge block read/write functions")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 156 +++++++++++++++++++++--------------------
 1 file changed, 81 insertions(+), 75 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2c82379b0d73..68464f1cf95e 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -260,6 +260,59 @@ static int mci_poll_until_ready(struct mci *mci, int timeout_ms)
 	return 0;
 }
 
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
+			   int blocks)
+{
+	struct mci_cmd cmd = {};
+	struct mci_data data;
+	unsigned mmccmd;
+	int ret;
+
+	/*
+	 * Quoting eMMC Spec v5.1 (JEDEC Standard No. 84-B51):
+	 * Due to legacy reasons, a Device may still treat CMD24/25 during
+	 * prg-state (while busy is active) as a legal or illegal command.
+	 * A host should not send CMD24/25 while the Device is in the prg
+	 * state and busy is active.
+	 */
+	ret = mci_poll_until_ready(mci, 1000 /* ms */);
+	if (ret && ret != -ENOSYS)
+		return ret;
+
+	if (blocks > 1)
+		mmccmd = MMC_CMD_WRITE_MULTIPLE_BLOCK;
+	else
+		mmccmd = MMC_CMD_WRITE_SINGLE_BLOCK;
+
+	mci_setup_cmd(&cmd,
+		mmccmd,
+		mci->high_capacity != 0 ? blocknum : blocknum * mci->write_bl_len,
+		MMC_RSP_R1);
+
+	data.src = src;
+	data.blocks = blocks;
+	data.blocksize = mci->write_bl_len;
+	data.flags = MMC_DATA_WRITE;
+
+	ret = mci_send_cmd(mci, &cmd, &data);
+
+	if (ret || blocks > 1) {
+		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
+		mci_send_cmd(mci, &cmd, NULL);
+        }
+
+	return ret;
+}
+
 /**
  * Erase one or several blocks of data to the card
  * @param mci_dev MCI instance
@@ -320,66 +373,6 @@ int mci_set_blockcount(struct mci *mci, unsigned int cmdarg)
 	return mci_send_cmd(mci, &cmd, NULL);
 }
 
-static int mci_do_block_op(struct mci *mci, const void *src, void *dst, int blocknum,
-		int blocks)
-{
-	struct mci_cmd cmd = {};
-	struct mci_data data;
-	int ret;
-	unsigned mmccmd_multi_block, mmccmd_single_block, mmccmd;
-	unsigned int flags;
-
-	if (dst) {
-		mmccmd_multi_block = MMC_CMD_READ_MULTIPLE_BLOCK;
-		mmccmd_single_block = MMC_CMD_READ_SINGLE_BLOCK;
-		flags = MMC_DATA_READ;
-	} else {
-		/*
-		 * Quoting eMMC Spec v5.1 (JEDEC Standard No. 84-B51):
-		 * Due to legacy reasons, a Device may still treat CMD24/25 during
-		 * prg-state (while busy is active) as a legal or illegal command.
-		 * A host should not send CMD24/25 while the Device is in the prg
-		 * state and busy is active.
-		 */
-		ret = mci_poll_until_ready(mci, 1000 /* ms */);
-		if (ret && ret != -ENOSYS)
-			return ret;
-
-		mmccmd_multi_block = MMC_CMD_WRITE_MULTIPLE_BLOCK;
-		mmccmd_single_block = MMC_CMD_WRITE_SINGLE_BLOCK;
-		flags = MMC_DATA_WRITE;
-	}
-
-	if (blocks > 1)
-		mmccmd = mmccmd_multi_block;
-	else
-		mmccmd = mmccmd_single_block;
-
-	mci_setup_cmd(&cmd,
-		mmccmd,
-		mci->high_capacity != 0 ? blocknum : blocknum * mci->read_bl_len,
-		MMC_RSP_R1);
-
-	if (dst)
-		data.dest = dst;
-	else
-		data.src = src;
-
-	data.blocks = blocks;
-	data.blocksize = mci->read_bl_len;
-	data.flags = flags;
-
-	ret = mci_send_cmd(mci, &cmd, &data);
-
-	if (ret || blocks > 1) {
-		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0,
-			      IS_SD(mci) ? MMC_RSP_R1b : MMC_RSP_R1);
-		mci_send_cmd(mci, &cmd, NULL);
-	}
-
-	return ret;
-}
-
 /**
  * Read one or several block(s) of data from the card
  * @param mci MCI instance
@@ -388,23 +381,36 @@ static int mci_do_block_op(struct mci *mci, const void *src, void *dst, int bloc
  * @param blocks number of blocks to read
  */
 static int mci_block_read(struct mci *mci, void *dst, int blocknum,
-		int blocks)
+			  int blocks)
 {
-	return mci_do_block_op(mci, NULL, dst, blocknum, blocks);
-}
+	struct mci_cmd cmd = {};
+	struct mci_data data;
+	int ret;
+	unsigned mmccmd;
 
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
-	return mci_do_block_op(mci, src, NULL, blocknum, blocks);
+	if (blocks > 1)
+		mmccmd = MMC_CMD_READ_MULTIPLE_BLOCK;
+	else
+		mmccmd = MMC_CMD_READ_SINGLE_BLOCK;
+
+	mci_setup_cmd(&cmd,
+		mmccmd,
+		mci->high_capacity != 0 ? blocknum : blocknum * mci->read_bl_len,
+		MMC_RSP_R1);
+
+	data.dest = dst;
+	data.blocks = blocks;
+	data.blocksize = mci->read_bl_len;
+	data.flags = MMC_DATA_READ;
+
+	ret = mci_send_cmd(mci, &cmd, &data);
+
+	if (ret || blocks > 1) {
+		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0,
+			      IS_SD(mci) ? MMC_RSP_R1b : MMC_RSP_R1);
+		mci_send_cmd(mci, &cmd, NULL);
+	}
+	return ret;
 }
 
 /**
-- 
2.39.5



