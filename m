Delivery-date: Sun, 22 Jan 2023 18:53:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeXW-002GkW-Rm
	for lore@lore.pengutronix.de; Sun, 22 Jan 2023 18:53:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeXU-00045y-Ij
	for lore@pengutronix.de; Sun, 22 Jan 2023 18:53:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jh+uF3e+mS6YQCJGVzthf3W6eeY23D3rP+3i0GSioOs=; b=dDlZC9D5MdvlKr65sKbEFPbUBI
	v+T9P6hD23hXLiMF14lUU0nEjzCl0vHvQHnUB26xormevr6uy0KE+pyMDrl1YOhGPCNnh5aOaCiiK
	8S3gIfIwTheLL3o9Okrqzt1OqG5kBlwhXXKELnu1sxMKOpeK+/heG1cFmDxJk0dw9NZZw8j0bCA/K
	PnTkOjiaxSQZ942mXVq9l0O6PBgxKxHVzW8tOQH7ePtUaWvBu8JR8CcwmQ0LjJdOKVtHSDrNgHZdb
	cHEG39BUNzLty1rDY9FAjmgT/IqGJO/Tx6z8xp6EwBLiPpx2IwG+rEbmC7OqWyGdxJdR29S9RfRC5
	IUsbDkxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJeWG-00FcFt-DF; Sun, 22 Jan 2023 17:52:40 +0000
Received: from out-218.mta0.migadu.com ([91.218.175.218])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJeWB-00FcDz-Dq
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 17:52:37 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674409952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jh+uF3e+mS6YQCJGVzthf3W6eeY23D3rP+3i0GSioOs=;
	b=W59VIeZEi/qXhTsl9zTQVQDgDt9xIvZYXlCAGCjdFxGoeIdLA6l8ROji/4JesYzX1SDwaw
	l2Y3/5zpIerg6HItLVMf+fpg1DBdVBGVkdamzo4oK3g4tiEYfEjJ8PQvx6IZbp+NxA92cS
	dMHiDr+WDPHuGUq2J1xuECL13lHIAv2nkjrRKltjrI1wWEdtEgJWV5EMQQoZviZc5+fGO1
	Bwgr/OYGFnWizEonQfcl57SpzrVYyP8dfemVBN0nBsOrGb/xFPqyLZ+b2o0PLxF7kq8/WC
	tjye6F8zlG3ikYfh2ZyTq8A3hS/+UEbfXjMU/fMvF518mF55ROR7G8Dy3SOKEQ==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Mon, 23 Jan 2023 04:51:40 +1100
Message-Id: <20230122175141.119834-5-contact@jookia.org>
In-Reply-To: <20230122175141.119834-1-contact@jookia.org>
References: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_095235_678936_F54018F4 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Novena has an EEPROM used for storing information about the board,
including the Ethernet MAC address.

The reference for the EEPROM fields is the novena-eeprom source code.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/boards/novena/board.c | 68 ++++++++++++++++++++++++++++++++++
 arch/arm/dts/imx6q-novena.dts  | 15 ++++++++
 2 files changed, 83 insertions(+)

diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
index 186f91093f..0341117c46 100644
--- a/arch/arm/boards/novena/board.c
+++ b/arch/arm/boards/novena/board.c
@@ -2,12 +2,80 @@
 // SPDX-FileCopyrightText: 2023 John Watts
 
 #include <common.h>
+#include <fs.h>
+#include <libfile.h>
+#include <net.h>
+
+struct novena_eeprom {
+	uint8_t signature[6]; /* 'Novena' */
+	uint8_t version; /* 1 or 2, not checked */
+	uint8_t page_size; /* v2 only: EEPROM read/write page */
+	uint32_t serial; /* 32-bit serial number */
+	uint8_t mac[6]; /* Gigabit MAC address */
+	uint16_t features; /* features */
+	/* ... extra fields omitted ... */
+} __packed;
+
+static struct novena_eeprom *novena_read_eeprom(void)
+{
+	size_t read;
+	loff_t max = sizeof(struct novena_eeprom);
+	void *eeprom;
+
+	int rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);
+
+	if (rc < 0 && rc != -EFBIG) {
+		pr_err("Unable to read Novena EEPROM: %s\n", strerror(-rc));
+		return NULL;
+	} else if (read != max) {
+		pr_err("Short read from Novena EEPROM?\n");
+		return NULL;
+	} else {
+		return eeprom;
+	}
+}
+
+static bool novena_check_eeprom(struct novena_eeprom *eeprom)
+{
+	char *sig = eeprom->signature;
+	size_t size = sizeof(eeprom->signature);
+
+	if (memcmp("Novena", sig, size) != 0) {
+		pr_err("Unknown Novena EEPROM signature\n");
+		return false;
+	}
+
+	return true;
+}
+
+static void novena_set_mac(struct novena_eeprom *eeprom)
+{
+	struct device_node *dnode;
+
+	dnode = of_find_node_by_alias(of_get_root_node(), "ethernet0");
+	if (dnode)
+		of_eth_register_ethaddr(dnode, eeprom->mac);
+	else
+		pr_err("Unable to find ethernet node\n");
+}
+
+static void novena_try_eeprom(void)
+{
+	struct novena_eeprom *eeprom = novena_read_eeprom();
+
+	if (!eeprom || !novena_check_eeprom(eeprom))
+		return;
+
+	novena_set_mac(eeprom);
+}
 
 static int novena_device_init(void)
 {
 	if (!of_machine_is_compatible("kosagi,imx6q-novena"))
 		return 0;
 
+	novena_try_eeprom();
+
 	return 0;
 }
 device_initcall(novena_device_init);
diff --git a/arch/arm/dts/imx6q-novena.dts b/arch/arm/dts/imx6q-novena.dts
index 07471cb132..095dcde0d5 100644
--- a/arch/arm/dts/imx6q-novena.dts
+++ b/arch/arm/dts/imx6q-novena.dts
@@ -2,3 +2,18 @@
 // SPDX-FileCopyrightText: 2023 John Watts
 
 #include <arm/imx6q-novena.dts>
+
+/ {
+	aliases {
+		eeprom0 = &eeprom;
+	};
+};
+
+&i2c3 {
+	eeprom: eeprom@56 {
+		compatible = "24c512";
+		reg = <0x56>;
+		pagesize = <128>;
+		status = "okay";
+	};
+};
-- 
2.39.0



