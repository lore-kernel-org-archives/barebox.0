Delivery-date: Tue, 19 Apr 2022 10:29:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngjEa-007dJT-Qx
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 10:29:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngjEX-0004r3-9f
	for lore@pengutronix.de; Tue, 19 Apr 2022 10:29:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UoQ/YqYv4RhhZpWQT/SdYD213o654MiWbPFIq7JA1cs=; b=lfCS72MwFOFMX38XWWLTl324Ll
	7TWBGKWeLDalClUob9WX7k7+EvXHT8kdnXmRGdZgUBy+9zz9R9lib/IBrrcYUh+UcHqydqI4IW5Dn
	qslHQo4Nrqe1O6AIPpjVCFFvKfnVO5CaHd3YA4517bRQ3KkN4+sg1QT81PkjwQjNmGXUDtsK/KuwG
	P25CkqItH2+vWEEia1Qf8nS/Ehw0cwgLopfzwoFE98ro+oN7N2u2O9oDVEp/yBaHvwk/PnkWJasTi
	bQJScQ1ENhv8tSMtQpLpBaNX2kn+blaRPwHzYI7oojDBolWaVoCXqvr/j39OBfLwfFevWK5eF42Hu
	LDYCPJyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngjDB-002KCV-6i; Tue, 19 Apr 2022 08:27:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngjD4-002K7z-38
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 08:27:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ngjD0-0004kf-Rh; Tue, 19 Apr 2022 10:27:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ngjD0-0002q5-GG; Tue, 19 Apr 2022 10:27:38 +0200
Date: Tue, 19 Apr 2022 10:27:38 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220419082738.GO4012@pengutronix.de>
References: <CAP1tNvQd1iDsyNGSyv25L45xkk8wTQtsdPGvhXZrNcFEGbtY7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvQd1iDsyNGSyv25L45xkk8wTQtsdPGvhXZrNcFEGbtY7w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:22:23 up 19 days, 20:52, 74 users,  load average: 0.01, 0.07, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_012742_337130_1D287A12 
X-CRM114-Status: GOOD (  37.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: AM335x MLO failed to boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Thu, Apr 14, 2022 at 05:07:38PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> I can't start the custom AM335x board after updating to version 2021.12.0.
> Perhaps this is a consequence of the "devfs: Do not create overlapping
> partitions" commit.
> 
> Here is a debug output:
> Add partition nand0.MLO, device nand0 (0x00000000-0x00020000)
> Add partition nand0.boot, device nand0 (0x00020000-0x00080000)
> Add partition nand0.env, device nand0 (0x000a0000-0x00040000)
> Add partition nand0.system, device nand0 (0x000e0000-0x0ff20000)
> booting from NAND
> Add partition x, device nand0 (0x00020000-0x00080000)
> New partition x (0x00020000-0x0009ffff) on nand0.boot overlaps with
> partition nand0.boot (0x00000000-0x0007ffff), not creating it
> failed to open bbx
> booting failed
> 
> What is the partition "x" in this case?
> How to fix this?

The problem is here:

> static void *omap_xload_boot_nand(struct omap_barebox_part *part)
> {
> 	void *to;
> 
> 	devfs_add_partition("nand0", part->nand_offset, part->nand_size,
> 					DEVFS_PARTITION_FIXED, "x");

This adds a partition in order to read the barebox image from it. You already
have a partitioned device, so we can't create any conflicting partitions.
We could read from that partition instead of re-creating it, but likely the
partitions do not exist in all cases. You could try the following patch. It's
completely untested, but the idea is to read from the raw device
instead.

Sascha

--------------------------8<--------------------------------
>From 2e9bd9d1a193aa8671e75ef3e9b31c6bccd8e309 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2022 10:22:09 +0200
Subject: [PATCH] ARM: omap: xload: Do not create partitions

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/xload.c | 86 +++++++++++++++-----------------------
 drivers/mtd/peb.c          | 32 ++++++++++++++
 include/mtd/mtd-peb.h      |  2 +
 3 files changed, 67 insertions(+), 53 deletions(-)

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
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 6c61e0734c..ac6b232e37 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -508,6 +508,38 @@ out:
 	return ret;
 }
 
+int mtd_peb_read_file(struct mtd_info *mtd, unsigned int peb_start,
+		      unsigned int peb_last, void *buf, size_t len)
+{
+	int ret, pnum;
+
+	pnum = peb_start;
+
+	while (len) {
+		size_t now = min_t(size_t, mtd->erasesize, len);
+
+		if (pnum > peb_last)
+			return -EIO;
+
+		if (mtd_peb_is_bad(mtd, pnum)) {
+			pnum++;
+			continue;
+		}
+
+		ret = mtd_peb_read(mtd, buf, pnum, 0, now);
+		if (ret)
+			goto out;
+
+		len -= now;
+		pnum++;
+		buf += now;
+	}
+
+	ret = 0;
+out:
+	return ret;
+}
+
 /**
  * mtd_peb_erase - erase a physical eraseblock.
  * @mtd: mtd device
diff --git a/include/mtd/mtd-peb.h b/include/mtd/mtd-peb.h
index cfcc0be611..cf8d8ff8da 100644
--- a/include/mtd/mtd-peb.h
+++ b/include/mtd/mtd-peb.h
@@ -23,6 +23,8 @@ int mtd_num_pebs(struct mtd_info *mtd);
 int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 				   int len, int num_bitflips, int random,
 				   int info);
+int mtd_peb_read_file(struct mtd_info *mtd, unsigned int peb_start,
+		      unsigned int peb_last, void *buf, size_t len);
 int mtd_peb_write_file(struct mtd_info *mtd, int peb_start, int max_pebs,
 		       const void *buf, size_t len);
 
-- 
2.30.2


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

