Delivery-date: Thu, 13 Jun 2024 15:16:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkJF-005O2P-1c
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:16:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkJE-0006qN-ML
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:16:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/syOu2Z8p5Lo7SmfP0Qpy1k0m+6Z9gO2CVGiI4+NkQg=; b=EqQaATlByhJ17ZJKKAnZ3rJKQ1
	Ruvb9Cu+TmSJN4+mb73tqOTNj//gXqAtgiHRZCtLjte8utBlV4wolpAREz4q5YExVJJCTwQr3Busy
	5DUK7mwIHBGuYwSv4HEhuJRrDF1+kodxFHFWUendb1EVhJcCOkwCBLdgKXYBhjQmRkD0tGmMNCBQ7
	CmGrVnTKhsroXFewsyMi6szlWCjVzMvLxZtECTOBIqnG9MLyzn1ArHDN6xbGf6uDk4XZqdctP2kXV
	vkcJl+Rou4xu/MXEgLLkIDbFl1a9ZucVPWZFs0k9+0ikO8ic8UQ3lBwOy1WT0wjPRXh2WhMeHtFNM
	/BxQdbQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkIk-0000000GerD-13zu;
	Thu, 13 Jun 2024 13:15:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkIg-0000000GeoN-0pJy
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:15:35 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkIe-0006cd-UW
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:15:32 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:15:31 +0200
Message-Id: <20240613131531.364894-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613131531.364894-1-m.felsch@pengutronix.de>
References: <20240613131531.364894-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_061534_309736_03C7F409 
X-CRM114-Status: GOOD (  13.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 5/5] eeprom: at24: fix device name handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The at24 driver does not need to handle the ids by its own since the
nvmem_core does the handling too. This lead into issues where the eeprom
device is named: eeprom00.

Fix the alias handling too since the devie would never be named as
described in the alias, since we never told the nvmem-core to not add an
additional id.

Furthermore the devname can be static since the name gets later
allocated by the dev_set_name().

Fix these three issues by just using the alias or the static "eeprom"
sting and supply the correct NVMEM_DEVID_NONE or NVMEM_DEVID_AUTO to the
core.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- no changes

 drivers/eeprom/at24.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 23cb0e1fbbc9..a5079279af35 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -371,7 +371,7 @@ static int at24_probe(struct device *dev)
 	struct at24_data *at24;
 	int err;
 	unsigned i, num_addresses;
-	char *devname;
+	const char *devname;
 	const char *alias;
 
 	if (dev->platform_data) {
@@ -425,16 +425,10 @@ static int at24_probe(struct device *dev)
 	at24->num_addresses = num_addresses;
 
 	alias = of_alias_get(dev->of_node);
-	if (alias) {
-		devname = xstrdup(alias);
-	} else {
-		err = cdev_find_free_index("eeprom");
-		if (err < 0) {
-			dev_err(&client->dev, "no index found to name device\n");
-			goto err_device_name;
-		}
-		devname = xasprintf("eeprom%d", err);
-	}
+	if (alias)
+		devname = alias;
+	else
+		devname = "eeprom";
 
 	writable = !(chip.flags & AT24_FLAG_READONLY);
 
@@ -489,6 +483,7 @@ static int at24_probe(struct device *dev)
 	at24->nvmem_config.stride = 1;
 	at24->nvmem_config.word_size = 1;
 	at24->nvmem_config.size = chip.byte_len;
+	at24->nvmem_config.id = alias ? NVMEM_DEVID_NONE : NVMEM_DEVID_AUTO;
 
 	at24->nvmem = nvmem_register(&at24->nvmem_config);
 	err = PTR_ERR_OR_ZERO(at24->nvmem);
@@ -505,7 +500,6 @@ static int at24_probe(struct device *dev)
 	if (gpio_is_valid(at24->wp_gpio))
 		gpio_free(at24->wp_gpio);
 	kfree(at24->writebuf);
-err_device_name:
 	kfree(at24);
 err_out:
 	dev_dbg(&client->dev, "probe error %d\n", err);
-- 
2.39.2



