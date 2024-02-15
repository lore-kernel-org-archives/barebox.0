Delivery-date: Thu, 15 Feb 2024 11:36:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raZ6n-007JWJ-2U
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 11:36:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raZ6n-0008Gb-4a
	for lore@pengutronix.de; Thu, 15 Feb 2024 11:36:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0VrRXNsuijAunntXIJZbN1eIXxfx/1TUPuHd5CCOViA=; b=FRLaaAlDuP03UhsR/g+aCJbS/h
	hNU9EHTp8HdLoSEe9aFX3MkoP2UEc6v7JQ6za8cXnzk+/ZmDTJB9V9dhtTV9Kqd0aR48OQbeeEkUt
	n1SkZJ0chL+ob2YbMnefEbOREi0f9Hzv/sYQmzZG6cZdSxyARSIGuX3yVtuIuLzy8IYKxJuJMnXrK
	g4+k7GNNfOQYHJUN5zHAKfqxs1ZucJuz5mAknILLlYonhu21R8MtJ1xkcj2WylsWZn34YyvEESB/l
	wivODmkdJtzG1l9S90BdOReMjwS2woZ8pi3F9LqckXixwuZ1/fMjCYszgVJzpTKYHe04zAR54B7i6
	CvcofFjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ6K-0000000FnzW-3rO4;
	Thu, 15 Feb 2024 10:36:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ6H-0000000FnxU-2KI2
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 10:36:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ60-00084y-Bz; Thu, 15 Feb 2024 11:36:00 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ5y-000rjf-9G; Thu, 15 Feb 2024 11:35:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raZ5y-00BmHC-0b;
	Thu, 15 Feb 2024 11:35:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 11:33:52 +0100
Message-Id: <20240215103353.2799723-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215103353.2799723-1-a.fatoum@pengutronix.de>
References: <20240215103353.2799723-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_023617_613330_478A283E 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] drivers: drop simple bus remove in favor of common implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that driver core will call dev->driver->remove if dev->bus->remove
is NULL, we cann remove all bus_type::remove functions that do the same.

This has the welcome side effect that devices that device_remove will
return false when called on a device the neither has a bus remove or
driver remove function and thus we can skip tracing these calls when
CONFIG_DEBUG_PROBES is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/platform.c | 7 -------
 drivers/bus/acpi.c      | 7 -------
 drivers/i2c/i2c.c       | 7 -------
 drivers/spi/spi.c       | 7 -------
 drivers/tee/tee_core.c  | 7 -------
 5 files changed, 35 deletions(-)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index f9954785608b..ac7c473c8c7b 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -22,12 +22,6 @@ static int platform_probe(struct device *dev)
 	return dev->driver->probe(dev);
 }
 
-static void platform_remove(struct device *dev)
-{
-	if (dev->driver->remove)
-		dev->driver->remove(dev);
-}
-
 int platform_driver_register(struct driver *drv)
 {
 	drv->bus = &platform_bus;
@@ -46,7 +40,6 @@ struct bus_type platform_bus = {
 	.name = "platform",
 	.match = device_match,
 	.probe = platform_probe,
-	.remove = platform_remove,
 };
 
 static int platform_init(void)
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index ac034cce4569..cf85e886d0a2 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -210,17 +210,10 @@ static int acpi_bus_probe(struct device *dev)
 	return dev->driver->probe(dev);
 }
 
-static void acpi_bus_remove(struct device *dev)
-{
-	if (dev->driver->remove)
-		dev->driver->remove(dev);
-}
-
 struct bus_type acpi_bus = {
 	.name = "acpi",
 	.match = acpi_bus_match,
 	.probe = acpi_bus_probe,
-	.remove = acpi_bus_remove,
 };
 
 static int efi_acpi_probe(void)
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 70d1b810c1c3..d518bf2c9dcf 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -748,17 +748,10 @@ static int i2c_probe(struct device *dev)
 	return dev->driver->probe(dev);
 }
 
-static void i2c_remove(struct device *dev)
-{
-	if (dev->driver->remove)
-		dev->driver->remove(dev);
-}
-
 struct bus_type i2c_bus = {
 	.name = "i2c",
 	.match = device_match_of_modalias,
 	.probe = i2c_probe,
-	.remove = i2c_remove,
 };
 
 static int i2c_bus_init(void)
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 83f2b0ee1b2e..fd9c8da17100 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -417,17 +417,10 @@ static int spi_probe(struct device *dev)
 	return dev->driver->probe(dev);
 }
 
-static void spi_remove(struct device *dev)
-{
-	if (dev->driver->remove)
-		dev->driver->remove(dev);
-}
-
 struct bus_type spi_bus = {
 	.name = "spi",
 	.match = device_match_of_modalias,
 	.probe = spi_probe,
-	.remove = spi_remove,
 };
 
 static int spi_bus_init(void)
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 0bf645a310eb..36c6210b8b1d 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -775,17 +775,10 @@ static int tee_bus_probe(struct device *dev)
 	return dev->driver->probe(dev);
 }
 
-static void tee_bus_remove(struct device *dev)
-{
-	if (dev->driver->remove)
-		dev->driver->remove(dev);
-}
-
 struct bus_type tee_bus_type = {
 	.name		= "tee",
 	.match		= tee_client_device_match,
 	.probe		= tee_bus_probe,
-	.remove		= tee_bus_remove,
 };
 EXPORT_SYMBOL_GPL(tee_bus_type);
 
-- 
2.39.2



