Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdLHq-0007qD-Iu
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:45 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:15 +0200
Message-Id: <1427904855-32548-11-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 10/10] habv4: add High Assurance Boot v4
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This patch adds the code to check the HAB ROM for failures during development.
Add a cal to "habv4_get_status();" to your board file, to get the current
system state from the ROM.

_NOTE_: On i.MX6 this has to happen before barebox starts the MMU, because the
        HAB ROM vector table is placed at 0x94, which is not accessible after the
	MMU has setup the zero page.

This patch contains code ported from u-boot patches [1][2] by Shaojun Wang [3]
which were found in the "Mx28 Secure Boot" and "Mx6 HAB (High Assurance Boot)"
thread on the freescale community forum [4][5].

[1] https://community.freescale.com/servlet/JiveServlet/download/370047-269174/0001-enable-mx28-u-boot-hab.patch.txt.zip
[1] https://community.freescale.com/servlet/JiveServlet/download/96451-11-266175/0001-u-boot-enable-mx6-hab.patch.zip
[2] https://community.freescale.com/people/ShaojunWang
[3] https://community.freescale.com/thread/317254
[3] https://community.freescale.com/docs/DOC-96451

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/Makefile       |   1 +
 drivers/habv4/Makefile |   1 +
 drivers/habv4/habv4.c  | 237 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/habv4.h        |  23 +++++
 4 files changed, 262 insertions(+)
 create mode 100644 drivers/habv4/Makefile
 create mode 100644 drivers/habv4/habv4.c
 create mode 100644 include/habv4.h

diff --git a/drivers/Makefile b/drivers/Makefile
index 7ef5e90d80cf..3afbb61b2d3b 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -30,3 +30,4 @@ obj-$(CONFIG_PCI) += pci/
 obj-y += rtc/
 obj-$(CONFIG_FIRMWARE) += firmware/
 obj-$(CONFIG_GENERIC_PHY) += phy/
