Delivery-date: Wed, 12 Feb 2025 15:33:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoJ-001Smr-1x
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:33:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoH-0006Oi-U8
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:33:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DinDA/TOFOcf+gvhzUdHc1Eaosxeaci6ybsK5j42A6M=; b=XBLWzuh3v5ju2xyYXUKVAScBfC
	0NJ3+mXzlEZnXJdCwcFA7nrkQ6czy9LwkGWCzVHYMLMRoIqnjIoLfmaCKvYMvFXiRkiYbLR5oBLCa
	fE9KSZmttSwRFjdLx+cJpyId87fbUopkDDUs9pmYzyXjY/BHTR7IMZ6FQMSQKrAW3R1E5IQkR/iTB
	NWBp39/Tc3L8y/ru5hWWfFdvGPq4VBRliwmt+bmifExuMdk/mUkwQQEicSHhRfoR4w3LUHEOM0hrA
	ouo6Pc9ANKRYvRVayEU0OChnuZbFMwzOnb9Xp0Oecu7EmRQ+nd+uZKbw8Zkirk3BZPYi8KJozcmPg
	ET86sMtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnk-00000007gGN-2DVh;
	Wed, 12 Feb 2025 14:33:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnf-00000007gAx-26MX
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-0005qL-Ck; Wed, 12 Feb 2025 15:33:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-000bGz-0f;
	Wed, 12 Feb 2025 15:33:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1z;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-14-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=3921;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=MIMfxqjOrQ7dIl5T9DF5taDjBKkYNRV4x6QzmCmWHcs=;
 b=6lwZy3oEkuaFmdD2HLj0l6sLaDlNKRqkfcYEzdvQeAdp0+IApIyXOK5zXDUWxCjLQOLAJ6O/v
 mXAZclFk+K+Ci+yXgW1u+GSqmf0SRzgBikKNJtMZ9qp6fejiXl29gZ7
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063315_545126_26AD1CAF 
X-CRM114-Status: GOOD (  16.42  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/20] ARM: k3: add eMMC barebox update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a barebox update handler to write a barebox image to the
eMMC boot partitions. The image is written to the currently inactive
boot partition which is made active after a successful write thus
enabling a failsafe update.

The update handler expects an image which has the tiboot3.bin right
at the start of the image and a FIP image containing the next stages
at offset 1MiB. This image can't be generated by barebox itself (as
it requires two barebox images built for different architectures). It
must be generated by an external build system.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Makefile |  1 +
 arch/arm/mach-k3/bbu.c    | 77 +++++++++++++++++++++++++++++++++++++++++++++++
 include/mach/k3/common.h  | 13 ++++++++
 3 files changed, 91 insertions(+)

diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
index 8120c6fd35..b1dfb66d74 100644
--- a/arch/arm/mach-k3/Makefile
+++ b/arch/arm/mach-k3/Makefile
@@ -1,6 +1,7 @@
 obj-y += common.o
 obj-pbl-$(CONFIG_MACH_K3_CORTEX_R5) += r5.o
 obj-pbl-y += ddrss.o
+obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
 
 extra-$(CONFIG_MACH_K3_CORTEX_R5) += combined-dm-cfg-am625.k3cfg combined-sysfw-cfg-am625.k3cfg
 
diff --git a/arch/arm/mach-k3/bbu.c b/arch/arm/mach-k3/bbu.c
new file mode 100644
index 0000000000..815af086e8
--- /dev/null
+++ b/arch/arm/mach-k3/bbu.c
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "k3-bbu: " fmt
+
+#include <bbu.h>
+#include <xfuncs.h>
+#include <fcntl.h>
+#include <filetype.h>
+#include <linux/printk.h>
+#include <unistd.h>
+#include <mach/k3/common.h>
+#include <linux/sizes.h>
+#include <libfile.h>
+
+static int k3_bbu_mmc_update(struct bbu_handler *handler,
+				  struct bbu_data *data)
+{
+	int fd, ret;
+	enum filetype type;
+
+	if (data->len < K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE + SZ_1K) {
+		pr_err("Image is too small\n");
+		return -EINVAL;
+	}
+
+	type = file_detect_type(data->image + K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE, SZ_1K);
+
+	if (type != filetype_fip) {
+		pr_err("Cannot find FIP image at offset 1M\n");
+		return -EINVAL;
+	}
+
+	pr_debug("Attempting eMMC boot partition update\n");
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	fd = open(data->devicefile, O_RDWR);
+	if (fd < 0)
+		return fd;
+
+	ret = pwrite_full(fd, data->image, data->len, 0);
+	if (ret < 0)
+		pr_err("writing to %s failed with %pe\n", data->devicefile, ERR_PTR(ret));
+
+	close(fd);
+
+	return ret < 0 ? ret : 0;
+}
+
+static int k3_bbu_mmc_fip_handler(struct bbu_handler *handler,
+				       struct bbu_data *data)
+{
+	return bbu_mmcboot_handler(handler, data, k3_bbu_mmc_update);
+}
+
+int k3_bbu_emmc_register(const char *name,
+			 const char *devicefile,
+			 unsigned long flags)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+        handler = xzalloc(sizeof(*handler));
+
+        handler->flags = flags | BBU_HANDLER_FLAG_MMC_BOOT_ACK;
+        handler->devicefile = devicefile;
+        handler->name = name;
+        handler->handler = k3_bbu_mmc_fip_handler;
+
+        ret = bbu_register_handler(handler);
+        if (ret)
+                free(handler);
+
+        return ret;
+}
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index 14dfc4a28a..871e9f39e3 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -16,4 +16,17 @@ void am625_enable_32k_crystal(void);
 
 #define K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE	SZ_1M
 
+#ifdef CONFIG_BAREBOX_UPDATE
+int k3_bbu_emmc_register(const char *name,
+			 const char *devicefile,
+			 unsigned long flags);
+#else
+static inline int k3_bbu_emmc_register(const char *name,
+				       const char *devicefile,
+				       unsigned long flags)
+{
+	return 0;
+}
+#endif
+
 #endif /* __MACH_K3_COMMON_H */

-- 
2.39.5



