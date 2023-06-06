Delivery-date: Tue, 06 Jun 2023 16:55:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Y5U-00DAA0-Fj
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 16:55:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Y5Q-0007j9-P5
	for lore@pengutronix.de; Tue, 06 Jun 2023 16:55:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aVKzU3q8Wskta40Gvbzt4cI9vSqA8yOZpXr0ak+rpdE=; b=RNh3En34kAEHtXIXpVstf3kJkC
	51dq7z4JP9v3XcApQ2g+SHB5Nu3350CFfKFKweTYnBOkkbjmZYwGEsNmwg4Qlwx//QIlLfiHGU5w/
	pJs8skpe2c3E9CN3CWcHu3CJzNvh5jT46JNwO3/VCRs1ytsfRzchRRDjCsY5s8lZOkJNQNRr/XmMP
	j2LjyhpsMKmLy8qJoE/TQ1hJuQp4rG24QVpTyuBAoEn7H/WVXuKD9h4VO+idoebyXjxl5oO7a6lRo
	wHwTI02zJh3Q1M9fOL/MlvzOX1URzDYyAEvdhBwxQfL8Hi8/iUwvwStZMhCm99hGgRydBGz0AOuVz
	P39SEBiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Y4C-0026ev-2d;
	Tue, 06 Jun 2023 14:53:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Y47-0026cb-0O
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 14:53:46 +0000
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q6Y45-0007MR-LR
	for barebox@lists.infradead.org; Tue, 06 Jun 2023 16:53:42 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 47AAF1D354E
	for <barebox@lists.infradead.org>; Tue,  6 Jun 2023 14:53:40 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 1326F1D354A;
	Tue,  6 Jun 2023 14:53:40 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 269b65a1;
	Tue, 6 Jun 2023 14:53:39 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 06 Jun 2023 16:53:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230606-phytec-som-imx8mm-v2-2-8c9368c8b4f9@pengutronix.de>
References: <20230606-phytec-som-imx8mm-v2-0-8c9368c8b4f9@pengutronix.de>
In-Reply-To: <20230606-phytec-som-imx8mm-v2-0-8c9368c8b4f9@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13-dev-c6835
X-Developer-Signature: v=1; a=openpgp-sha256; l=13763; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=hH/T1pHHUqKv6MqM/3D1j5xGc9CsSkpBD7D7xnKpbYg=;
 b=owEBbQGS/pANAwAKAb5QHEoqigToAcsmYgBkf0hrQ0YyRV41KO70aMIlIz2GrKmShjjF55U/9
 +zPha38ix+JATMEAAEKAB0WIQQOzYG9qPI0qV/1MlC+UBxKKooE6AUCZH9IawAKCRC+UBxKKooE
 6DwPB/0UNPpD8xyclMIkWTfcxdN9Dp6OJWE837cQaCldwV0gdNhogzQwnkhBUi4XjDV/36SYIg7
 tmuiACM+9++sOPtA8kTPJr8i6Rh9SGaz+3oU4GDs5x/pmpNlsvOEIxkDLkJ+VnCzuQ+mHOoS9mh
 XdIvZtup8L7oaUi06+q7EOVtPuSn6n+sZDDK+QLsKdk7Ub7sRxoyeLmwk2uS5gy9nZFpyMVsSVT
 bCeCGxOBjqy0zv0YB2fvUoHB5iu58BoYXqTJk0gMuHBk83081jd+gFA6GnP3HQWEzoB86RUoW2J
 PZKiR/ZoXdbnznSP4CSnxq+n2HH0lAf9z3+SFHrlCpMroXdQ
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_075343_469207_B46474E2 
X-CRM114-Status: GOOD (  27.70  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] common: board: phytec: import SoM detection for
 imx8m based SoM from u-boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch imports and cleans up the SoM detection for imx8m based SoM
from u-boot.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/boards/Kconfig                              |   7 +
 common/boards/Makefile                             |   1 +
 common/boards/phytec/Makefile                      |   4 +
 common/boards/phytec/phytec-som-detection.c        | 209 +++++++++++++++++++++
 common/boards/phytec/phytec-som-imx8m-detection.c  | 151 +++++++++++++++
 include/boards/phytec/phytec-som-detection.h       |  69 +++++++
 include/boards/phytec/phytec-som-imx8m-detection.h |  19 ++
 7 files changed, 460 insertions(+)

diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index e27273b7671d..b240548b484d 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -2,3 +2,10 @@
 
 config BOARD_QEMU_VIRT
 	bool
+
+config BOARD_PHYTEC_SOM_DETECTION
+	bool
+
+config BOARD_PHYTEC_SOM_IMX8M_DETECTION
+	bool
+	select BOARD_PHYTEC_SOM_DETECTION
diff --git a/common/boards/Makefile b/common/boards/Makefile
index 5b4e429c13e9..2a96ce6aec5c 100644
--- a/common/boards/Makefile
+++ b/common/boards/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
+obj-y += phytec/
diff --git a/common/boards/phytec/Makefile b/common/boards/phytec/Makefile
new file mode 100644
index 000000000000..741a0e2eb704
--- /dev/null
+++ b/common/boards/phytec/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-$(CONFIG_BOARD_PHYTEC_SOM_DETECTION) += phytec-som-detection.o
+lwl-$(CONFIG_BOARD_PHYTEC_SOM_IMX8M_DETECTION) += phytec-som-imx8m-detection.o
diff --git a/common/boards/phytec/phytec-som-detection.c b/common/boards/phytec/phytec-som-detection.c
new file mode 100644
index 000000000000..e338639d03e9
--- /dev/null
+++ b/common/boards/phytec/phytec-som-detection.c
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2020 PHYTEC Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ */
+
+#include <boards/phytec/phytec-som-imx8m-detection.h>
+#include <common.h>
+#include <pbl/eeprom.h>
+
+struct phytec_eeprom_data eeprom_data;
+
+#define POLY (0x1070U << 3)
+
+static u8 _crc8(u16 data)
+{
+	int i;
+
+	for (i = 0; i < 8; i++) {
+		if (data & 0x8000)
+			data = data ^ POLY;
+		data = data << 1;
+	}
+
+	return data >> 8;
+}
+
+static unsigned int crc8(unsigned int crc, const u8 *vptr, int len)
+{
+	int i;
+
+	for (i = 0; i < len; i++)
+		crc = _crc8((crc ^ vptr[i]) << 8);
+
+	return crc;
+}
+
+const char *phytec_get_opt(const struct phytec_eeprom_data *data)
+{
+	const char *opt;
+
+	if (!data)
+		data = &eeprom_data;
+
+	switch (data->api_rev) {
+	case PHYTEC_API_REV0:
+	case PHYTEC_API_REV1:
+		opt = data->data.data_api0.opt;
+		break;
+	case PHYTEC_API_REV2:
+		opt = data->data.data_api2.opt;
+		break;
+	default:
+		opt = NULL;
+		break;
+	};
+
+	return opt;
+}
+
+static int phytec_eeprom_data_init(struct pbl_i2c *i2c,
+				   struct phytec_eeprom_data *data,
+				   int addr, u8 phytec_som_type)
+{
+	unsigned int crc;
+	const char *opt;
+	int *ptr;
+	int ret = -1, i;
+	u8 som;
+
+	if (!data)
+		data = &eeprom_data;
+
+	eeprom_read(i2c, addr, I2C_ADDR_16_BIT, data, sizeof(struct phytec_eeprom_data));
+
+	if (data->api_rev == 0xff) {
+		pr_err("%s: EEPROM is not flashed. Prototype?\n", __func__);
+		return -EINVAL;
+	}
+
+	for (i = 0, ptr = (int *)data;
+	     i < sizeof(struct phytec_eeprom_data);
+	     i += sizeof(ptr), ptr++)
+		if (*ptr != 0x0)
+			break;
+
+	if (i == sizeof(struct phytec_eeprom_data)) {
+		pr_err("%s: EEPROM data is all zero. Erased?\n", __func__);
+		return -EINVAL;
+	}
+
+	if (data->api_rev > PHYTEC_API_REV2) {
+		pr_err("%s: EEPROM API revision %u not supported\n",
+		       __func__, data->api_rev);
+		return -EINVAL;
+	}
+
+	/* We are done here for early revisions */
+	if (data->api_rev <= PHYTEC_API_REV1)
+		return 0;
+
+	crc = crc8(0, (const unsigned char *)data,
+		   sizeof(struct phytec_eeprom_data));
+	pr_debug("%s: crc: %x\n", __func__, crc);
+
+	if (crc) {
+		pr_err("%s: CRC mismatch. EEPROM data is not usable\n", __func__);
+		return -EINVAL;
+	}
+
+	som = data->data.data_api2.som_no;
+	pr_debug("%s: som id: %u\n", __func__, som);
+	opt = phytec_get_opt(data);
+	if (!opt)
+		return -EINVAL;
+
+	if (IS_ENABLED(CONFIG_BOARD_PHYTEC_SOM_IMX8M_DETECTION))
+		ret = phytec_imx8m_detect(som, opt, phytec_som_type);
+
+	if (ret) {
+		pr_err("%s: SoM ID does not match. Wrong EEPROM data?\n", __func__);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+void phytec_print_som_info(const struct phytec_eeprom_data *data)
+{
+	const struct phytec_api2_data *api2;
+	char pcb_sub_rev;
+	unsigned int ksp_no, sub_som_type1 = -1, sub_som_type2 = -1;
+
+	if (!data)
+		data = &eeprom_data;
+
+	if (data->api_rev < PHYTEC_API_REV2)
+		return;
+
+	api2 = &data->data.data_api2;
+
+	/* Calculate PCB subrevision */
+	pcb_sub_rev = api2->pcb_sub_opt_rev & 0x0f;
+	pcb_sub_rev = pcb_sub_rev ? ((pcb_sub_rev - 1) + 'a') : ' ';
+
+	/* print standard product string */
+	if (api2->som_type <= 1) {
+		pr_info("SoM: %s-%03u-%s.%s PCB rev: %u%c\n",
+			phytec_som_type_str[api2->som_type], api2->som_no,
+			api2->opt, api2->bom_rev, api2->pcb_rev, pcb_sub_rev);
+		return;
+	}
+	/* print KSP/KSM string */
+	if (api2->som_type <= 3) {
+		ksp_no = (api2->ksp_no << 8) | api2->som_no;
+		pr_info("SoM: %s-%u ",
+			phytec_som_type_str[api2->som_type], ksp_no);
+		/* print standard product based KSP/KSM strings */
+	} else {
+		switch (api2->som_type) {
+		case 4:
+			sub_som_type1 = 0;
+			sub_som_type2 = 3;
+			break;
+		case 5:
+			sub_som_type1 = 0;
+			sub_som_type2 = 2;
+			break;
+		case 6:
+			sub_som_type1 = 1;
+			sub_som_type2 = 3;
+			break;
+		case 7:
+			sub_som_type1 = 1;
+			sub_som_type2 = 2;
+			break;
+		default:
+			break;
+		};
+
+		pr_info("SoM: %s-%03u-%s-%03u ",
+			phytec_som_type_str[sub_som_type1],
+			api2->som_no, phytec_som_type_str[sub_som_type2],
+			api2->ksp_no);
+	}
+
+	printf("Option: %s BOM rev: %s PCB rev: %u%c\n", api2->opt,
+	       api2->bom_rev, api2->pcb_rev, pcb_sub_rev);
+}
+
+int phytec_eeprom_data_setup(struct pbl_i2c *i2c, struct phytec_eeprom_data *data,
+			     int addr, int addr_fallback, u8 cpu_type)
+{
+	int ret;
+
+	ret = phytec_eeprom_data_init(i2c, data, addr, cpu_type);
+	if (ret) {
+		pr_err("%s: init failed. Trying fall back address 0x%x\n",
+		       __func__, addr_fallback);
+		ret = phytec_eeprom_data_init(i2c, data, addr_fallback, cpu_type);
+	}
+
+	if (ret)
+		pr_err("%s: EEPROM data init failed\n", __func__);
+	else
+		pr_debug("%s: init successful\n", __func__);
+
+	return ret;
+}
diff --git a/common/boards/phytec/phytec-som-imx8m-detection.c b/common/boards/phytec/phytec-som-imx8m-detection.c
new file mode 100644
index 000000000000..a21c0c328fd0
--- /dev/null
+++ b/common/boards/phytec/phytec-som-imx8m-detection.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2020 PHYTEC Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ */
+
+#include <boards/phytec/phytec-som-imx8m-detection.h>
+#include <common.h>
+#include <mach/imx/generic.h>
+
+extern struct phytec_eeprom_data eeprom_data;
+
+/* Check if the SoM is actually one of the following products:
+ * - i.MX8MM
+ * - i.MX8MN
+ * - i.MX8MP
+ * - i.MX8MQ
+ *
+ * Returns 0 in case it's a known SoM. Otherwise, returns -errno.
+ */
+int phytec_imx8m_detect(u8 som, const char *opt, u8 cpu_type)
+{
+	if (som == PHYTEC_IMX8MP_SOM && cpu_type == IMX_CPU_IMX8MP)
+		return 0;
+
+	if (som == PHYTEC_IMX8MM_SOM) {
+		if (((opt[0] - '0') != 0) &&
+		    ((opt[1] - '0') == 0) && cpu_type == IMX_CPU_IMX8MM)
+			return 0;
+		else if (((opt[0] - '0') == 0) &&
+			 ((opt[1] - '0') != 0) && cpu_type == IMX_CPU_IMX8MN)
+			return 0;
+		return -EINVAL;
+	}
+
+	if (som == PHYTEC_IMX8MQ_SOM && cpu_type == IMX_CPU_IMX8MQ)
+		return 0;
+
+	return -EINVAL;
+}
+
+/*
+ * So far all PHYTEC i.MX8M boards have RAM size definition at the
+ * same location.
+ */
+u8 phytec_get_imx8m_ddr_size(const struct phytec_eeprom_data *data)
+{
+	const char *opt;
+	u8 ddr_id;
+
+	if (!data)
+		data = &eeprom_data;
+
+	opt = phytec_get_opt(data);
+	if (opt)
+		ddr_id = opt[2] - '0';
+	else
+		ddr_id = PHYTEC_EEPROM_INVAL;
+
+	pr_debug("%s: ddr id: %u\n", __func__, ddr_id);
+
+	return ddr_id;
+}
+
+/*
+ * Filter SPI-NOR flash information. All i.MX8M boards have this at
+ * the same location.
+ * returns: 0x0 if no SPI is populated. Otherwise a board depended
+ * code for the size. PHYTEC_EEPROM_INVAL when the data is invalid.
+ */
+u8 phytec_get_imx8m_spi(const struct phytec_eeprom_data *data)
+{
+	const char *opt;
+	u8 spi;
+
+	if (!data)
+		data = &eeprom_data;
+
+	if (data->api_rev < PHYTEC_API_REV2)
+		return PHYTEC_EEPROM_INVAL;
+
+	opt = phytec_get_opt(data);
+	if (opt)
+		spi = opt[4] - '0';
+	else
+		spi = PHYTEC_EEPROM_INVAL;
+
+	pr_debug("%s: spi: %u\n", __func__, spi);
+
+	return spi;
+}
+
+/*
+ * Filter ethernet phy information. All i.MX8M boards have this at
+ * the same location.
+ * returns: 0x0 if no ethernet phy is poulated. 0x1 if it is populated.
+ * PHYTEC_EEPROM_INVAL when the data is invalid.
+ */
+u8 phytec_get_imx8m_eth(const struct phytec_eeprom_data *data)
+{
+	const char *opt;
+	u8 eth;
+
+	if (!data)
+		data = &eeprom_data;
+
+	if (data->api_rev < PHYTEC_API_REV2)
+		return PHYTEC_EEPROM_INVAL;
+
+	opt = phytec_get_opt(data);
+	if (opt) {
+		eth = opt[5] - '0';
+		eth &= 0x1;
+	} else {
+		eth = PHYTEC_EEPROM_INVAL;
+	}
+
+	pr_debug("%s: eth: %u\n", __func__, eth);
+
+	return eth;
+}
+
+/*
+ * Filter RTC information.
+ * returns: 0 if no RTC is poulated. 1 if it is populated.
+ * PHYTEC_EEPROM_INVAL when the data is invalid.
+ */
+u8 phytec_get_imx8mp_rtc(const struct phytec_eeprom_data *data)
+{
+	const char *opt;
+	u8 rtc;
+
+	if (!data)
+		data = &eeprom_data;
+
+	if (data->api_rev < PHYTEC_API_REV2)
+		return PHYTEC_EEPROM_INVAL;
+
+	opt = phytec_get_opt(data);
+	if (opt) {
+		rtc = opt[5] - '0';
+		rtc &= 0x4;
+		rtc = !(rtc >> 2);
+	} else {
+		rtc = PHYTEC_EEPROM_INVAL;
+	}
+
+	pr_debug("%s: rtc: %u\n", __func__, rtc);
+
+	return rtc;
+}
diff --git a/include/boards/phytec/phytec-som-detection.h b/include/boards/phytec/phytec-som-detection.h
new file mode 100644
index 000000000000..32690d7562bc
--- /dev/null
+++ b/include/boards/phytec/phytec-som-detection.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2020 PHYTEC Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ */
+
+#ifndef _BOARDS_PHYTEC_PHYTEC_SOM_DETECTION_H
+#define _BOARDS_PHYTEC_PHYTEC_SOM_DETECTION_H
+
+#include <common.h>
+#include <pbl/i2c.h>
+
+#define PHYTEC_MAX_OPTIONS	17
+#define PHYTEC_IMX8MQ_SOM	66
+#define PHYTEC_IMX8MM_SOM	69
+#define PHYTEC_IMX8MP_SOM	70
+
+#define PHYTEC_EEPROM_INVAL	0xff
+
+enum {
+	PHYTEC_API_REV0 = 0,
+	PHYTEC_API_REV1,
+	PHYTEC_API_REV2,
+};
+
+static const char * const phytec_som_type_str[] = {
+	"PCM",
+	"PCL",
+	"KSM",
+	"KSP",
+};
+
+struct phytec_api0_data {
+	u8 pcb_rev;		/* PCB revision of SoM */
+	u8 som_type;		/* SoM type */
+	u8 ksp_no;		/* KSP no */
+	char opt[16];		/* SoM options */
+	u8 mac[6];		/* MAC address (optional) */
+	u8 __pad[5];		/* padding */
+	u8 cksum;		/* checksum */
+} __attribute__ ((__packed__));
+
+struct phytec_api2_data {
+	u8 pcb_rev;		/* PCB revision of SoM */
+	u8 pcb_sub_opt_rev;	/* PCB subrevision and opt revision */
+	u8 som_type;		/* SoM type */
+	u8 som_no;		/* SoM number */
+	u8 ksp_no;		/* KSP information */
+	char opt[PHYTEC_MAX_OPTIONS]; /* SoM options */
+	char bom_rev[2];	/* BOM revision */
+	u8 mac[6];		/* MAC address (optional) */
+	u8 crc8;		/* checksum */
+} __attribute__ ((__packed__));
+
+struct phytec_eeprom_data {
+	u8 api_rev;
+	union {
+		struct phytec_api0_data data_api0;
+		struct phytec_api2_data data_api2;
+	} data;
+} __attribute__ ((__packed__));
+
+const char *phytec_get_opt(const struct phytec_eeprom_data *data);
+int phytec_eeprom_data_setup(struct pbl_i2c *i2c, struct phytec_eeprom_data *data,
+			     int addr, int addr_fallback, u8 cpu_type);
+
+void phytec_print_som_info(const struct phytec_eeprom_data *data);
+
+#endif /* _BOARDS_PHYTEC_PHYTEC_SOM_DETECTION_H */
diff --git a/include/boards/phytec/phytec-som-imx8m-detection.h b/include/boards/phytec/phytec-som-imx8m-detection.h
new file mode 100644
index 000000000000..2e123148d429
--- /dev/null
+++ b/include/boards/phytec/phytec-som-imx8m-detection.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2020 PHYTEC Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ */
+
+#ifndef _BOARDS_PHYTEC_PHYTEC_SOM_IMX8M_DETECTION_H
+#define _BOARDS_PHYTEC_PHYTEC_SOM_IMX8M_DETECTION_H
+
+#include <common.h>
+#include <boards/phytec/phytec-som-detection.h>
+
+int phytec_imx8m_detect(u8 som, const char *opt, u8 cpu_type);
+u8 phytec_get_imx8m_ddr_size(const struct phytec_eeprom_data *data);
+u8 phytec_get_imx8mp_rtc(const struct phytec_eeprom_data *data);
+u8 phytec_get_imx8m_spi(const struct phytec_eeprom_data *data);
+u8 phytec_get_imx8m_eth(const struct phytec_eeprom_data *data);
+
+#endif /* _BOARDS_PHYTEC_PHYTEC_SOM_IMX8M_DETECTION_H */

-- 
2.39.2




