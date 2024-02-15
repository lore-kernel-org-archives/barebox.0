Delivery-date: Thu, 15 Feb 2024 08:48:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUI-007AWB-04
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 08:48:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUH-0001Sc-49
	for lore@pengutronix.de; Thu, 15 Feb 2024 08:48:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JF2tzzS3EHGAcEe4WJMnE0DtrwCgY5vfFPsfDoScIh8=; b=V1GEGVPXHlfHKtyrPPHCALzAwx
	lFokXJUCOsz5OUkqyvrOF8TqGSUuWIoeEIHoO1lsLdU1qJnHqGsk7kkHZcZ5pTh20i+vDtS1idl6C
	jjtt/yP3Yqx6z4w6/b0FCBd4DugH4htCSCHeQ1bI1K0r1psQinj2MWe18Ylh5UATgW6DwWh1Q6TK/
	eerFbV3dy/6UNAoxYH/Beun08cufbyPSQ3sye5Vxllvmm+GcQB5vsdwxlriZLRC2/iCoARBMJ1T16
	4+5wKONA1GtOdQF8CrwVJzHUq+7Db4s92a7h1iUElodpKfgLkOdPKf+VPinGtcT2XD17iK/ndld6q
	EulFofgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTb-0000000FGBZ-0IXh;
	Thu, 15 Feb 2024 07:48:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTU-0000000FG8L-1Rai
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 07:48:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-00017J-Mw; Thu, 15 Feb 2024 08:47:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000qCD-9h; Thu, 15 Feb 2024 08:47:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-0041pl-0c;
	Thu, 15 Feb 2024 08:47:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Feb 2024 08:47:54 +0100
Message-Id: <20240215074757.960200-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_234804_479500_C971F034 
X-CRM114-Status: GOOD (  18.61  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/7] block: reparse partition table when necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Call reparse_partition_table() when the partition table may have
changed. We detect this by recording if the block device has been
written to in the area where the partition table is.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c  | 30 ++++++++++++++++++++++++++++--
 include/block.h |  2 ++
 2 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/common/block.c b/common/block.c
index 3a4a9fb731..007c8bed12 100644
--- a/common/block.c
+++ b/common/block.c
@@ -284,6 +284,17 @@ static ssize_t block_op_write(struct cdev *cdev, const void *buf, size_t count,
 	blkcnt_t blocks;
 	int ret;
 
+	/*
+	 * When the offset that is written to is within the first two
+	 * LBAs then the partition table has changed, reparse the partition
+	 * table at close time in this case. A GPT covers more space than
+	 * only the first two LBAs, but a CRC of the remaining pieces is
+	 * written to LBA1, so LBA1 must change as well when the partioning
+	 * is changed.
+	 */
+	if (offset < 2 * SECTOR_SIZE)
+		blk->need_reparse = true;
+
 	if (offset & mask) {
 		size_t now = BLOCKSIZE(blk) - (offset & mask);
 		void *iobuf = block_get(blk, block);
@@ -335,13 +346,28 @@ static ssize_t block_op_write(struct cdev *cdev, const void *buf, size_t count,
 static int block_op_flush(struct cdev *cdev)
 {
 	struct block_device *blk = cdev->priv;
+	int ret;
 
 	blk->discard_start = blk->discard_size = 0;
 
-	return writebuffer_flush(blk);
+	ret = writebuffer_flush(blk);
+
+	return ret;
 }
 
-static int block_op_close(struct cdev *cdev) __alias(block_op_flush);
+static int block_op_close(struct cdev *cdev)
+{
+	struct block_device *blk = cdev->priv;
+
+	block_op_flush(cdev);
+
+	if (blk->need_reparse) {
+		reparse_partition_table(blk);
+		blk->need_reparse = false;
+	}
+
+	return 0;
+}
 
 static int block_op_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
 {
diff --git a/include/block.h b/include/block.h
index 44037bd74c..aaaa97400f 100644
--- a/include/block.h
+++ b/include/block.h
@@ -33,6 +33,8 @@ struct block_device {
 	struct list_head idle_blocks;
 
 	struct cdev cdev;
+
+	bool need_reparse;
 };
 
 extern struct list_head block_device_list;
-- 
2.39.2



