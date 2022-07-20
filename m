Delivery-date: Wed, 20 Jul 2022 07:52:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE2dU-00FGdM-T0
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 07:52:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE2dS-0008Aq-4o
	for lore@pengutronix.de; Wed, 20 Jul 2022 07:52:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XXQtLKGmKIHeBbvWL8+8GLfJjeoGvMvFv7k198jKtY4=; b=tMbhDbbgDixHmWUBPdRvnWV02g
	6Tj2B0sy8wwbdPxKf2CvCyXei7u5q13wm+eP4fmCSphRWp7xEkQ/xFJhW41ew14X9Y8Z8F4g44R3a
	RhLJZjbB+V510YV4KQ162wlxl+mWalJLUuhkfwg0jam+/GKv+1eNn4ksLNfFcPg9dtCbOZQKB+MhB
	gWSn/i2WE/lvb0uFHhvZy+J+PoIaREaC2N85PUqJiHzOGqlf0G1je4tEoyYVxQb0+qekH4oCMQPRH
	U47A+4IgsNDTnp8ZIKrxQQWRWBWyeahdB20pxyRHWQgCh6HMR9KCht5MVXEArOqUhnS9ctPD7xPn4
	/PNy9NIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE2bu-000jP3-2e; Wed, 20 Jul 2022 05:51:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE2bk-000jKX-Sa
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 05:50:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bg-0007ns-0V; Wed, 20 Jul 2022 07:50:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bc-0023UP-T1; Wed, 20 Jul 2022 07:50:44 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bb-00EjCT-Ef; Wed, 20 Jul 2022 07:50:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: michael.riesch@wolfvision.net,
	j.zink@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Jul 2022 07:50:41 +0200
Message-Id: <20220720055042.3510276-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
References: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_225053_108163_FDE08783 
X-CRM114-Status: GOOD (  22.51  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH 2/3] bootsource: allow DT aliases and bootrom numbering to differ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, we had no explicit mapping table between bootsource_instance
and device id numbering in barebox and mostly depended on DT aliases
reflecting the numbering of the bootrom. Add a new bootsource_set()
that optionally consults a mapping table in the DT to arrive at the
correct numbers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../devicetree/bindings/barebox/aliases.rst   |  36 +++++++
 common/bootsource.c                           | 101 +++++++++++++-----
 include/bootsource.h                          |  40 ++++++-
 3 files changed, 149 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/barebox/aliases.rst

diff --git a/Documentation/devicetree/bindings/barebox/aliases.rst b/Documentation/devicetree/bindings/barebox/aliases.rst
new file mode 100644
index 000000000000..527cc85ef696
--- /dev/null
+++ b/Documentation/devicetree/bindings/barebox/aliases.rst
@@ -0,0 +1,36 @@
+barebox DT aliases
+==================
+
+barebox can use the properties in the ``/aliases`` node to arrive
+at deterministic names for devices, e.g.::
+
+.. code-block:: none
+   / {
+   	aliases {
+   		mmc0 = &sdhci;
+   		wdog0 = &iwdg;
+   	};
+   };
+
+will assign the MMC device created from probing the node at ``&sdhci``
+the name ``/dev/mmc0``. Similarly, the watchdog device created from
+probing the node at ``&iwdg`` will be named ``wdog0``.
+
+By default, barebox will assume the aliases in the DT to align with
+the bootsource communicated by the firmware. If this is not the case,
+a device tree override is possible via an
+``/aliases/barebox,bootsource-${bootsource}${bootsource_instance}``
+property:
+
+.. code-block:: none
+
+  &{/aliases} {
+	mmc0 = &sdmmc0;
+	mmc1 = &sdhci;
+	barebox,bootsource-mmc0 = &sdhci;
+	barebox,bootsource-mmc1 = &sdmmc0;
+  };
+
+This will ensure that when booting from MMC, ``/dev/mmc${bootsource_instance}``
+will point at the correct boot device, despite bootrom and board DT alias
+order being different.
diff --git a/common/bootsource.c b/common/bootsource.c
index c37da38f7f99..d74c5e5cbe9f 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -33,6 +33,34 @@ static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
 static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
 const char *bootsource_alias_name = NULL;
 
