Delivery-date: Thu, 25 Sep 2025 14:00:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke5-000vsX-2F
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke3-0005EH-3J
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cXnx7IbP/BsnQLXQa06Rt9SK3k/2vFKPQaPb6hMbrrM=; b=xW7kW7uowl/yORKfTjmMYFBsAs
	ONqg2kkh5N1BE7hqZ8qIJYDVOQ2VC4PWnaMktyaKoozbJYV5q3Ydh1F11kx6sXDhMZS3sqHhgdPza
	KgKYBijsWakX5OoI1uT6dKTDyND0k/zXCaCgfiKqhSuLCuHMXkFfAWG42VRPDhir7583EG3C4oEPF
	P9BaPV3NsvZU0uZJdJ9MA/N5NynJhzWuQmDCUfJ3WElaKhW3b1nQa72d//wFsM+ssY/XOwjaJpRVk
	COLOI6Pvoip56MUzKEGk0QSr/Ky7JqaOok1nNEmoRNcXLvdjlNWIvwW0mq42u74SnHkTVyOpf40GE
	Y6Dd5F3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdO-00000008k2A-1dJ0;
	Thu, 25 Sep 2025 11:59:38 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdH-00000008jqd-00cO
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:35 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEkx016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-8-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=5111;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=794bCC9JR6DY/LVkFSSq9Af7SXS9JhqSrxBV0gJoqds=;
 b=sgbK0kKls6vcyOuJOQsAdIqNIQl3MtQvLEhXojBNIVH5HFFarO0/+jahQhrt+xoiC7GSAJ82a
 62SIxUi4SpHCNfdwC3DSTPJIGhd/0L2ceNC6+QdK0VyRajaBS7yO85s
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045931_320822_865246FC 
X-CRM114-Status: GOOD (  12.99  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/10] lib: add crc16 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

This adds crc16 support taken straight out of Linux-6.16

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/crc16.h | 21 ++++++++++++++++
 lib/Kconfig           |  3 +++
 lib/Makefile          |  1 +
 lib/crc16.c           | 69 +++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 94 insertions(+)

diff --git a/include/linux/crc16.h b/include/linux/crc16.h
new file mode 100644
index 0000000000000000000000000000000000000000..2b53d62d81f0d5db9b98dd29bf2625bb34e2bb4e
--- /dev/null
+++ b/include/linux/crc16.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ *	crc16.h - CRC-16 routine
+ *
+ * Implements the standard CRC-16:
+ *   Width 16
+ *   Poly  0x8005 (x^16 + x^15 + x^2 + 1)
+ *   Init  0
+ *
+ * Copyright (c) 2005 Ben Gardner <bgardner@wabtec.com>
+ */
+
+#ifndef __CRC16_H
+#define __CRC16_H
+
+#include <linux/types.h>
+
+u16 crc16(u16 crc, const u8 *buffer, size_t len);
+
+#endif /* __CRC16_H */
+
diff --git a/lib/Kconfig b/lib/Kconfig
index d07e2f3b695916df56775bc8c1a98bad8bd52b52..c83589e2d9e442caa2351bfb400d197296819c16 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -162,6 +162,9 @@ config CRC8
 	  when they need to do cyclic redundancy check according CRC8
 	  algorithm. Module will be called crc8.
 
+config CRC16
+	bool "CRC16 function"
+
 source "lib/gui/Kconfig"
 
 source "lib/fonts/Kconfig"
diff --git a/lib/Makefile b/lib/Makefile
index 13f1de1420083df3e8c846b503968f58474e36f0..e9f152b21dad3f521cb9dbbf88d6012fdee19c3c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -85,6 +85,7 @@ obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
 obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
 obj-$(CONFIG_CRC8)	+= crc8.o
+obj-$(CONFIG_CRC16)	+= crc16.o
 obj-$(CONFIG_NLS)	+= nls_base.o
 obj-$(CONFIG_FSL_QE_FIRMWARE) += fsl-qe-firmware.o
 obj-$(CONFIG_UBSAN_STANDALONE)	+= ubsan.o
