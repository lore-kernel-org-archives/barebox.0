Delivery-date: Wed, 28 May 2025 16:36:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsw-001Dda-12
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:36:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsu-0001ww-4Q
	for lore@pengutronix.de; Wed, 28 May 2025 16:36:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I8Ri4ZNILne2hKNVQofjkS4KiO0Ox5qh7p905kYk4xw=; b=rNtjW1BpMRG06SxNoOJcOXCj8K
	6UzKjfqfeZYOOEdziLu2r9ZSGY/lVeAcP8jP0QwSpFbxqOIeWR9WSPYJu0WW1ti0xIhb203X1LE1Z
	faQWE3uEyiK5FDO0GphJMK0Fyyiohcw53V6akU+0iWoo3a5gOUSfDZpfr9wYUKUQIp/ZD1L1qYQo3
	ldXSpd2QZX3Sj3Tcl302w8NKR+12ssvlzyjm0GNJ1Iw8wHJ+ahjZZnnkuEAnbciL735vH3488xZeT
	d3nMdxFmLmR6vV77Fei8mDAQsArbl6nKQpdartb/ndwBTR/KRh/5Udw1J0teXngKd4wksONjeSl2Z
	XziAbmUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHsN-0000000DQEq-3X1T;
	Wed, 28 May 2025 14:35:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHns-0000000DPDz-1x9t
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:30:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-0006FS-Kl; Wed, 28 May 2025 16:30:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-000bXx-1O;
	Wed, 28 May 2025 16:30:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-001qOC-15;
	Wed, 28 May 2025 16:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 16:30:40 +0200
Message-Id: <20250528143043.434446-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_073048_660218_467C5042 
X-CRM114-Status: GOOD (  21.68  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/10] boards: add decoder for LXA TLV v1 format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The LXA TLV format is stored onto the EEPROM of either the Baseboard or
Powerboard. Its contents are mainly for use in Linux userspace.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
---
 .../bindings/nvmem/barebox,tlv.yaml           |   2 +
 common/boards/Kconfig                         |   5 +
 common/boards/Makefile                        |   1 +
 common/boards/lxa/Makefile                    |   2 +
 common/boards/lxa/factory-data.c              | 132 ++++++++++++++++++
 include/string.h                              |   2 +
 include/tlv/format.h                          |   3 +
 lib/string.c                                  |  21 +++
 8 files changed, 168 insertions(+)
 create mode 100644 common/boards/lxa/Makefile
 create mode 100644 common/boards/lxa/factory-data.c

diff --git a/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml b/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
index b54ab600e309..7a77b9a0b44b 100644
--- a/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
+++ b/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
@@ -22,6 +22,8 @@ properties:
     items:
       - enum:
         - barebox,tlv-v1        # magic: 0x61bb95f2
+        - lxa,tlv-baseboard-v1  # magic: 0xbc288dfe
+        - lxa,tlv-powerboard-v1 # magic: 0xdca5a870
       - const: barebox,tlv
 
   reg:
diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index 586a54d7ca13..74947316954b 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -19,3 +19,8 @@ config BOARD_WOLFVISION
 	bool
 	select AIODEV
 	select ROCKCHIP_SARADC
+
+config BOARD_LXA
+	bool "LXA common board support" if COMPILE_TEST
+	select TLV
+	select TLV_BAREBOX
diff --git a/common/boards/Makefile b/common/boards/Makefile
index 3f8ac57b2f82..058733522411 100644
--- a/common/boards/Makefile
+++ b/common/boards/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
 obj-$(CONFIG_BOARD_PHYTEC_SOM_DETECTION) += phytec/
 obj-$(CONFIG_BOARD_TQ) += tq/
 obj-$(CONFIG_BOARD_WOLFVISION) += wolfvision/
