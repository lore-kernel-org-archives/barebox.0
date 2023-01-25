Delivery-date: Wed, 25 Jan 2023 17:44:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKitP-001i2l-L6
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 17:44:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKitL-0007qY-Gf
	for lore@pengutronix.de; Wed, 25 Jan 2023 17:44:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G/4GxOGavB7hsl5ryIiG+jMt5nJNyofEo05dmyNQv0w=; b=OfPjXvqijF+mpfi7/8bjpHC3NT
	7vTEX1QlAG+Gd7dzMrZ9Qzn8X7bJtVkDnMxljDYA2+2Q3k/yxJmruVCyJ5cVmYJPb/Rb2ODdnXaPb
	tw6VgryaPvyrxSDxCqjgeCsowUgKfndGbhggXjC+yPwYCjYZIqif2JGE/hS92QsoG+o4XNazkXHnH
	y7I+c9nFxqlWzChArnHFYDUcPP9XOIvOCjG/sDC0DVm40HE4gP4+v7YbiHUnPqK4BlbYVFxIoqi6I
	aCD20OECRFkCY/HK0AQCzSWXyx9ouomII4ATcG0Ay2mKvmu0zhxNz5EYt4R6eFIcwUOcJJmbcT7AU
	wZYHREaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKirw-0080iU-8o; Wed, 25 Jan 2023 16:43:29 +0000
Received: from out-116.mta0.migadu.com ([2001:41d0:1004:224b::74])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKira-0080aY-1f
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 16:43:07 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674664982;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G/4GxOGavB7hsl5ryIiG+jMt5nJNyofEo05dmyNQv0w=;
	b=cFfQQ44DW/9I2KugL0YGfXVg6cC68cmecyIc6/ejZasb8Fkmji+PXa4ET9jTfj06FrL6VR
	jHZAw7t/b3iEfslSuzQ9K0noYR3+9sQVUvxT3uqqsfEK4lpYQaZAXOXi1yIDoufZPw+Zo5
	KHoFMEYx6zSF/XXADReN9F3uSZSSSdgcmFLDrD4HnxFbA9MjsKu43ozE4ft5HniWMtPNpx
	6gvoYbYO6xrrFaFcu4cUSMxzDWVSSCVm9qNiGtqFS7+nQPljMi4KcT30Eu1gu1bnOYTdMm
	1lDyo1A/It+3vob8gQEmHrwGhJMyigJHkKbJGybeynzXvJtaqIguJZH1TKA06A==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu, 26 Jan 2023 03:42:29 +1100
Message-Id: <20230125164230.2328043-4-contact@jookia.org>
In-Reply-To: <20230122175141.119834-1-contact@jookia.org>
References: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_084306_268489_2C8AD910 
X-CRM114-Status: GOOD (  13.66  )
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
Subject: [PATCH v2 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Novena has an EEPROM used for storing information about the board,
including the Ethernet MAC address.

The reference for the EEPROM fields is the novena-eeprom source code.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/boards/novena/board.c | 88 ++++++++++++++++++++++++++++++++++
 arch/arm/dts/imx6q-novena.dts  | 15 ++++++
 2 files changed, 103 insertions(+)

diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
index e247f8b8c3..24cde1c0d4 100644
--- a/arch/arm/boards/novena/board.c
+++ b/arch/arm/boards/novena/board.c
@@ -3,9 +3,97 @@
 
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
 
 static int novena_probe(struct device *dev)
 {
+	novena_try_eeprom();
+
 	return 0;
 }
 
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



