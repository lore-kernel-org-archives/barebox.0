Delivery-date: Thu, 02 Feb 2023 09:00:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUWY-00B8AY-Rd
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 09:00:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUWV-0001OZ-EO
	for lore@pengutronix.de; Thu, 02 Feb 2023 09:00:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CpK0FxZNHpUXPeAzQV6AmKawY69gO9sQuXmBu6pxThE=; b=xXadc+nt7Hy6i20PPxIOtJBo6j
	uhxeSDnQVy8GzW3O9Of+EDOUMfr4L0ZinN434wnAAeRSFtjebcB1nCIJ8oEMmq7ZCR2dK3jMhVFdk
	XZV4Jj3/1/4+GKxP6GjckEHeZkdM8tw7/mcrQT50Nd3psDyTUkyPXP9PE3+wqNh7jayMMx9cfZ1nC
	1bazlXYVbDugsg4BAHCWMZ18pe2bOdn2B52VaimWA9GhMS9kejCtsikDwqT7E+ZaBp0fwftIY4a5I
	k4FCrMC/kz14e4anRSe9GdfL8n7ViesHVRtTVR6ALU5102bbhoIBmARnNHe1tz/HMyMODGRVOhP1l
	TdR+FFWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUVE-00Ep52-DE; Thu, 02 Feb 2023 07:59:28 +0000
Received: from out-9.mta0.migadu.com ([91.218.175.9])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUUO-00EogM-EC
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:58:38 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675324712;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CpK0FxZNHpUXPeAzQV6AmKawY69gO9sQuXmBu6pxThE=;
	b=l35lqn2UK0ob4VoyODM2xV+lCr95b4JwWfWtO1AdsxPDavwbP5voY7PakurQDx6a8tqu+n
	oH8Cm0luiLBuN3skLKXYd6LFeCeO4MF+qrhOP3YhuRwJjVufyRcpLfugsqRJZVtUup74l6
	FTxLa2mo0da3ij6KdqiyxkW1DiIGpCCe3iSkKcRb5F2RG0542kpcykp9yxCki3LvzMsb76
	nk/5BcKOd/nr/0pDOkDjpheFwfS17+LAzZtN17ScZoWOi56jIX4p8nR8ReshXsgGRabbJh
	c538G2CB4Yfx0gmv7SMNb8zmM6VKtWZVxvUGedLwkIswzMDr+KfG0RXsaddR1Q==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu,  2 Feb 2023 18:57:40 +1100
Message-Id: <20230202075741.2350028-4-contact@jookia.org>
In-Reply-To: <20230202075741.2350028-1-contact@jookia.org>
References: <20230202075741.2350028-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_235836_686094_C38C0DBF 
X-CRM114-Status: GOOD (  13.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
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