diff --git a/lib/crc16.c b/lib/crc16.c
new file mode 100644
index 0000000000000000000000000000000000000000..8d0354ba6b7a6a02367cf42e7bec30d64ce57e0b
--- /dev/null
+++ b/lib/crc16.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *      crc16.c
+ */
+
+#include <linux/types.h>
+#include <linux/module.h>
+#include <linux/crc16.h>
+
+/** CRC table for the CRC-16. The poly is 0x8005 (x^16 + x^15 + x^2 + 1) */
+static u16 const crc16_table[256] = {
+	0x0000, 0xC0C1, 0xC181, 0x0140, 0xC301, 0x03C0, 0x0280, 0xC241,
+	0xC601, 0x06C0, 0x0780, 0xC741, 0x0500, 0xC5C1, 0xC481, 0x0440,
+	0xCC01, 0x0CC0, 0x0D80, 0xCD41, 0x0F00, 0xCFC1, 0xCE81, 0x0E40,
+	0x0A00, 0xCAC1, 0xCB81, 0x0B40, 0xC901, 0x09C0, 0x0880, 0xC841,
+	0xD801, 0x18C0, 0x1980, 0xD941, 0x1B00, 0xDBC1, 0xDA81, 0x1A40,
+	0x1E00, 0xDEC1, 0xDF81, 0x1F40, 0xDD01, 0x1DC0, 0x1C80, 0xDC41,
+	0x1400, 0xD4C1, 0xD581, 0x1540, 0xD701, 0x17C0, 0x1680, 0xD641,
+	0xD201, 0x12C0, 0x1380, 0xD341, 0x1100, 0xD1C1, 0xD081, 0x1040,
+	0xF001, 0x30C0, 0x3180, 0xF141, 0x3300, 0xF3C1, 0xF281, 0x3240,
+	0x3600, 0xF6C1, 0xF781, 0x3740, 0xF501, 0x35C0, 0x3480, 0xF441,
+	0x3C00, 0xFCC1, 0xFD81, 0x3D40, 0xFF01, 0x3FC0, 0x3E80, 0xFE41,
+	0xFA01, 0x3AC0, 0x3B80, 0xFB41, 0x3900, 0xF9C1, 0xF881, 0x3840,
+	0x2800, 0xE8C1, 0xE981, 0x2940, 0xEB01, 0x2BC0, 0x2A80, 0xEA41,
+	0xEE01, 0x2EC0, 0x2F80, 0xEF41, 0x2D00, 0xEDC1, 0xEC81, 0x2C40,
+	0xE401, 0x24C0, 0x2580, 0xE541, 0x2700, 0xE7C1, 0xE681, 0x2640,
+	0x2200, 0xE2C1, 0xE381, 0x2340, 0xE101, 0x21C0, 0x2080, 0xE041,
+	0xA001, 0x60C0, 0x6180, 0xA141, 0x6300, 0xA3C1, 0xA281, 0x6240,
+	0x6600, 0xA6C1, 0xA781, 0x6740, 0xA501, 0x65C0, 0x6480, 0xA441,
+	0x6C00, 0xACC1, 0xAD81, 0x6D40, 0xAF01, 0x6FC0, 0x6E80, 0xAE41,
+	0xAA01, 0x6AC0, 0x6B80, 0xAB41, 0x6900, 0xA9C1, 0xA881, 0x6840,
+	0x7800, 0xB8C1, 0xB981, 0x7940, 0xBB01, 0x7BC0, 0x7A80, 0xBA41,
+	0xBE01, 0x7EC0, 0x7F80, 0xBF41, 0x7D00, 0xBDC1, 0xBC81, 0x7C40,
+	0xB401, 0x74C0, 0x7580, 0xB541, 0x7700, 0xB7C1, 0xB681, 0x7640,
+	0x7200, 0xB2C1, 0xB381, 0x7340, 0xB101, 0x71C0, 0x7080, 0xB041,
+	0x5000, 0x90C1, 0x9181, 0x5140, 0x9301, 0x53C0, 0x5280, 0x9241,
+	0x9601, 0x56C0, 0x5780, 0x9741, 0x5500, 0x95C1, 0x9481, 0x5440,
+	0x9C01, 0x5CC0, 0x5D80, 0x9D41, 0x5F00, 0x9FC1, 0x9E81, 0x5E40,
+	0x5A00, 0x9AC1, 0x9B81, 0x5B40, 0x9901, 0x59C0, 0x5880, 0x9841,
+	0x8801, 0x48C0, 0x4980, 0x8941, 0x4B00, 0x8BC1, 0x8A81, 0x4A40,
+	0x4E00, 0x8EC1, 0x8F81, 0x4F40, 0x8D01, 0x4DC0, 0x4C80, 0x8C41,
+	0x4400, 0x84C1, 0x8581, 0x4540, 0x8701, 0x47C0, 0x4680, 0x8641,
+	0x8201, 0x42C0, 0x4380, 0x8341, 0x4100, 0x81C1, 0x8081, 0x4040
+};
+
+static inline u16 crc16_byte(u16 crc, const u8 data)
+{
+	return (crc >> 8) ^ crc16_table[(crc ^ data) & 0xff];
+}
+
+/**
+ * crc16 - compute the CRC-16 for the data buffer
+ * @crc:	previous CRC value
+ * @buffer:	data pointer
+ * @len:	number of bytes in the buffer
+ *
+ * Returns the updated CRC value.
+ */
+u16 crc16(u16 crc, u8 const *buffer, size_t len)
+{
+	while (len--)
+		crc = crc16_byte(crc, *buffer++);
+	return crc;
+}
+EXPORT_SYMBOL(crc16);
+
+MODULE_DESCRIPTION("CRC16 calculations");
+MODULE_LICENSE("GPL");
+

-- 
2.43.0



