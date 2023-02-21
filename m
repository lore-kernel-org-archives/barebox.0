Delivery-date: Tue, 21 Feb 2023 09:07:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNg0-00Deaf-HP
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNfy-0006qL-B4
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P6GULCH+hrqFbdX9NqCRVZQzS0KSIl2Fj6FZfldphLQ=; b=HD/EAI4PZDQyiHhbrBPN032aPa
	JDB36f88JZw/QmpX/LeJY6/zSCIrfR/KBhRUnEn5IVjFPXWf+8ZQhI2VvdviA/pfjcTP9BivGtLas
	aH+8QyNgM95Qzjdvqg5gZF0Q1+4ltPfppT4087suUYgnhRb2C8YW7g9v4l3iVAWAQa6GjGWV18+4n
	PQLL8a7e9AzHquiwhAjP0upxIzoGP9QqpFEDaK1c/3NGVK7nsK4h4qWUqIZPqu9sdBbfn7rA0pHKK
	2W9dH4/sP9BJP91tZPG2gplnUhU67hobGpt5sPbB9I4Rx08jNUNDtQ/nv/+uE2b1D3SgmF8ifp9nJ
	Rq6z5u+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNed-006yP5-Tx; Tue, 21 Feb 2023 08:05:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeV-006yIt-J9
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeS-00061t-HP; Tue, 21 Feb 2023 09:05:28 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeQ-006RjM-Lz; Tue, 21 Feb 2023 09:05:27 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YH3-Ol; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Feb 2023 09:05:13 +0100
Message-Id: <20230221080524.607241-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000531_673078_058CB31C 
X-CRM114-Status: GOOD (  11.91  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 01/12] usb: dwc3: populate parent of xHCI dev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reparent xHCIs instantiated from DWC3 controllers to their parents
instead of them being direct children of the bus. Apart from improving
devinfo/drvinfo output, this should introduce no functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/resource.c |  6 ++++--
 drivers/usb/dwc3/host.c |  8 ++++----
 include/driver.h        | 12 ++++++++++--
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 3725c79eb9d4..0d6f200a9d51 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -57,13 +57,15 @@ int device_add_resource(struct device *dev, const char *resname,
 	return device_add_resources(dev, &res, 1);
 }
 
-struct device *add_generic_device(const char* devname, int id, const char *resname,
+struct device *add_child_device(struct device *parent,
+		const char* devname, int id, const char *resname,
 		resource_size_t start, resource_size_t size, unsigned int flags,
 		void *pdata)
 {
 	struct device *dev;
 
 	dev = device_alloc(devname, id);
+	dev->parent = parent;
 	dev->platform_data = pdata;
 	device_add_resource(dev, resname, start, size, flags);
 
@@ -71,7 +73,7 @@ struct device *add_generic_device(const char* devname, int id, const char *resna
 
 	return dev;
 }
-EXPORT_SYMBOL(add_generic_device);
+EXPORT_SYMBOL(add_child_device);
 
 struct device *add_generic_device_res(const char* devname, int id,
 		struct resource *res, int nb, void *pdata)
diff --git a/drivers/usb/dwc3/host.c b/drivers/usb/dwc3/host.c
index a3a27db6fb64..09ed01fc569e 100644
--- a/drivers/usb/dwc3/host.c
+++ b/drivers/usb/dwc3/host.c
@@ -24,13 +24,13 @@ int dwc3_host_init(struct dwc3 *dwc)
 		return PTR_ERR(io);
 	}
 
-	dwc->xhci = add_generic_device("xHCI", DEVICE_ID_DYNAMIC, NULL,
-				       io->start, resource_size(io),
-				       IORESOURCE_MEM, NULL);
+	dwc->xhci = add_child_device(dev, "xHCI", DEVICE_ID_DYNAMIC, NULL,
+				     io->start, resource_size(io),
+				     IORESOURCE_MEM, NULL);
 	if (!dwc->xhci) {
 		dev_err(dev, "Failed to register xHCI device\n");
 		return -ENODEV;
 	}
-	
+
 	return 0;
 }
diff --git a/include/driver.h b/include/driver.h
index f53668711b81..7e25c060280b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -269,13 +269,21 @@ int device_add_resource(struct device *dev, const char *resname,
 
 int device_add_data(struct device *dev, const void *data, size_t size);
 
+struct device *add_child_device(struct device *parent,
+				const char* devname, int id, const char *resname,
+				resource_size_t start, resource_size_t size, unsigned int flags,
+				void *pdata);
+
 /*
  * register a generic device
  * with only one resource
  */
-struct device *add_generic_device(const char* devname, int id, const char *resname,
+static inline struct device *add_generic_device(const char* devname, int id, const char *resname,
 		resource_size_t start, resource_size_t size, unsigned int flags,
-		void *pdata);
+		void *pdata)
+{
+	return add_child_device(NULL, devname, id, resname, start, size, flags, pdata);
+}
 
 /*
  * register a generic device
-- 
2.30.2



