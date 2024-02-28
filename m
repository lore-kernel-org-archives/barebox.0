Delivery-date: Wed, 28 Feb 2024 17:06:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRU-00DfPb-2R
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 17:06:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRU-0008Qe-4A
	for lore@pengutronix.de; Wed, 28 Feb 2024 17:06:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TH8pjJjxcv5sZpGKiIF8COPH01dOZz/EaQ3DO+eOzv4=; b=SHweE87Xj7CSNbouDKSypfQB57
	V0SXniXE6Gy80FD32f4v7px5zG9yRBLZ8UvhhaXADPakZ59YsCZu0JUG91j5n9bPK8DVOhqhXtezj
	upkUSYNqoFldtZuqofLY/mRiVw71xrpvwOJGHUYb7Y03xUqZb50ucN9i5WaYjlG8fLFpZf0+xHtqx
	bkoaz1s8R9iS1ZHTaliDpKg82IQsoszDy3uIoL2mVDeqiWEn+yKUgLDOnayYlfN2sIqp7Nhuj1DDY
	jiFNTM0ScxL4XtIhRmROHim8QdX83XJyPMt+KEYxi9yFndFsE7DoQWiKNlqHMVs+ZWR+B/YDM03G3
	rjcEmWBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMQz-0000000A26c-11O9;
	Wed, 28 Feb 2024 16:05:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMQu-0000000A248-0oqh
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 16:05:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQt-000834-0t; Wed, 28 Feb 2024 17:05:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-003QfV-KR; Wed, 28 Feb 2024 17:05:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-006fql-06;
	Wed, 28 Feb 2024 17:05:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 17:05:15 +0100
Message-Id: <20240228160518.1589193-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
References: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_080524_311623_4F9B0DE7 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 3/6] treewide: remove bus probe functions that just call driver probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that the driver core will call the driver probe function if there is
no bus probe function, remove all bus probe functions that do what the
core can do instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/bus/acpi.c     | 6 ------
 drivers/i2c/i2c.c      | 6 ------
 drivers/spi/spi.c      | 6 ------
 drivers/tee/tee_core.c | 6 ------
 4 files changed, 24 deletions(-)

diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index cf85e886d0a2..0d11b604ae5d 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -205,15 +205,9 @@ static int acpi_bus_match(struct device *dev, struct driver *drv)
 	return acpi_sigcmp(acpidrv->signature, sdt->signature);
 }
 
-static int acpi_bus_probe(struct device *dev)
-{
-	return dev->driver->probe(dev);
-}
-
 struct bus_type acpi_bus = {
 	.name = "acpi",
 	.match = acpi_bus_match,
-	.probe = acpi_bus_probe,
 };
 
 static int efi_acpi_probe(void)
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 997fc8d81725..547151904517 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -743,15 +743,9 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 }
 EXPORT_SYMBOL(i2c_add_numbered_adapter);
 
-static int i2c_probe(struct device *dev)
-{
-	return dev->driver->probe(dev);
-}
-
 struct bus_type i2c_bus = {
 	.name = "i2c",
 	.match = device_match_of_modalias,
-	.probe = i2c_probe,
 };
 
 static int i2c_bus_init(void)
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index fd9c8da17100..c627d88954a7 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -412,15 +412,9 @@ int spi_write_then_read(struct spi_device *spi,
 }
 EXPORT_SYMBOL(spi_write_then_read);
 
-static int spi_probe(struct device *dev)
-{
-	return dev->driver->probe(dev);
-}
-
 struct bus_type spi_bus = {
 	.name = "spi",
 	.match = device_match_of_modalias,
-	.probe = spi_probe,
 };
 
 static int spi_bus_init(void)
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 36c6210b8b1d..45fa9b567072 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -770,15 +770,9 @@ static int tee_client_device_match(struct device *dev,
 	return -1;
 }
 
-static int tee_bus_probe(struct device *dev)
-{
-	return dev->driver->probe(dev);
-}
-
 struct bus_type tee_bus_type = {
 	.name		= "tee",
 	.match		= tee_client_device_match,
-	.probe		= tee_bus_probe,
 };
 EXPORT_SYMBOL_GPL(tee_bus_type);
 
-- 
2.39.2



