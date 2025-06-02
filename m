Delivery-date: Mon, 02 Jun 2025 15:29:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E7-002yVP-2Z
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 15:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E6-0007g8-Qn
	for lore@pengutronix.de; Mon, 02 Jun 2025 15:29:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cPatoL1rpNNJKjASOEc5eqJ/Tw75SFqXzNbaJ5iaVtQ=; b=dT/QhmcKeEGzoI5nVzIvHMt04H
	KvVb8zVFW1bJtZu/2wPBbZ92wMxqBuJKReo7709o36yi8rrvPzoN7OdJII71TJg+PcfrWFuAEAhUX
	w2BflL0RfKC/9Pf+bBH4rMIoHiqBKS2xo190A+wUIHfRgXJjI5IyfrMCrOB1ono+2Y5hfTNExr4Ui
	OqF6QR9fWOzMJW54SN+CgSOhWrl9M7pWMbuhWN1t2o4kp1SXhlFnLdtVyaghptLfM/av8q5rDHuiW
	3+m66YDA5cGVTYXbiXzX4Jbo9hF8hc7iTM8b4GsgevUhWWv1WsZe4yjrXrdR4CSDcykB0t5cFCuV7
	FqKFxNtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5Da-00000007Stu-3eaL;
	Mon, 02 Jun 2025 13:28:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5DS-00000007SrE-0smI
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 13:28:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-0007AE-Vw; Mon, 02 Jun 2025 15:28:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-001Slp-2R;
	Mon, 02 Jun 2025 15:28:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-009BwG-27;
	Mon, 02 Jun 2025 15:28:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Jun 2025 15:28:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250602-createnv-v1-2-c3239ff875d5@pengutronix.de>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
In-Reply-To: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748870916; l=4307;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iuuXyeCrgouOq6aq/aToshyOEabC3UFtmbDuuUdc7Rc=;
 b=ZdJVktYxcb2w5av/1zNrIRAhvBm3aSagm+z+dfqAXORelCSHexD6Ku9DKO4lsMiQJaXtvGjjH
 qSOW1aacMjDB0FPt5gNRAXYuDcrcmlRt1eg8oyEoMSR4QHDKoQ4T1TS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_062838_285306_E1C7014A 
X-CRM114-Status: GOOD (  17.88  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] partitions: Start partitions at 8MiB offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are many SoCs that store the bootloader on the raw eMMC/SD device
outside of partitions. Examples are all i.MX SoCs and Rockchip SoCs.
Until now the first partition starts at offset 1MiB and with this we
risk conflicting with the bootloader.

It's cumbersome to sort out all SoCs that have this problem. With
nowadays eMMC/SD card sizes it doesn't really matter anymore, so change
the 1MiB offset to 8MiB which is still only a small fraction of the
card size, but leaves enough space for putting the bootloader into.

Note the change in the GPT partition handling introduced with this
change. The layout previously was:

LBA0: MBR
LBA1: GPT header
LBA2-33: GPT partition entries

which now becomes:

LBA0: MBR
LBA1: GPT header
LBA16352-16383: GPT partition entries

This means the GPT partition entries moved from LBA2 to just below the
8MiB boundary and LBA2-16351 are now free for the bootloader. This helps
with with older SoCs on which the bootloader overlaps with the normal
location of the GPT partition entries, like i.MX7 and earlier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c     | 9 +++++++++
 common/partitions/efi.c | 8 ++++++--
 include/partitions.h    | 6 ++++++
 3 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 25d5f15721fc5980c927863b2745c23d7149da92..b3129ddd5f203c906908adb422e4b8a6dfac25b2 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -186,6 +186,9 @@ int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, ui
 	struct partition *p;
 	uint64_t min_sec = PARTITION_ALIGN_SECTORS;
 
+	if (min_sec < partition_first_usable_lba())
+		min_sec = partition_first_usable_lba();
+
 	min_sec = ALIGN(min_sec, PARTITION_ALIGN_SECTORS);
 
 	if (partition_is_free(pdesc, min_sec, sectors)) {
@@ -223,6 +226,12 @@ int partition_create(struct partition_desc *pdesc, const char *name,
 		return -EINVAL;
 	}
 
+	if (lba_start < partition_first_usable_lba()) {
+		pr_err("partition starts before first usable lba: %llu < %llu\n",
+		       lba_start, partition_first_usable_lba());
+		return -EINVAL;
+	}
+
 	list_for_each_entry(part, &pdesc->partitions, list) {
 		if (region_overlap_end(part->first_sec,
 				       part->first_sec + part->size - 1,
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 92868e4a77e5688d547ee3f2cac3ab9534a4ebdb..d237f734df50987b2d8ae41f83edc3e744fcf604 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -585,7 +585,7 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 	gpt_header *gpt;
 	unsigned int num_partition_entries = 128;
 	unsigned int gpt_size = (sizeof(gpt_entry) * num_partition_entries) / SECTOR_SIZE;
-	unsigned int first_usable_lba = gpt_size + 2;
+	unsigned int first_usable_lba = partition_first_usable_lba();
 
 	partition_desc_init(&epd->pd, blk);
 
@@ -719,7 +719,11 @@ static int efi_protective_mbr(struct block_device *blk)
 		return PTR_ERR(pdesc);
 	}
 
-	ret = partition_create(pdesc, "primary", "0xee", 1, last_lba(blk));
+	/*
+	 * For the protective MBR call directly into the mkpart hook. partition_create()
+	 * does not allow us to create a partition starting at LBA1
+	 */
+	ret = pdesc->parser->mkpart(pdesc, "primary", "0xee", 1, last_lba(blk));
 	if (ret) {
 		pr_err("Cannot create partition: %pe\n", ERR_PTR(ret));
 		goto out;
diff --git a/include/partitions.h b/include/partitions.h
index dd3e631c5aa337d752312cd94be5e7dbb4f527a5..6d97af824845eaf8c73a39e42bd4e9ed88a8e367 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -8,6 +8,7 @@
 #define __PARTITIONS_PARSER_H__
 
 #include <block.h>
+#include <disks.h>
 #include <filetype.h>
 #include <linux/uuid.h>
 #include <linux/list.h>
@@ -71,4 +72,9 @@ void partition_table_free(struct partition_desc *pdesc);
 bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t size);
 int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start);
 
+static inline uint64_t partition_first_usable_lba(void)
+{
+	return SZ_8M / SECTOR_SIZE;
+}
+
 #endif /* __PARTITIONS_PARSER_H__ */

-- 
2.39.5



