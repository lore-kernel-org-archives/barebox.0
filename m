Delivery-date: Fri, 26 Jun 2026 10:51:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HZ-00A1B5-2p
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:51:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HY-00021T-UO
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:51:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fmy0tOu5F+R+j5BTQ527GXvdEQPBC2cob0/uT4NbDAM=; b=byJsL08LDVIvb/LnMJKuSUnKWs
	zVwH/2j29TS5aARLxpWgHbudrk72fflnrdXJJHO30nCd6jsARjLejeiZlzpQ80zc6KkfrQn1LponP
	DyncHDDGbFc0YwzE2w0CXmDJOwTmuiQ6Iwu6WUYtF87hd5BBul5Uw1uBovq9dp/VG9avzlHX5KlZq
	nhQSmrKG8VqntkToZvTkZYIRdTJR7YuXu5i2trHNZD1CRsEO9Rpn9e/7gajkn+Vi0Xm8MvfVwmQwW
	J7Ef9eycchxCi98ArLxZex6GBnphiJCMQeskZz/QhIwIHAYSyMtJbZEiQP+nAgZSs7XDjojDtPKP7
	gbKi8xEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cm-0000000AtWh-2c77;
	Fri, 26 Jun 2026 08:46:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtG5-2NPt
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fmy0tOu5F+R+j5BTQ527GXvdEQPBC2cob0/uT4NbDAM=; b=EWfQSfNNxCRRDfzp/AY6Vneweq
	i13F/vdhf3uwejJdWHiekSut4f7tj3y0BmmE9BHMdV1CHtn52PJMUEgiRiAhCCUHupvKYxf14pWWj
	GLCkiXo9k2z3HhA68SB5hOGKncYh013khkt/7FsMsnJxoGc+z7nKL1MyVWrGX+gQZpSF/OkIOi29a
	Z9ysykpNaCru69IMhao0z1ds9/VQH+XAzI0wZp9V2D9zzy4kGpxrTC3hEIploeyQzjRYp777tZoVK
	6WQI+zwkAlKWN8rS9xmM8J7BtseTyXBNqAdRD1jH6Xz8NjGmyoNqp7SBNopENzL81R7lFNkK5oWgW
	7zDuh3yQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CZ-00000004cmA-2kIF
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CW-0003ZP-Uc; Fri, 26 Jun 2026 10:46:17 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:36 +0200
Message-ID: <20260626084608.1388806-26-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094620_095705_48FD89CC 
X-CRM114-Status: GOOD (  11.43  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 25/26] commands: parted: prepare use of non-512-byte sectors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switching parted to create non-512-byte sectors needs a bit more effort
than just switching out all hardcoded SECTOR_SIZE/SHIFT.

Nevertheless, pick these low hanging fruit and defer the rest to some
unknown point in the future.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/createnv.c     | 11 ++++++-----
 commands/parted.c       | 14 +++++++-------
 common/partitions/efi.c |  6 +++---
 3 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/commands/createnv.c b/commands/createnv.c
index 0c74637a114c..6083ab7c2c8f 100644
--- a/commands/createnv.c
+++ b/commands/createnv.c
@@ -69,15 +69,16 @@ static int do_createnv(int argc, char *argv[])
 		goto err;
 	}
 
-	buf = xzalloc(2 * SECTOR_SIZE);
+	buf = xzalloc(2 * BLOCKSIZE(blk));
 
-	ret = cdev_read(cdev, buf, 2 * SECTOR_SIZE, 0, 0);
+	ret = cdev_read(cdev, buf, 2 * BLOCKSIZE(blk), 0, 0);
 	if (ret < 0) {
 		printf("Cannot read from %s: %pe\n", cdev->name, ERR_PTR(ret));
 		goto err;
 	}
 
-	filetype = file_detect_partition_table(buf, 2 * SECTOR_SIZE, SECTOR_SIZE);
+	filetype = file_detect_partition_table(buf, 2 * BLOCKSIZE(blk),
+					       BLOCKSIZE(blk));
 
 	switch (filetype) {
 	case filetype_gpt:
@@ -108,7 +109,7 @@ static int do_createnv(int argc, char *argv[])
 		}
 	}
 
