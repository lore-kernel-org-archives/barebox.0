Delivery-date: Wed, 20 Apr 2022 08:40:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh40t-008ptV-Vi
	for lore@lore.pengutronix.de; Wed, 20 Apr 2022 08:40:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh40r-0001PQ-7Z
	for lore@pengutronix.de; Wed, 20 Apr 2022 08:40:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPbBGHqnuoGNcMAhMvYYSScHPQFb+fBNpKcsZ9j/zdA=; b=Gd90eeaGHZS2zY
	KB5Tub2T0q8TirGFs0ZEoG0zKtSSi4/OvXz4iS7xW+zwLPfTQgTkzgcRkAiaGHuaFkmyLZ5jIWrWF
	nekUa2wZvfbho4Sp4Us6/bKN5chkVFHJWipDmWfGvX22IKG0UfGFGxsaxTvJOKEfEsPrUmOdjlziB
	QmswnylKelznl7NsvQUqfSs7I7uqubK82FJLOlGGwO3B6n9XFRGt5sT8vxXlzZnBDekDgN8s5JW52
	FZG/I24JcgeOm/InHpIparUhhwstFuKMlgzjKWvXv3A0JnK7LWFZpkZR8VoRl4jIvgCBiuX+n9AhY
	7cIZrpiWaYNcg9LMuUqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh3zM-007aQ1-8W; Wed, 20 Apr 2022 06:38:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh3zG-007aNI-6r
 for barebox@lists.infradead.org; Wed, 20 Apr 2022 06:38:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nh3zA-0001Cc-BC; Wed, 20 Apr 2022 08:38:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nh3zA-004713-U7; Wed, 20 Apr 2022 08:38:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nh3z8-004SIu-Nq; Wed, 20 Apr 2022 08:38:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Apr 2022 08:38:40 +0200
Message-Id: <20220420063840.1062067-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220420063840.1062067-1-s.hauer@pengutronix.de>
References: <20220420063840.1062067-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_233850_284249_624FA79A 
X-CRM114-Status: GOOD (  18.47  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: omap: xload: read from unpartitioned device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The omap xload code creates a temporary partition where the barebox
image is read from. Since 7f9f45b9bf it is no longer allowed to create
overlapping partitions which means the temporary partition can no longer
be created when the device was partitioned already. Fix this by using
the mtd PEB api to read the barebox image from the full device and
not from a partition.

Fixes: 7f9f45b9bf ("devfs: Do not create overlapping partitions")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/xload.c | 86 +++++++++++++++-----------------------
 1 file changed, 33 insertions(+), 53 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index af9abf38b5..d786e6ceb2 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -20,6 +20,7 @@
 #include <net.h>
 #include <environment.h>
 #include <dhcp.h>
+#include <mtd/mtd-peb.h>
 
 struct omap_barebox_part *barebox_part;
 
@@ -32,29 +33,6 @@ static struct omap_barebox_part default_part = {
 	.nor_size = SZ_1M,
 };
 
-static void *read_image_head(const char *name)
-{
-	void *header = xmalloc(ARM_HEAD_SIZE);
-	struct cdev *cdev;
-	int ret;
-
-	cdev = cdev_open_by_name(name, O_RDONLY);
-	if (!cdev) {
-		printf("failed to open %s\n", name);
-		return NULL;
-	}
-
-	ret = cdev_read(cdev, header, ARM_HEAD_SIZE, 0, 0);
-	cdev_close(cdev);
-
-	if (ret != ARM_HEAD_SIZE) {
-		printf("failed to read from %s\n", name);
-		return NULL;
-	}
-
-	return header;
-}
-
 static unsigned int get_image_size(void *head)
 {
 	unsigned int ret = 0;
@@ -67,57 +45,62 @@ static unsigned int get_image_size(void *head)
 	return ret;
 }
 
-static void *read_mtd_barebox(const char *partition)
+static void *read_mtd_barebox(const char *part, unsigned int start, unsigned int size)
 {
 	int ret;
-	int size;
-	void *to, *header;
+	void *to;
 	struct cdev *cdev;
+	struct mtd_info *mtd;
+	unsigned int ps, pe;
+
+	cdev = cdev_open_by_name(part, O_RDONLY);
+	if (!cdev) {
+		printf("failed to open partition\n");
+		return NULL;
+	}
 
-	header = read_image_head(partition);
-	if (header == NULL)
+	mtd = cdev->mtd;
+	if (!mtd)
 		return NULL;
 
-	size = get_image_size(header);
-	if (!size) {
-		printf("failed to get image size\n");
+	if (mtd_mod_by_eb(start, mtd) != 0) {
+		printf("Start must be eraseblock aligned\n");
 		return NULL;
 	}
 
 	to = xmalloc(size);
 
-	cdev = cdev_open_by_name(partition, O_RDONLY);
-	if (!cdev) {
-		printf("failed to open partition\n");
-		return NULL;
+	ps = mtd_div_by_eb(start, mtd);
+	pe = mtd_div_by_eb(start + size, mtd);
+	ret = mtd_peb_read_file(mtd, ps, pe, to, size);
+	if (ret) {
+		printf("Can't read image from %s: %d\n", part, ret);
+		goto err;
 	}
 
-	ret = cdev_read(cdev, to, size, 0, 0);
-	if (ret != size) {
-		printf("failed to read from partition\n");
-		return NULL;
+	size = get_image_size(to);
+	if (!size) {
+		printf("failed to get image size\n");
+		goto err;
 	}
 
 	return to;
+
+err:
+	free(to);
+	return NULL;
 }
 
 static void *omap_xload_boot_nand(struct omap_barebox_part *part)
 {
 	void *to;
 
-	devfs_add_partition("nand0", part->nand_offset, part->nand_size,
-					DEVFS_PARTITION_FIXED, "x");
-	dev_add_bb_dev("x", "bbx");
-
-	to = read_mtd_barebox("bbx");
+	to = read_mtd_barebox("nand0", part->nand_offset, part->nand_size);
 	if (to == NULL && part->nand_bkup_size != 0) {
 		printf("trying to load image from backup partition.\n");
-		devfs_add_partition("nand0", part->nand_bkup_offset,
-				part->nand_bkup_size,
-				DEVFS_PARTITION_FIXED, "x_bkup");
-		dev_add_bb_dev("x_bkup", "bbx_bkup");
 
-		to = read_mtd_barebox("bbx_bkup");
+		to = read_mtd_barebox("nand0", part->nand_bkup_offset,
+				part->nand_bkup_size);
 	}
 
 	return to;
@@ -162,10 +145,7 @@ static void *omap_xload_boot_mmc(void)
 
 static void *omap_xload_boot_spi(struct omap_barebox_part *part)
 {
-	devfs_add_partition("m25p0", part->nor_offset, part->nor_size,
-					DEVFS_PARTITION_FIXED, "x");
-
-	return read_mtd_barebox("x");
+	return read_mtd_barebox("m25p0", part->nor_offset, part->nor_size);
 }
 
 static void *omap4_xload_boot_usb(void){
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