+obj-$(CONFIG_BOARD_LXA) += lxa/
diff --git a/common/boards/lxa/Makefile b/common/boards/lxa/Makefile
new file mode 100644
index 000000000000..29acfec3cb92
--- /dev/null
+++ b/common/boards/lxa/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_TLV) += factory-data.o
diff --git a/common/boards/lxa/factory-data.c b/common/boards/lxa/factory-data.c
new file mode 100644
index 000000000000..2f9a818d4d48
--- /dev/null
+++ b/common/boards/lxa/factory-data.c
@@ -0,0 +1,132 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <string.h>
+#include <tlv/tlv.h>
+#include <common.h>
+
+static int lxa_tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map,
+				 u16 len, const u8 *val)
+{
+	const char *buf;
+	char *period;
+
+	buf = __tlv_format_str(dev, map, len, val);
+	if (!buf)
+		return -ENOMEM;
+
+	/* Strip /\d+\./ prefix to arrive at hostname without period */
+	period = memrchr(buf, '.', len);
+	barebox_set_serial_number(period ? period + 1 : buf);
+
+	return 0;
+}
+
+static int lxa_tlv_format_calib(struct tlv_device *dev, struct tlv_mapping *map,
+				u16 len, const u8 *val)
+{
+	return tlv_format_blob(dev, map, len, val);
+}
+
+static struct tlv_mapping lxa_tlv_baseboard_v1_mappings[] = {
+	/* vendor-specific override */
+	{ 0x0004, lxa_tlv_handle_serial, "serial-number"},
+	/* vendor-specific additions */
+	{ 0x8000, lxa_tlv_format_calib, "usb-host-curr" },
+	{ 0x8001, lxa_tlv_format_calib, "usb-host1-curr" },
+	{ 0x8002, lxa_tlv_format_calib, "usb-host2-curr" },
+	{ 0x8003, lxa_tlv_format_calib, "usb-host3-curr" },
+	{ 0x8010, lxa_tlv_format_calib, "out0-volt" },
+	{ 0x8011, lxa_tlv_format_calib, "out1-volt" },
+	{ 0x8020, lxa_tlv_format_calib, "iobus-curr" },
+	{ 0x8021, lxa_tlv_format_calib, "iobus-volt" },
+	{ /* sentintel */ },
+};
+
+static struct tlv_mapping *baseboard_mappings[] = {
+	lxa_tlv_baseboard_v1_mappings, barebox_tlv_v1_mappings, NULL
+};
+
+static struct of_device_id baseboard_matches[] = {
+	{ .compatible = "lxa,tlv-baseboard-v1" },
+	{ /* sentinel */ }
+};
+
+static struct tlv_decoder lxa_tlv_baseboard_v1 = {
+	.magic = TLV_MAGIC_LXA_BASEBOARD_V1,
+	.driver.name = "lxa-tlv-baseboard-v1",
+	.driver.of_compatible = baseboard_matches,
+	.mappings = baseboard_mappings,
+};
+
+static struct tlv_mapping lxa_tlv_powerboard_v1_mappings[] = {
+	{ 0x0003, tlv_format_timestamp, "factory-timestamp" },
+	{ 0x0005, tlv_format_dec, "modification" },
+	{ 0x0006, tlv_format_str, "featureset" },
+	{ 0x0007, tlv_format_str, "pcba-serial-number"},
+	{ 0x0008, tlv_format_str, "pcba-hardware-release"},
+	{ 0x9000, lxa_tlv_format_calib, "pwr-volt" },
+	{ 0x9001, lxa_tlv_format_calib, "pwr-curr" },
+	{ /* sentintel */ },
+};
+
+static struct tlv_mapping *powerboard_mappings[] = {
+	lxa_tlv_powerboard_v1_mappings, NULL
+};
+
+static struct of_device_id powerboard_matches[] = {
+	{ .compatible = "lxa,tlv-powerboard-v1" },
+	{ /* sentinel */ }
+};
+
+static struct tlv_decoder lxa_tlv_powerboard_v1 = {
+	.magic = TLV_MAGIC_LXA_POWERBOARD_V1,
+	.driver.name = "lxa-tlv-powerboard-v1",
+	.driver.of_compatible = powerboard_matches,
+	.mappings = powerboard_mappings,
+};
+
+
+static struct tlv_mapping lxa_tlv_ioboard_v1_mappings[] = {
+	{ 0x0003, tlv_format_timestamp, "factory-timestamp" },
+	{ 0x0005, tlv_format_dec, "modification" },
+	{ 0x0006, tlv_format_str, "featureset" },
+	{ 0x0007, tlv_format_str, "pcba-serial-number"},
+	{ 0x0008, tlv_format_str, "pcba-hardware-release"},
+	{ /* sentintel */ },
+};
+
+static struct tlv_mapping *ioboard_mappings[] = {
+	lxa_tlv_ioboard_v1_mappings, NULL
+};
+
+static struct of_device_id ioboard_matches[] = {
+	{ .compatible = "lxa,tlv-ioboard-v1" },
+	{ /* sentinel */ }
+};
+
+static struct tlv_decoder lxa_tlv_ioboard_v1 = {
+	.magic = TLV_MAGIC_LXA_IOBOARD_V1,
+	.driver.name = "lxa-tlv-ioboard-v1",
+	.driver.of_compatible = ioboard_matches,
+	.mappings = ioboard_mappings,
+};
+
+static int lxa_tlv_v1_register(void)
+{
+	struct tlv_decoder *const decoders[] = {
+		&lxa_tlv_baseboard_v1,
+		&lxa_tlv_powerboard_v1,
+		&lxa_tlv_ioboard_v1,
+		NULL
+	};
+	int err = 0;
+
+	for (struct tlv_decoder *const *d = decoders; *d; d++) {
+		int ret = tlv_register_decoder(*d);
+		if (ret)
+			err = ret;
+	}
+
+	return err;
+}
+postmmu_initcall(lxa_tlv_v1_register);
diff --git a/include/string.h b/include/string.h
index c16529c21273..004a9daece27 100644
--- a/include/string.h
+++ b/include/string.h
@@ -11,6 +11,8 @@ char *strsep_unescaped(char **, const char *);
 char *stpcpy(char *dest, const char *src);
 bool strends(const char *str, const char *postfix);
 
