Delivery-date: Tue, 12 Oct 2021 09:35:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCK8-00027T-Qk
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:35:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCK6-0005P2-67
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:35:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=om3waT7HOkTFevYg6MFUGS5ObiamhWhWDUFmGStGzZo=; b=F/db3w5SMc25P1
	O1sxYcA/VOy7A7YsZsBkY3WbZlJw5LASEzFtv5AdlWafkLUFH3uymfAMT7Ykt2rqTV3Hu7xDqVVeq
	2LXDDIvRVKK/ktsXrEnfJ7naE4TaRkx/N+z0PdhO1JqhSQv3EYep7tfvhjj5qDwhoLLUcBKDWDiy4
	tWMWtwrV5XpXFL5NbUciiKlsbDBT/4lVrYrxlQmLZABMUkGh1LYFak4vKCQp8iFcHezXjIR+MPl0i
	M0poFp0kh26JUJEwmN+3OKbDK77xxfuOqMVSKgEyXMuK/vS6373lm5fdgVmxR/4/1O3gJquaPPpj9
	Xk6u1/6UtJnXeUXfpH3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCIq-00BmsN-W4; Tue, 12 Oct 2021 07:34:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCIP-00Bmfc-Va
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:34:02 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCIM-0004ia-LO; Tue, 12 Oct 2021 09:33:54 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1maCIL-00H5N9-RO; Tue, 12 Oct 2021 09:33:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Oct 2021 09:33:52 +0200
Message-Id: <20211012073352.4071559-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012073352.4071559-1-s.hauer@pengutronix.de>
References: <20211012073352.4071559-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_003358_239228_745F31F6 
X-CRM114-Status: GOOD (  26.61  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] ARM: Rockchip: RK3568: implement failsafe barebox update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The RK3568 ROM searches for valid boot images at different positions
on SD/eMMC cards. This can be used to implement a failsafe barebox
update which is immune against power failures.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/rockchip-rk3568-evb/board.c |   4 +-
 arch/arm/dts/rk3568-evb1-v10.dts            |  10 --
 arch/arm/mach-rockchip/Makefile             |   1 +
 arch/arm/mach-rockchip/bbu.c                | 137 ++++++++++++++++++++
 arch/arm/mach-rockchip/include/mach/bbu.h   |   9 +-
 5 files changed, 146 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/bbu.c

diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index 2d472d1331..09385bea29 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -28,8 +28,8 @@ static int rk3568_evb_probe(struct device_d *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc.barebox");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/sd.barebox");
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/sd");
 
 	return 0;
 }
diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index ebfd45ada8..6f1eebc619 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -475,11 +475,6 @@
 		#address-cells = <2>;
 		#size-cells = <2>;
 