+obj-$(CONFIG_HABV4) += habv4/
diff --git a/drivers/habv4/Makefile b/drivers/habv4/Makefile
new file mode 100644
index 000000000000..40b3253147dd
--- /dev/null
+++ b/drivers/habv4/Makefile
@@ -0,0 +1 @@
+obj-y += habv4.o
diff --git a/drivers/habv4/habv4.c b/drivers/habv4/habv4.c
new file mode 100644
index 000000000000..cdd5d599ced5
--- /dev/null
+++ b/drivers/habv4/habv4.c
@@ -0,0 +1,237 @@
+/*
+ * Copyright (C) 2014, 2015 Marc Kleine-Budde <mkl@pengutronix.de>
+ * Copyright (C) 2010 Freescale Semiconductor, Inc.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#define pr_fmt(fmt)  "HABv4: " fmt
+
+#include <common.h>
+#include <types.h>
+
+#include <habv4.h>
+
+#define HABV4_RVT_IMX28 0xffff8af8
+#define HABV4_RVT_IMX6 0x00000094
+
+enum hab_tag {
+	HAB_TAG_IVT = 0xd1,		/* Image Vector Table */
+	HAB_TAG_DCD = 0xd2,		/* Device Configuration Data */
+	HAB_TAG_CSF = 0xd4,		/* Command Sequence File */
+	HAB_TAG_CRT = 0xd7, 		/* Certificate */
+	HAB_TAG_SIG = 0xd8,		/* Signature */
+	HAB_TAG_EVT = 0xdb,		/* Event */
+	HAB_TAG_RVT = 0xdd,		/* ROM Vector Table */
+	HAB_TAG_WRP = 0x81,		/* Wrapped Key */
+	HAB_TAG_MAC = 0xac,		/* Message Authentication Code */
+};
+
+/* Status definitions */
+enum hab_status {
+	HAB_STATUS_ANY = 0x00,		/* Match any status in report_event */
+	HAB_STATUS_FAILURE = 0x33,	/* Operation failed */
+	HAB_STATUS_WARNING = 0x69,	/* Operation completed with warning */
+	HAB_STATUS_SUCCESS = 0xf0,	/* Operation completed successfully */
+};
+
+/* Security Configuration definitions */
+enum hab_config {
+	HAB_CONFIG_FAB = 0x00,		/* Un-programmed IC */
+	HAB_CONFIG_RETURN = 0x33,	/* Field Return IC */
+	HAB_CONFIG_OPEN = 0xf0,		/* Non-secure IC */
+	HAB_CONFIG_CLOSED = 0xcc,	/* Secure IC */
+};
+
+/* State definitions */
+enum hab_state {
+	HAB_STATE_INITIAL = 0x33,	/* Initialising state (transitory) */
+	HAB_STATE_CHECK = 0x55,		/* Check state (non-secure) */
+	HAB_STATE_NONSECURE = 0x66,	/* Non-secure state */
+	HAB_STATE_TRUSTED = 0x99,	/* Trusted state */
+	HAB_STATE_SECURE = 0xaa,	/* Secure state */
+	HAB_STATE_FAIL_SOFT = 0xcc,	/* Soft fail state */
+	HAB_STATE_FAIL_HARD = 0xff,	/* Hard fail state (terminal) */
+	HAB_STATE_NONE = 0xf0,		/* No security state machine */
+};
+
+enum hab_target {
+	HAB_TARGET_MEMORY = 0x0f,	/* Check memory white list */
+	HAB_TARGET_PERIPHERAL = 0xf0,	/* Check peripheral white list*/
+	HAB_TARGET_ANY = 0x55,		/* Check memory & peripheral white list */
+};
+
+enum hab_assertion {
+	HAB_ASSERTION_BLOCK = 0x0,	/* Check if memory is authenticated after CSF */
+};
+
+
+struct hab_header {
+	uint8_t tag;
+	uint16_t len;			/* len including the header */
+	uint8_t par;
+} __packed;
+
+typedef enum hab_status hab_loader_callback_fn(void **start, uint32_t *bytes, const void *boot_data);
+
+struct habv4_rvt {
+	struct hab_header header;
+	enum hab_status (*entry)(void);
+	enum hab_status (*exit)(void);
+	enum hab_status (*check_target)(enum hab_target target, const void *start, uint32_t bytes);
+	void *(*authenticate_image)(uint8_t cid, uint32_t ivt_offset, void **start, uint32_t *bytes, hab_loader_callback_fn *loader);
+	enum hab_status (*run_dcd)(const void *dcd);
+	enum hab_status (*run_csf)(const void *csf, uint8_t cid);
+	enum hab_status (*assert)(enum hab_assertion assertion, const void *data, uint32_t count);
+	enum hab_status (*report_event)(enum hab_status status, uint32_t index, void *event, uint32_t *bytes);
+	enum hab_status (*report_status)(enum hab_config *config, enum hab_state *state);
+	void (*failsafe)(void);
+} __packed;
+
+static const struct habv4_rvt *__rvt;
+
+static inline const struct habv4_rvt *habv4_get_rvt(void)
+{
+	if (__rvt)
+		return __rvt;
+
+	if (IS_ENABLED(CONFIG_ARCH_IMX28))
+		__rvt = (void *)HABV4_RVT_IMX28;
+	else if (IS_ENABLED(CONFIG_ARCH_IMX6))
+		__rvt = (void *)HABV4_RVT_IMX6;
+
+	if (__rvt->header.tag != HAB_TAG_RVT) {
+		pr_err("ERROR - RVT not found!\n");
+		return NULL;
+	}
+
+	pr_info("Found RVT v%d.%d\n", __rvt->header.par >> 4,
+		__rvt->header.par & 0xf);
+
+	return __rvt;
+}
+
+static const char *habv4_get_status_str(enum hab_status status)
+{
+	switch (status) {
+	case HAB_STATUS_ANY:
+		return "Match any status in report_event"; break;
+	case HAB_STATUS_FAILURE:
+		return "Operation failed"; break;
+	case HAB_STATUS_WARNING:
+		return "Operation completed with warning"; break;
+	case HAB_STATUS_SUCCESS:
+		return "Operation completed successfully"; break;
+	}
+
+	return "<unknown>";
+}
+
+static const char *habv4_get_config_str(enum hab_config config)
+{
+	switch (config) {
+	case HAB_CONFIG_FAB:
+		return "Un-programmed IC"; break;
+	case HAB_CONFIG_RETURN:
+		return "Field Return IC"; break;
+	case HAB_CONFIG_OPEN:
+		return "Non-secure IC"; break;
+	case HAB_CONFIG_CLOSED:
+		return "Secure IC"; break;
+	}
+
+	return "<unknown>";
+}
+
+static const char *habv4_get_state_str(enum hab_state state)
+{
+	switch (state) {
+	case HAB_STATE_INITIAL:
+		return "Initialising state (transitory)"; break;
+	case HAB_STATE_CHECK:
+		return "Check state (non-secure)"; break;
+	case HAB_STATE_NONSECURE:
+		return "Non-secure state"; break;
+	case HAB_STATE_TRUSTED:
+		return "Trusted state"; break;
+	case HAB_STATE_SECURE:
+		return "Secure state"; break;
+	case HAB_STATE_FAIL_SOFT:
+		return "Soft fail state"; break;
+	case HAB_STATE_FAIL_HARD:
+		return "Hard fail state (terminal)"; break;
+	case HAB_STATE_NONE:
+		return "No security state machine"; break;
+	}
+
+	return "<unknown>";
+}
+
+static void habv4_display_event(uint8_t *data, uint32_t len)
+{
+	unsigned int i;
+
+	if (data && len) {
+		for (i = 0; i < len; i++) {
+			if (i == 0)
+				printf(" %02x", data[i]);
+			else if ((i % 8) == 0)
+				printf("\n %02x", data[i]);
+			else if ((i % 4) == 0)
+				printf("  %02x", data[i]);
+			else
+				printf(" %02x", data[i]);
+		}
+	}
+	printf("\n\n");
+}
+
+int habv4_get_status(void)
+{
+	const struct habv4_rvt *rvt = habv4_get_rvt();
+	uint8_t data[256];
+	uint32_t len = sizeof(data);
+	uint32_t index = 0;
+	enum hab_status status;
+	enum hab_config config = 0x0;
+	enum hab_state state = 0x0;
+
+	if (!rvt)
+		return -EINVAL;
+
+	status = rvt->report_status(&config, &state);
+	pr_info("Status: %s (0x%02x)\n", habv4_get_status_str(status), status);
+	pr_info("Config: %s (0x%02x)\n", habv4_get_config_str(config), config);
+	pr_info("State: %s (0x%02x)\n",	habv4_get_state_str(state), state);
+
+	if (status == HAB_STATUS_SUCCESS) {
+		pr_info("No HAB Failure Events Found!\n\n");
+		return 0;
+	}
+
+	while (rvt->report_event(HAB_STATUS_FAILURE, index, data, &len) == HAB_STATUS_SUCCESS) {
+		printf("-------- HAB Event %d --------\n"
+		       "event data:\n", index);
+
+		habv4_display_event(data, len);
+		len = sizeof(data);
+		index++;
+	}
+
+	/* Check reason for stopping */
+	if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) == HAB_STATUS_SUCCESS)
+		pr_err("ERROR: Recompile with larger event data buffer (at least %d bytes)\n\n", len);
+
+	return -EINVAL;
+}
diff --git a/include/habv4.h b/include/habv4.h
new file mode 100644
index 000000000000..a3fb9b140f21
--- /dev/null
+++ b/include/habv4.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2014, 2015 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __HABV4_H
+#define __HABV4_H
+
+int habv4_get_status(void);
+
+#endif /* __HABV4_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