-	size >>= SECTOR_SHIFT;
+	size = blockdevice_round_nblocks(blk, size);
 
 	ret = partition_find_free_space(pdesc, size, &start);
 	if (ret) {
@@ -123,7 +124,7 @@ static int do_createnv(int argc, char *argv[])
 	}
 
 	printf("Will create a barebox environment partition of size %llu bytes on %s\n",
-	       size << SECTOR_SHIFT, cdev->name);
+	       size * BLOCKSIZE(blk), cdev->name);
 
 	if (!force) {
 		char c;
diff --git a/commands/parted.c b/commands/parted.c
index dd79def62a3e..3f531faaef3f 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -109,15 +109,15 @@ static int do_print(struct block_device *blk, int argc, char *argv[])
 	}
 
 	printf("Disk /dev/%s: %s\n", blk->cdev.name,
-	       size_human_readable(blk->num_blocks << SECTOR_SHIFT));
+	       size_human_readable(blockdevice_size(blk)));
 	printf("Partition Table: %s\n", pdesc->parser->name);
 
 	printf("Number      Start           End          Size     Name\n");
 
 	list_for_each_entry(part, &pdesc->partitions, list) {
-		uint64_t start = part->first_sec << SECTOR_SHIFT;
-		uint64_t size = part->size << SECTOR_SHIFT;
-		uint64_t end = start + size - SECTOR_SIZE;
+		uint64_t start = part->first_sec << blk->blockbits;
+		uint64_t size = part->size << blk->blockbits;
+		uint64_t end = start + size - BLOCKSIZE(blk);
 
 		printf(" %3d   %10llu%-3s %10llu%-3s %10llu%-3s  %-36s\n",
 			part->num,
@@ -162,7 +162,7 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
 	start = ALIGN(start, SZ_1M);
 
 	/* convert to LBA */
-	start >>= SECTOR_SHIFT;
+	start = blockdevice_round_nblocks(blk, start);
 
 	if (!strcmp(argv[4], "max")) {
 		/* gpt requires 34 blocks at the end */
@@ -182,7 +182,7 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
 		end *= mult;
 
 		/* convert to LBA */
-		end >>= SECTOR_SHIFT;
+		end >>= blk->blockbits;
 
 		/*
 		 * When unit is >= KB then subtract one sector for user
@@ -235,7 +235,7 @@ static int do_mkpart_size(struct block_device *blk, int argc, char *argv[])
 	size = ALIGN(size, PARTITION_ALIGN_SIZE);
 
 	/* convert to LBA */
-	size >>= SECTOR_SHIFT;
+	size = blockdevice_round_nblocks(blk, size);
 
 	pdesc = pdesc_get(blk);
 	if (!pdesc)
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 33d9a1df9e83..18a8c4d56632 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -689,7 +689,7 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 
 	partition_desc_init(&epd->pd, blk);
 
-	epd->gpt = xzalloc(SECTOR_SIZE);
+	epd->gpt = xzalloc(BLOCKSIZE(blk));
 	gpt = epd->gpt;
 
 	gpt->signature = cpu_to_le64(GPT_HEADER_SIGNATURE);
@@ -851,12 +851,12 @@ static int __efi_partition_write(struct efi_partition_desc *epd, bool primary)
 	uint64_t my_lba, partition_entry_lba;
 	int ret;
 
-	gpt = xmemdup(epd->gpt, SECTOR_SIZE);
+	gpt = xmemdup(epd->gpt, BLOCKSIZE(blk));
 
 	count = le32_to_cpu(gpt->num_partition_entries) *
 		le32_to_cpu(gpt->sizeof_partition_entry);
 
-	size = count / GPT_BLOCK_SIZE;
+	size = blockdevice_round_nblocks(blk, count);
 
 	if (primary) {
 		my_lba = 1;
-- 
2.47.3