-		partition@8000 {
-			label = "barebox";
-			reg = <0x0 0x8000 0x0 0x400000>;
-		};
-
 		environment_emmc: partition@408000 {
 			label = "barebox-environment";
 			reg = <0x0 0x408000 0x0 0x8000>;
@@ -506,11 +501,6 @@
 		#address-cells = <2>;
 		#size-cells = <2>;
 
-		partition@8000 {
-			label = "barebox";
-			reg = <0x0 0x8000 0x0 0x400000>;
-		};
-
 		environment_sd: partition@408000 {
 			label = "barebox-environment";
 			reg = <0x0 0x408000 0x0 0x8000>;
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index ebaa3a5450..66bcdba2eb 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
 obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
 obj-$(CONFIG_ARCH_RK3568) += bootm.o
+obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
new file mode 100644
index 0000000000..0a580c908d
--- /dev/null
+++ b/arch/arm/mach-rockchip/bbu.c
@@ -0,0 +1,137 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#include <common.h>
+#include <malloc.h>
+#include <bbu.h>
+#include <filetype.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <linux/sizes.h>
+#include <linux/stat.h>
+#include <ioctl.h>
+#include <environment.h>
+#include <mach/bbu.h>
+#include <libfile.h>
+#include <linux/bitfield.h>
+#include <mach/rk3568-regs.h>
+
+/* The MaskROM looks for images on these locations: */
+#define IMG_OFFSET_0	(0 * SZ_1K + SZ_32K)
+#define IMG_OFFSET_1	(512 * SZ_1K + SZ_32K)
+#define IMG_OFFSET_2	(1024 * SZ_1K + SZ_32K)
+#define IMG_OFFSET_3	(1536 * SZ_1K + SZ_32K)
+#define IMG_OFFSET_4	(2048 * SZ_1K + SZ_32K)
+
+#define RK3568_IRAM_ACTIVE_BOOT_SLOT	GENMASK(12, 10)
+
+static int rk3568_get_active_slot(void)
+{
+	return FIELD_GET(RK3568_IRAM_ACTIVE_BOOT_SLOT,
+			 readl(RK3568_IRAM_BASE + 0x14));
+}
+
+/*
+ * The strategy here is:
+ * The MaskROM iterates over the above five locations until it finds a valid
+ * boot image. The images are protected with sha sums, so any change to an
+ * image on disk is invalidating it. We first check if we have enough space to
+ * write two copies of barebox. To make it simple we only use IMG_OFFSET_0 and
+ * IMG_OFFSET_4 which leaves the maximum size for a single image. When there's
+ * not enough free space on the beginning of the disk we only write a single
+ * image. When we have enough space for two images we first write the inactive one
+ * (leaving the active one intact). Afterwards we write the active one which
+ * leaves the previously written inactive image as a fallback in case writing the
+ * first one gets interrupted.
+ */
+static int rk3568_bbu_mmc_handler(struct bbu_handler *handler,
+				  struct bbu_data *data)
+{
+	enum filetype filetype;
+	int ret, fd, wr0, wr1;
+	loff_t space;
+
+	filetype = file_detect_type(data->image, data->len);
+	if (filetype != filetype_rockchip_rkns_image) {
+		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
+				file_type_to_string(filetype_rockchip_rkns_image),
+				file_type_to_string(filetype)))
+			return -EINVAL;
+	}
+
+	device_detect_by_name(devpath_to_name(data->devicefile));
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	space = cdev_unallocated_start(devpath_to_name(data->devicefile));
+
+	if (space < IMG_OFFSET_0 + data->len) {
+		pr_err("Unallocated space on %s is too small for one image\n", data->devicefile);
+		return -ENOSPC;
+	}
+
+	fd = open(data->devicefile, O_WRONLY);
+	if (fd < 0)
+		return fd;
+
+	if (space >= IMG_OFFSET_4 + data->len) {
+		int slot = rk3568_get_active_slot();
+
+		pr_info("Unallocated space is enough for two copies, doing failsafe update\n");
+
+		if (slot == 0) {
+			wr0 = IMG_OFFSET_4;
+			wr1 = IMG_OFFSET_0;
+		} else {
+			wr0 = IMG_OFFSET_0;
+			wr1 = IMG_OFFSET_4;
+		}
+	} else {
+		wr0 = IMG_OFFSET_0;
+		wr1 = 0;
+	}
+
+	ret = pwrite_full(fd, data->image, data->len, wr0);
+	if (ret < 0) {
+		pr_err("writing to %s failed with %s\n", data->devicefile,
+			strerror(-ret));
+		goto err_close;
+	}
+
+	if (wr1) {
+		ret = pwrite_full(fd, data->image, data->len, wr1);
+		if (ret < 0) {
+			pr_err("writing to %s failed with %s\n", data->devicefile,
+				strerror(-ret));
+			goto err_close;
+		}
+	}
+
+	ret = 0;
+
+err_close:
+	close(fd);
+
+	return ret;
+}
+
+int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
+                const char *devicefile)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+
+	handler->flags = flags;
+	handler->devicefile = devicefile;
+	handler->name = name;
+	handler->handler = rk3568_bbu_mmc_handler;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
diff --git a/arch/arm/mach-rockchip/include/mach/bbu.h b/arch/arm/mach-rockchip/include/mach/bbu.h
index e61e0615e2..7fb08a0a9e 100644
--- a/arch/arm/mach-rockchip/include/mach/bbu.h
+++ b/arch/arm/mach-rockchip/include/mach/bbu.h
@@ -3,12 +3,15 @@
 
 #include <bbu.h>
 
+#ifdef CONFIG_BAREBOX_UPDATE
+int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
+                const char *devicefile);
+#else
 static inline int rk3568_bbu_mmc_register(const char *name, unsigned long flags,
                 const char *devicefile)
 {
-	return bbu_register_std_file_update(name, flags,
-                devicefile, filetype_rockchip_rkns_image);
-
+	return -ENOSYS;
 }
+#endif
 
 # endif /* __MACH_ROCKCHIP_BBU_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

