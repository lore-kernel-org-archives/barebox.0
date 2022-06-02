Delivery-date: Thu, 02 Jun 2022 11:03:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgk8-000NuP-BG
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:03:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgk5-0007B9-Tv
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:03:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbJh7mn1BAnnwFa4xTxyOEs2x5be3J348xG96Pqx+Jk=; b=3pa8u3ocTnJaNM
	fNVmSEqJ+JDBVhAwizAAvMO6Yrj3hyRmH+aiswyfsfQBVQC7CVLfZK4CClwK7w5vOJNUIF+x96h7D
	++vLudNlh3Zkai+UKWUARvwTRE1zatObHzR3gZqQB5TLFDOO0vXmW6PDDq5sdF5p+ahAOawbnmyG+
	OpHD/lY8ru8NISWOXDkwQmtjrgk1EGaeROaKiLF48IPAcqFupH318roN9IvYJQSpS+Tb+FNpvdPbh
	J8EKTBKQO3beoUo675lrBAdMogJ5RTYozaWtUxOMZbVJxm8imOOshntSMTm2a6KJ1OU+kKv9h+uRI
	l6SoDah886fIbnkiJyRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgig-002L3Z-KZ; Thu, 02 Jun 2022 09:02:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgi8-002Klu-LA
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-0006av-M6; Thu, 02 Jun 2022 11:01:41 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi6-005zl3-9d; Thu, 02 Jun 2022 11:01:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi3-00DOLc-0U; Thu, 02 Jun 2022 11:01:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jun 2022 11:01:32 +0200
Message-Id: <20220602090133.3190450-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
References: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020144_899719_DF14E277 
X-CRM114-Status: GOOD (  23.06  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] ARM: stm32mp: bbu: add FIP update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

BootROM boots from GPT partition fsbl1 or fsbl2 on SD-Card and from
boot partition on eMMC. Recent TF-A without legacy image support will
then look in a GPT partition named fip in the user area.

With recent patches[1], TF-A will also check offset SZ_256K in the boot
partition to see if the FIP is there.

Add a barebox_update handler that covers these scenarios.

[1]: https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/15332
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/Makefile           |   1 +
 arch/arm/mach-stm32mp/bbu.c              | 197 +++++++++++++++++++++++
 arch/arm/mach-stm32mp/include/mach/bbu.h |  16 ++
 3 files changed, 214 insertions(+)
 create mode 100644 arch/arm/mach-stm32mp/bbu.c

diff --git a/arch/arm/mach-stm32mp/Makefile b/arch/arm/mach-stm32mp/Makefile
index 86c13b8fca8a..837449150cff 100644
--- a/arch/arm/mach-stm32mp/Makefile
+++ b/arch/arm/mach-stm32mp/Makefile
@@ -4,3 +4,4 @@ obj-y := init.o
 obj-pbl-y := ddrctrl.o
 pbl-y := bl33-generic.o
 obj-$(CONFIG_BOOTM) += stm32image.o
+obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
diff --git a/arch/arm/mach-stm32mp/bbu.c b/arch/arm/mach-stm32mp/bbu.c
new file mode 100644
index 000000000000..545965198f4d
--- /dev/null
+++ b/arch/arm/mach-stm32mp/bbu.c
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#define pr_fmt(fmt) "stm32mp-bbu: " fmt
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
+#include <mach/bbu.h>
+#include <libfile.h>
+#include <linux/bitfield.h>
+
+#define STM32MP_BBU_IMAGE_HAVE_FSBL		BIT(0)
+#define STM32MP_BBU_IMAGE_HAVE_FIP		BIT(1)
+
+struct stm32mp_bbu_handler {
+	struct bbu_handler handler;
+	loff_t offset;
+};
+
+#define to_stm32mp_bbu_handler(h) container_of(h, struct stm32mp_bbu_handler, h)
+
+static int stm32mp_bbu_gpt_part_update(struct bbu_handler *handler,
+				       const struct bbu_data *data,
+				       const char *part, bool optional)
+{
+	struct bbu_data gpt_data = *data;
+	struct stat st;
+	int ret;
+
+	gpt_data.devicefile = basprintf("%s.%s", gpt_data.devicefile, part);
+	if (!gpt_data.devicefile)
+		return -ENOMEM;
+
+	pr_debug("Attempting %s update\n", gpt_data.devicefile);
+
+	ret = stat(gpt_data.devicefile, &st);
+	if (ret == -ENOENT) {
+		if (optional)
+			return 0;
+		pr_err("Partition %s does not exist\n", gpt_data.devicefile);
+	}
+	if (ret)
+		goto out;
+
+	ret = bbu_std_file_handler(handler, &gpt_data);
+out:
+	kfree_const(gpt_data.devicefile);
+	return ret;
+}
+
+static int stm32mp_bbu_mmc_update(struct bbu_handler *handler,
+				  struct bbu_data *data)
+{
+	struct stm32mp_bbu_handler *priv = to_stm32mp_bbu_handler(handler);
+	int fd, ret;
+	size_t image_len = data->len;
+	const void *buf = data->image;
+	struct stat st;
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
+	ret = fstat(fd, &st);
+	if (ret)
+		goto close;
+
+	if (st.st_size < priv->offset || image_len > st.st_size - priv->offset) {
+		ret = -ENOSPC;
+		goto close;
+	}
+
+	ret = pwrite_full(fd, buf, image_len, priv->offset);
+	if (ret < 0)
+		pr_err("writing to %s failed with %pe\n", data->devicefile, ERR_PTR(ret));
+
+close:
+	close(fd);
+
+	return ret < 0 ? ret : 0;
+}
+
+/*
+ * TF-A compiled with STM32_EMMC_BOOT will first check for FIP image
+ * at offset SZ_256K and then in GPT partition of that name.
+ */
+static int stm32mp_bbu_mmc_fip_handler(struct bbu_handler *handler,
+				       struct bbu_data *data)
+{
+	struct stm32mp_bbu_handler *priv = to_stm32mp_bbu_handler(handler);
+	enum filetype filetype;
+	int image_flags = 0, ret;
+	bool is_emmc = true;
+
+	filetype = file_detect_type(data->image, data->len);
+
+	switch (filetype) {
+	case filetype_stm32_image_fsbl_v1:
+		priv->offset = 0;
+		image_flags |= STM32MP_BBU_IMAGE_HAVE_FSBL;
+		if (data->len > SZ_256K)
+			image_flags |= STM32MP_BBU_IMAGE_HAVE_FIP;
+		break;
+	default:
+		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
+				file_type_to_string(filetype_fip),
+				file_type_to_string(filetype)))
+			return -EINVAL;
+		/* If forced assume it's a SSBL */
+		filetype = filetype_fip;
+		fallthrough;
+	case filetype_fip:
+		priv->offset = SZ_256K;
+		image_flags |= STM32MP_BBU_IMAGE_HAVE_FIP;
+		break;
+	}
+
+	pr_debug("Handling %s\n", file_type_to_string(filetype));
+
+	data->flags |= BBU_FLAG_MMC_BOOT_ACK;
+
+	ret = bbu_mmcboot_handler(handler, data, stm32mp_bbu_mmc_update);
+	if (ret == -ENOENT) {
+		pr_debug("Not an eMMC, falling back to GPT fsbl1 partition\n");
+		is_emmc = false;
+		ret = 0;
+	}
+	if (ret < 0) {
+		pr_debug("eMMC boot update failed: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	if (!is_emmc && (image_flags & STM32MP_BBU_IMAGE_HAVE_FSBL)) {
+		struct bbu_data fsbl1_data = *data;
+
+		fsbl1_data.len = min_t(size_t, fsbl1_data.len, SZ_256K);
+
+		/*
+		 * BootROM tells TF-A which fsbl slot was booted in r0, but TF-A
+		 * doesn't yet propagate this to us, so for now always flash
+		 * fsbl1
+		 */
+		ret = stm32mp_bbu_gpt_part_update(handler, &fsbl1_data, "fsbl1", false);
+	}
+
+	if (ret == 0 && (image_flags & STM32MP_BBU_IMAGE_HAVE_FIP)) {
+		struct bbu_data fip_data = *data;
+
+		if (image_flags & STM32MP_BBU_IMAGE_HAVE_FSBL) {
+			fip_data.image += SZ_256K;
+			fip_data.len -= SZ_256K;
+		}
+
+		/* No fip GPT partition in eMMC user area is usually ok, as
+		 * that means TF-A is configured to load FIP from eMMC boot part
+		 */
+		ret = stm32mp_bbu_gpt_part_update(handler, &fip_data, "fip", is_emmc);
+	}
+
+	if (ret < 0)
+		pr_debug("eMMC user area update failed: %pe\n", ERR_PTR(ret));
+
+	return ret;
+}
+
+int stm32mp_bbu_mmc_fip_register(const char *name,
+				 const char *devicefile,
+				 unsigned long flags)
+{
+	struct stm32mp_bbu_handler *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->handler.flags = flags;
+	priv->handler.devicefile = devicefile;
+	priv->handler.name = name;
+	priv->handler.handler = stm32mp_bbu_mmc_fip_handler;
+
+	ret = bbu_register_handler(&priv->handler);
+	if (ret)
+		free(priv);
+
+	return ret;
+}
diff --git a/arch/arm/mach-stm32mp/include/mach/bbu.h b/arch/arm/mach-stm32mp/include/mach/bbu.h
index 3a6951a8f1a0..b469cdeb7c93 100644
--- a/arch/arm/mach-stm32mp/include/mach/bbu.h
+++ b/arch/arm/mach-stm32mp/include/mach/bbu.h
@@ -13,4 +13,20 @@ static inline int stm32mp_bbu_mmc_register_handler(const char *name,
 					    filetype_stm32_image_ssbl_v1);
 }
 
+#ifdef CONFIG_BAREBOX_UPDATE
+
+int stm32mp_bbu_mmc_fip_register(const char *name, const char *devicefile,
+				 unsigned long flags);
+
+#else
+
+static inline int stm32mp_bbu_mmc_fip_register(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
+{
+	return -ENOSYS;
+}
+
+#endif
+
 #endif /* MACH_STM32MP_BBU_H_ */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

