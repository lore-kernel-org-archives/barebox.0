Delivery-date: Mon, 30 Jan 2023 18:37:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMY5Z-007qcj-SV
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:37:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMY5X-0007Ka-74
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:37:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CpK0FxZNHpUXPeAzQV6AmKawY69gO9sQuXmBu6pxThE=; b=SiYXUy4Co5+6GjyfaECmGTf106
	y5XjTrvNqsecXbdHXs1AoHMvVosZez+SN1P+9zuHQyc0QP+SnFECGsvew0ilV9IXgXgFZ8+GQkv1P
	ykWdTrwIp3gLW3cEN+n9xTmgR2v9Q2HH47354tuymJd68CZE/hfsl/JlWV5Lf4SMiKuSYVqh1IxOn
	c/RrjvEUUt9fAwNxfApYrFH33KKMYQUPPIp+qhdAeRxJNfEK4CJFx3556a1pUD4JmXGgOktwndZ/+
	WRas4iWNNHqqnzcq2qYtmhbL4jNSzcEflYhSd4dmFX2uZVDCbNIl6nljnQTz3ehvdcsJcFWmXJ8nC
	qCDbpzlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMH9Y-0022HV-Bc; Sun, 29 Jan 2023 23:32:04 +0000
Received: from out2.migadu.com ([188.165.223.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMH9T-0022Gb-V7
	for barebox@lists.infradead.org; Sun, 29 Jan 2023 23:32:01 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675035117;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CpK0FxZNHpUXPeAzQV6AmKawY69gO9sQuXmBu6pxThE=;
	b=LtNa6+8k4Av9eKsp0tJ9Xb18larzClNC4tQpF66fp75mjirVWuc9Biqji34zwfyy4M5YA+
	PdepykkJ8YwUc8wdRmFGaykPhYfITOzHIWZzShCt25o0NuzKpJxb1/Pe4kW17osmYq/9SZ
	uY7S2lW+mWz+F0SKbri81tCVkO4E7frLwgj/eH9qh5CGlJ85OqOFbGp4s2Gn9NA2H7nlHA
	GQF9D13JieaDkWg+56WsZYt5+oBgO/syvrSY7dMC06ZKCutsbK9Al9X9nDK6SPYkkjmAcA
	pwL3DrUdod9RkN17YF4a7czRlWu+v90Dd/x/NIUJKn7lU8kS80aeVpFMIIOnDQ==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Mon, 30 Jan 2023 10:27:59 +1100
Message-Id: <20230129232758.1799987-4-contact@jookia.org>
In-Reply-To: <20230122175141.119834-1-contact@jookia.org>
References: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_153200_177605_62BD0B8D 
X-CRM114-Status: GOOD (  13.27  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Novena has an EEPROM used for storing information about the board,
including the Ethernet MAC address.

The reference for the EEPROM fields is the novena-eeprom source code.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/boards/novena/board.c | 85 ++++++++++++++++++++++++++++++++++
 arch/arm/dts/imx6q-novena.dts  | 14 ++++++
 2 files changed, 99 insertions(+)

diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
index e41ea10f8d..b6c59aff44 100644
--- a/arch/arm/boards/novena/board.c
+++ b/arch/arm/boards/novena/board.c
@@ -3,9 +3,94 @@
 
 #include <common.h>
 #include <deep-probe.h>
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
+static void power_on_audio_codec(void)
+{
+	int rc = of_devices_ensure_probed_by_name("regulator-audio-codec");
+
+	if (rc < 0)
+		pr_err("Unable to power on audio codec: %s\n", strerror(-rc));
+}
+
+static struct novena_eeprom *novena_read_eeprom(void)
+{
+	size_t read;
+	loff_t max = sizeof(struct novena_eeprom);
+	void *eeprom;
+	int rc;
+
+	/*
+	 * When powered off the audio codec pulls down the EEPROM's I2C line.
+	 * Power it on so we can actually read data.
+	 */
+	power_on_audio_codec();
+
+	rc = of_device_ensure_probed_by_alias("eeprom0");
+	if (rc < 0) {
+		pr_err("Unable to probe eeprom0: %s\n", strerror(-rc));
+		return NULL;
+	}
+
+	rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);
+
+	if (rc < 0 && rc != -EFBIG) {
+		pr_err("Unable to read Novena EEPROM: %s\n", strerror(-rc));
+		return NULL;
+	} else if (read != max) {
+		pr_err("Short read from Novena EEPROM?\n");
+		free(eeprom);
+		return NULL;
+	}
+
+	return eeprom;
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
 
 static int novena_probe(struct device *dev)
 {
+	struct novena_eeprom *eeprom = novena_read_eeprom();
+
+	if (eeprom && novena_check_eeprom(eeprom))
+		novena_set_mac(eeprom);
+
+	free(eeprom);
+
 	return 0;
 }
 
diff --git a/arch/arm/dts/imx6q-novena.dts b/arch/arm/dts/imx6q-novena.dts
index 12bade849c..c614ed3cbb 100644
--- a/arch/arm/dts/imx6q-novena.dts
+++ b/arch/arm/dts/imx6q-novena.dts
@@ -2,3 +2,17 @@
 // SPDX-FileCopyrightText: 2023 John Watts <contact@jookia.org>
 
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
+	};
+};
-- 
2.39.1



