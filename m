Delivery-date: Sun, 14 Mar 2021 13:29:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsE-0007ld-9w
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:29:34 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsA-00072j-20
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:29:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oP0Kb5cnUY3v+4gggUXQ3XPdAL1hmBg7vrkC0LiVgUA=; b=pApZvNk9isL0JxGQWhLocGryL
	2viurH7I+4Bc7wkoOCA/I8OYStnoMwDt3pL9l4ykbdAhucr40bLRz9x8jOKkeg/qv4oKwUppAwBPs
	hIlJQE/VKxkMgJr7laNFXWoGa/8hTUzJMOSKcnf1m8CZS/t/rok0Pvda3+iMeBR9hzuXYEoh1IF/F
	F2wR+BWgUGLUhlNS7O/UCZOTBsDSZJo3TjMSNFmtvAkokN5eOzmuU5prsqpPcPSxbuWxmjNdeI1DM
	aPsigntmbzPI/YMCcCQLzGOYkehCQBqqiXsnxg3F857t4Fcz8b+VAGv3pJw9cvTKMjXSpPsLH1MiA
	7gY6xnh8g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPr4-00EBxc-QY; Sun, 14 Mar 2021 12:28:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPqq-00EBry-TL
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqo-0006LS-Mf; Sun, 14 Mar 2021 13:28:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-00015u-GE; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:27:45 +0100
Message-Id: <20210314122804.4128-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122809_457497_C3292EF8 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/20] partitions: don't allocate dma capable memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While block drivers may do DMA, they always use block caching chunks as
bounce buffer. No dma is every done directly to the block_read data
argument, so it doesn't need to be allocated with dma_alloc. The buffer
also need not be zeroed, as block_read will either overwrite it
completely or fail.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c     | 5 ++---
 common/partitions/dos.c | 7 +++----
 common/partitions/efi.c | 1 -
 3 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 1f0c544c6067..deb931f3290f 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -17,7 +17,6 @@
 #include <asm/unaligned.h>
 #include <disks.h>
 #include <filetype.h>
-#include <dma.h>
 #include <linux/err.h>
 
 #include "partitions/parser.h"
@@ -120,7 +119,7 @@ int parse_partition_table(struct block_device *blk)
 	uint8_t *buf;
 
 	pdesc = xzalloc(sizeof(*pdesc));
-	buf = dma_alloc(SECTOR_SIZE * 2);
+	buf = malloc(2 * SECTOR_SIZE);
 
 	rc = block_read(blk, buf, 0, 2);
 	if (rc != 0) {
@@ -149,7 +148,7 @@ int parse_partition_table(struct block_device *blk)
 	}
 
 on_error:
-	dma_free(buf);
+	free(buf);
 	free(pdesc);
 	return rc;
 }
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 488c2936f715..0012c4875658 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -16,7 +16,6 @@
 #include <disks.h>
 #include <init.h>
 #include <asm/unaligned.h>
-#include <dma.h>
 #include <linux/err.h>
 
 #include "parser.h"
@@ -64,7 +63,7 @@ static uint64_t disk_guess_size(struct device_d *dev,
 
 static void *read_mbr(struct block_device *blk)
 {
-	void *buf = dma_alloc(SECTOR_SIZE);
+	void *buf = malloc(SECTOR_SIZE);
 	int ret;
 
 	ret = block_read(blk, buf, 0, 1);
@@ -135,7 +134,7 @@ static int dos_get_disk_signature(struct param_d *p, void *_priv)
 static void dos_extended_partition(struct block_device *blk, struct partition_desc *pd,
 		struct partition *partition, uint32_t signature)
 {
-	uint8_t *buf = dma_alloc(SECTOR_SIZE);
+	uint8_t *buf = malloc(SECTOR_SIZE);
 	uint32_t ebr_sector = partition->first_sec;
 	struct partition_entry *table = (struct partition_entry *)&buf[0x1be];
 	unsigned partno = 5;
@@ -185,7 +184,7 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 	}
 
 out:
-	dma_free(buf);
+	free(buf);
 	return;
 }
 
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index f20fd0d9b9e8..437c3d64f889 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -16,7 +16,6 @@
 #include <disks.h>
 #include <init.h>
 #include <asm/unaligned.h>
-#include <dma.h>
 #include <crc.h>
 #include <linux/ctype.h>
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