+void *memrchr(const void *s, int c, size_t n);
+
 void *__default_memset(void *, int, __kernel_size_t);
 void *__nokasan_default_memset(void *, int, __kernel_size_t);
 
diff --git a/include/tlv/format.h b/include/tlv/format.h
index a32ec917a434..29c8a6d42da2 100644
--- a/include/tlv/format.h
+++ b/include/tlv/format.h
@@ -22,6 +22,9 @@
 #include <linux/build_bug.h>
 
 #define TLV_MAGIC_BAREBOX_V1		0x61bb95f2
+#define TLV_MAGIC_LXA_BASEBOARD_V1	0xbc288dfe
+#define TLV_MAGIC_LXA_POWERBOARD_V1	0xc6895c21
+#define TLV_MAGIC_LXA_IOBOARD_V1	0xdca5a870
 
 #define TLV_IS_VENDOR_SPECIFIC(val)	((*(u8 *)&(val) & 0x80) == 0x80)
 #define TLV_IS_GENERIC(val)		((*(u8 *)&(val) & 0x80) != 0x80)
diff --git a/lib/string.c b/lib/string.c
index f2272be37e76..ff3408d3249e 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -818,6 +818,27 @@ void *memchr(const void *s, int c, size_t n)
 #endif
 EXPORT_SYMBOL(memchr);
 
+/**
+ * memrchr - Find last occurrence of character in an area of memory.
+ * @s: The memory area
+ * @c: The byte to search for
+ * @n: The size of the area.
+ *
+ * returns the address of the last occurrence of @c, or %NULL
+ * if @c is not found
+ */
+void *memrchr(const void *s, int c, size_t n)
+{
+	const unsigned char *p = s;
+	while (n-- > 0) {
+		if ((unsigned char)c == p[n]) {
+			return (void *)(p+n);
+		}
+	}
+	return NULL;
+}
+EXPORT_SYMBOL(memrchr);
+
 /**
  * skip_spaces - Removes leading whitespace from @str.
  * @str: The string to be stripped.
-- 
2.39.5



