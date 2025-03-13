Delivery-date: Thu, 13 Mar 2025 11:18:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdx-00DWhg-1Z
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:18:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdv-0006u7-3b
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:18:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ISwSmiyLMQnaPmQs3RVdWZV+IACK5eTv9pG4wQXRWQ=; b=t0PZE994kE5jIc3MzvkFZYBpXc
	c4ayglcV4lnNz4/+W0GgRTX5L5dcRA1YLOVuLLlxQDB13I7+7PJl9t5bVKhtpQdjP4zlxq7Tp33rA
	aeZuYUhgSBogcX0WEa8qg2y/Y86sY4ZDIUvX8UASpg9+3hKJln7H+eGybArPJlAI5clrKI04VwX2h
	t4w1FKDlu474D8V7ILgeJtRz5YPHDbMar1hta0jN45v0zKbjEsenl0zihiFwFLHLP3cl325j/iOdm
	xSMcZcVJA55ZBEf0UuRKxcQl0WJ/YeLpt+lSRYhHTXlV3hw75dQqzMZODnWY4FBnhtchCR0+EOI55
	gKqk73mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdD-0000000Apns-1yZ4;
	Thu, 13 Mar 2025 10:17:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfd9-0000000AplL-0oMh
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:17:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd5-0006G5-2o; Thu, 13 Mar 2025 11:17:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-005WBm-0i;
	Thu, 13 Mar 2025 11:17:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-00Gch5-0M;
	Thu, 13 Mar 2025 11:17:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:24 +0100
Message-Id: <20250313101728.3546902-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031735_231754_7CE4BE1E 
X-CRM114-Status: GOOD (  20.12  )
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
Subject: [PATCH 07/11] video: ramfb: use new qemu fw_cfg FS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new qemu_fw_cfg file system can simplify the ramfb driver a great
deal as it's then no longer necessary to enumerate the files in the
driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/Kconfig |   2 +-
 drivers/video/ramfb.c | 114 +++++++++++++++---------------------------
 2 files changed, 42 insertions(+), 74 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 0539e2d453da..437b6a3ba0f6 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -106,7 +106,7 @@ config DRIVER_VIDEO_SIMPLEFB
 
 config DRIVER_VIDEO_RAMFB
 	bool "QEMU RamFB support"
-	select QEMU_FW_CFG
+	select FS_QEMU_FW_CFG
 	help
 	  Add support for setting up a QEMU RamFB driver.
 
diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
index 5b03d8a9c821..0a0888fcfbcb 100644
--- a/drivers/video/ramfb.c
+++ b/drivers/video/ramfb.c
@@ -19,7 +19,6 @@ struct ramfb {
 	struct fb_info info;
 	dma_addr_t screen_dma;
 	struct fb_videomode mode;
-	u16 etcfb_select;
 };
 
 struct fw_cfg_etc_ramfb {
@@ -31,37 +30,6 @@ struct fw_cfg_etc_ramfb {
 	u32 stride;
 } __packed;
 
-static int fw_cfg_find_file(struct device *dev, int fd, const char *filename)
-{
-	size_t filename_len = strlen(filename);
-	ssize_t ret;
-	__be32 count;
-	int i;
-
-	ioctl(fd, FW_CFG_SELECT, &(u16) { FW_CFG_FILE_DIR });
-
-	lseek(fd, 0, SEEK_SET);
-
-	ret = read(fd, &count, sizeof(count));
-	if (ret < 0)
-		return ret;
-
-	for (i = 0; i < be32_to_cpu(count); i++) {
-		struct fw_cfg_file qfile;
-
-		read(fd, &qfile, sizeof(qfile));
-
-		dev_dbg(dev, "enumerating file %s\n", qfile.name);
-
-		if (memcmp(qfile.name, filename, filename_len))
-			continue;
-
-		return be16_to_cpu(qfile.select);
-	}
-
-	return -ENOENT;
-}
-
 static void ramfb_populate_modes(struct ramfb *ramfb)
 {
 	struct fb_info *info = &ramfb->info;
@@ -81,14 +49,15 @@ static void ramfb_populate_modes(struct ramfb *ramfb)
 static int ramfb_activate_var(struct fb_info *fbi)
 {
 	struct ramfb *ramfb = fbi->priv;
+	struct device *hwdev = fbi->dev.parent->parent;
 
 	if (fbi->screen_base)
-		dma_free_coherent(DMA_DEVICE_BROKEN,
-				  fbi->screen_base, ramfb->screen_dma, fbi->screen_size);
+		dma_free_coherent(hwdev, fbi->screen_base, ramfb->screen_dma,
+				  fbi->screen_size);
 
 	fbi->screen_size = fbi->xres * fbi->yres * fbi->bits_per_pixel / BITS_PER_BYTE;
-	fbi->screen_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
-					      fbi->screen_size, &ramfb->screen_dma);
+	fbi->screen_base = dma_alloc_coherent(hwdev, fbi->screen_size,
+					      &ramfb->screen_dma);
 
 	return 0;
 }
@@ -107,8 +76,6 @@ static void ramfb_enable(struct fb_info *fbi)
 	etc_ramfb->height = cpu_to_be32(fbi->yres);
 	etc_ramfb->stride = cpu_to_be32(fbi->line_length);
 
-	ioctl(ramfb->fd, FW_CFG_SELECT, &ramfb->etcfb_select);
-
 	pwrite(ramfb->fd, etc_ramfb, sizeof(*etc_ramfb), 0);
 
 	dma_free(etc_ramfb);
@@ -119,74 +86,75 @@ static struct fb_ops ramfb_ops = {
 	.fb_enable = ramfb_enable,
 };
 
-static int ramfb_probe(struct device *parent_dev, int fd)
+static int ramfb_probe(struct device *dev)
 {
 	int ret;
 	struct ramfb *ramfb;
 	struct fb_info *fbi;
 
-	ret = -ENODEV;
-
 	ramfb = xzalloc(sizeof(*ramfb));
 
-	ramfb->fd = fd;
-
-	ret = fw_cfg_find_file(parent_dev, fd, "etc/ramfb");
-	if (ret < 0) {
-		dev_dbg(parent_dev, "ramfb: fw_cfg (etc/ramfb) file not found\n");
-		return -ENODEV;
-	}
-
-	ramfb->etcfb_select = ret;
-	dev_dbg(parent_dev, "etc/ramfb file at slot 0x%x\n", ramfb->etcfb_select);
+	ramfb->fd = (int)(uintptr_t)dev->platform_data;
 
 	fbi = &ramfb->info;
 	fbi->priv = ramfb;
 	fbi->fbops = &ramfb_ops;
-	fbi->dev.parent = parent_dev;
+	fbi->dev.parent = dev;
 
 	ramfb_populate_modes(ramfb);
 
 	ret = register_framebuffer(fbi);
 	if (ret < 0) {
-		dev_err(parent_dev, "Unable to register ramfb: %d\n", ret);
+		dev_err(dev, "Unable to register ramfb: %d\n", ret);
 		return ret;
 	}
 
-	dev_info(parent_dev, "ramfb registered\n");
+	dev_info(dev, "ramfb registered\n");
 
 	return 0;
 }
 
+static struct driver ramfb_driver = {
+	.probe = ramfb_probe,
+	.name = "qemu-ramfb",
+};
+
 static int ramfb_driver_init(void)
 {
 	struct cdev *cdev;
-	int err = 0;
+	struct device *dev;
+	const char *mntpath;
+	int dirfd, fd;
 
-	for_each_cdev(cdev) {
-		int fd, ret;
+	platform_driver_register(&ramfb_driver);
 
-		if (!strstarts(cdev->name, "fw_cfg"))
-			continue;
+	cdev = cdev_by_name("fw_cfg");
+	if (!cdev)
+		return 0;
 
-		fd = cdev_fdopen(cdev, O_RDWR);
-		if (fd < 0) {
-			err = fd;
-			continue;
-		}
+	mntpath = cdev_mount(cdev);
+	if (IS_ERR(mntpath))
+		return PTR_ERR(mntpath);
 
-		ret = ramfb_probe(cdev->dev, fd);
-		if (ret == 0)
-			continue;
-		if (ret != -ENODEV && ret != -ENXIO)
-			err = ret;
+	dirfd = open(mntpath, O_PATH);
+	if (dirfd < 0)
+		return dirfd;
 
-		close(fd);
-	}
+	fd = openat(dirfd, "by_name/etc/ramfb", O_WRONLY);
+	close(dirfd);
+	if (fd == -ENOENT)
+		return 0;
+	if (fd < 0)
+		return fd;
 
-	return err;
+	dev = device_alloc("qemu-ramfb", DEVICE_ID_SINGLE);
+	dev->parent = cdev->dev;
+	dev->platform_data = (void *)(uintptr_t)fd;
+	platform_device_register(dev);
+
+	return 0;
 }
-device_initcall(ramfb_driver_init);
+late_initcall(ramfb_driver_init);
 
 MODULE_AUTHOR("Adrian Negreanu <adrian.negreanu@nxp.com>");
 MODULE_DESCRIPTION("QEMU RamFB driver");
-- 
2.39.5



