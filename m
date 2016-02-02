Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Pj-VE
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:51 +0100
Message-Id: <1454424497-7157-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/34] hab: Add HABv3 status report function
To: Barebox List <barebox@lists.infradead.org>

Status reporting for HABv3 is different from HABv4. Add a status
report function for HABv3.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/Makefile |  1 +
 drivers/hab/habv3.c  | 78 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/hab.h        |  9 ++++++
 3 files changed, 88 insertions(+)
 create mode 100644 drivers/hab/habv3.c

diff --git a/drivers/hab/Makefile b/drivers/hab/Makefile
index 5c3b00c..8528ef9 100644
--- a/drivers/hab/Makefile
+++ b/drivers/hab/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_HABV4) += habv4.o
+obj-$(CONFIG_HABV3) += habv3.o
diff --git a/drivers/hab/habv3.c b/drivers/hab/habv3.c
new file mode 100644
index 0000000..70f31a3
--- /dev/null
+++ b/drivers/hab/habv3.c
@@ -0,0 +1,78 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+#define pr_fmt(fmt) "HABv3: " fmt
+
+#include <common.h>
+#include <hab.h>
+#include <io.h>
+
+struct hab_status {
+	u8 value;
+	const char *str;
+};
+
+static struct hab_status hab_status[] = {
+	{ 0x8d, "data specified is out of bounds" },
+	{ 0x55, "error during assert verification" },
+	{ 0x36, "hash verification failed" },
+	{ 0x33, "certificate parsing failed or the certificate contained an unsupported key" },
+	{ 0x35, "signature verification failed" },
+	{ 0x4B, "CSF command sequence contains unsupported command identifier" },
+	{ 0x4e, "absence of expected CSF header" },
+	{ 0x4d, "CSF length is unsupported" },
+	{ 0x2e, "CSF TYPE does not match processor TYPE" },
+	{ 0x2d, "CSF UID does not match either processor UID or generic UID" },
+	{ 0x3a, "CSF customer/product code does not match processor customer/product code" },
+	{ 0x87, "key indexis either unsupported, or an attempt is made to overwrite the SRK from a CSF command" },
+	{ 0x17, "SCC unexpectedly not in secure state" },
+	{ 0x1e, "secureRAM secret key invalid" },
+	{ 0x1d, "secureRAM initialization failure" },
+	{ 0x1b, "secureRAM self test failure" },
+	{ 0x2b, "secureRAM internal failure" },
+	{ 0x27, "secureRAM secrect key unexpectedly in use" },
+	{ 0x8b, "an attempt is made to read a key from the list of subordinate public keys at a location "
+		"where no key is installed" },
+	{ 0x8e, "algorithm type is either invalid or ortherwise unsupported" },
+	{ 0x66, "write operation to register failed" },
+	{ 0x63, "DCD invalid" },
+	{ 0x6f, "RAM application pointer is NULL or ERASED_FLASH" },
+	{ 0x69, "CSF missing when HAB TYPE is not HAB-disabled" },
+	{ 0x6a, "NANDFC boot buffer load failed" },
+	{ 0x6c, "Exception has occured" },
+	{ 0x67, "INT_BOOT fuse is blown but BOOT pins are set for external boot" },
+	{ 0x88, "Successful download completion" },
+};
+
+int imx_habv3_get_status(uint32_t status)
+{
+	int i;
+
+	if (status == 0xf0) {
+		pr_info("status OK\n");
+		return 0;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(hab_status); i++) {
+		if (hab_status[i].value == status) {
+			pr_err("status: 0x%02x: %s\n", status, hab_status[i].str);
+			return -EPERM;
+		}
+	}
+
+	pr_err("unknown status code 0x%02x\n", status);
+
+	return -EPERM;
+}
+
+int imx25_hab_get_status(void)
+{
+	return imx_habv3_get_status(readl(IOMEM(0x780018d4)));
+}
\ No newline at end of file
diff --git a/include/hab.h b/include/hab.h
index f9bf74f..411e995 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -27,4 +27,13 @@ static inline int habv4_get_status(void)
 }
 #endif
 
+#ifdef CONFIG_HABV3
+int imx25_hab_get_status(void);
+#else
+static inline int imx25_hab_get_status(void)
+{
+	return -EPERM;
+}
+#endif
+
 #endif /* __HABV4_H */
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