+const char *bootsource_get_alias_stem(enum bootsource bs)
+{
+	switch (bs) {
+		/*
+		 * For I2C and SPI EEPROMs we set the stem to be 'i2c'
+		 * and 'spi' correspondingly. The resulting alias will
+		 * be pointing at the controller said EEPROM is
+		 * attached to.
+		 *
+		 * NOTE: This code assumes single bootable EEPROM per
+		 * controller
+		 */
+	case BOOTSOURCE_I2C_EEPROM:
+		return bootsource_str[BOOTSOURCE_I2C];
+	case BOOTSOURCE_SPI_EEPROM:
+	case BOOTSOURCE_SPI_NOR:
+		return bootsource_str[BOOTSOURCE_SPI];
+	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
+	case BOOTSOURCE_I2C:	/* FALLTHROUGH */
+	case BOOTSOURCE_MMC:	/* FALLTHROUGH */
+	case BOOTSOURCE_SPI:	/* FALLTHROUGH */
+	case BOOTSOURCE_CAN:
+		return bootsource_str[bootsource];
+	default:
+		return NULL;
+	}
+}
+
 /**
  * bootsource_get_alias_name() - Get the name of the bootsource alias
  *
@@ -58,33 +86,9 @@ char *bootsource_get_alias_name(void)
 	if (bootsource_alias_name)
 		return strdup(bootsource_alias_name);
 
-	switch (bootsource) {
-		/*
-		 * For I2C and SPI EEPROMs we set the stem to be 'i2c'
-		 * and 'spi' correspondingly. The resulting alias will
-		 * be pointing at the controller said EEPROM is
-		 * attached to.
-		 *
-		 * NOTE: This code assumes single bootable EEPROM per
-		 * controller
-		 */
-	case BOOTSOURCE_I2C_EEPROM:
-		stem = bootsource_str[BOOTSOURCE_I2C];
-		break;
-	case BOOTSOURCE_SPI_EEPROM:
-	case BOOTSOURCE_SPI_NOR:
-		stem = bootsource_str[BOOTSOURCE_SPI];
-		break;
-	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
-	case BOOTSOURCE_I2C:	/* FALLTHROUGH */
-	case BOOTSOURCE_MMC:	/* FALLTHROUGH */
-	case BOOTSOURCE_SPI:	/* FALLTHROUGH */
-	case BOOTSOURCE_CAN:
-		stem = bootsource_str[bootsource];
-		break;
-	default:
+	stem = bootsource_get_alias_stem(bootsource);
+	if (!stem)
 		return NULL;
-	}
 
 	/*
 	 * We expect SoC specific bootsource detection code to properly
@@ -123,6 +127,51 @@ void bootsource_set_raw_instance(int instance)
 		pr_setenv("bootsource_instance", "%d", instance);
 }
 
+int bootsource_of_alias_xlate(enum bootsource bs, int instance)
+{
+	char alias[sizeof("barebox,bootsource-harddisk4294967295")];
+	const char *bootsource_stem;
+	struct device_node *np;
+	int alias_id;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	if (bs == BOOTSOURCE_UNKNOWN ||
+	    instance == BOOTSOURCE_INSTANCE_UNKNOWN)
+		return BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	bootsource_stem = bootsource_get_alias_stem(bs);
+	if (!bootsource_stem)
+		return BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	scnprintf(alias, sizeof(alias), "barebox,bootsource-%s%u",
+		  bootsource_stem, instance);
+
+	np = of_find_node_by_alias(NULL, alias);
+	if (!np)
+		return BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	alias_id = of_alias_get_id(np, bootsource_stem);
+	if (alias_id < 0)
+		return BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	return alias_id;
+}
+
+int bootsource_set(enum bootsource bs, int instance)
+{
+	int alias_id;
+
+	alias_id = bootsource_of_alias_xlate(bs, instance);
+	if (alias_id == BOOTSOURCE_INSTANCE_UNKNOWN)
+		alias_id = instance;
+
+	bootsource_set_raw(bs, alias_id);
+
+	return alias_id;
+}
+
 enum bootsource bootsource_get(void)
 {
 	return bootsource;
diff --git a/include/bootsource.h b/include/bootsource.h
index 390d6f5d2b3a..9ca4fcc525b5 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -26,9 +26,45 @@ enum bootsource {
 
 enum bootsource bootsource_get(void);
 int bootsource_get_instance(void);
-void bootsource_set_raw(enum bootsource src, int instance);
-void bootsource_set_raw_instance(int instance);
 void bootsource_set_alias_name(const char *name);
 char *bootsource_get_alias_name(void);
+const char *bootsource_get_alias_stem(enum bootsource bs);
+int bootsource_of_alias_xlate(enum bootsource bs, int instance);
+
+/**
+ * bootsource_set - set bootsource with optional DT mapping table
+ * @bs:	bootrom reported bootsource
+ * @instance: bootrom reported instance
+ *
+ * Returns computed bootsource instace
+ *
+ * Normal bootsource_set_raw_instance() expects numbering used by
+ * bootrom for instance to align with DT aliases, e.g.
+ * $bootsource = "mmc" && $bootsource_instance = 1 -> /aliases/mmc1
+ * bootsource_set() will instead consult
+ * /aliases/barebox,bootsource-mmc1 which may point at a different
+ * device than mmc1. In absence of appropriate barebox,bootsource-*
+ * alias, instance is set without translation.
+ */
+int bootsource_set(enum bootsource bs, int instance);
+
+/**
+ * bootsource_set_raw - set bootsource as-is
+ * @bs:	bootsource to report
+ * @instance: bootsource instance to report
+ *
+ * This sets bootsource and bootsource_instance directly.
+ * Preferably, use bootsource_set in new code.
+ */
+void bootsource_set_raw(enum bootsource src, int instance);
+
+/**
+ * bootsource_set_raw_instance - set bootsource_instance as-is
+ * @bs:	bootrom reported bootsource
+ * @instance: bootrom reported instance
+ *
+ * This directly sets bootsource_instance without changing bootsource.
+ */
+void bootsource_set_raw_instance(int instance);
 
 #endif	/* __BOOTSOURCE_H__ */
-- 
2.30.2



