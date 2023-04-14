Delivery-date: Fri, 14 Apr 2023 16:54:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKog-003OZb-IV
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 16:54:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKog-00028S-6L
	for lore@pengutronix.de; Fri, 14 Apr 2023 16:54:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s2f3jG7803Ca3azJzoViXjyVA5ey44/WtM1pNGUVArU=; b=RvEMkRJOGA+eUBcn9sDr19SZyt
	4TAGxzwOIdQIjhE3RewzPN1ZcakoHWRG9Fe5VaNu7h5Qg+11c1l/PKwHJBLAo69lKomSePc/gLmf0
	fMeFyZ5ze4ni8Zxd7+gNh2wM95jo6NtAPDKomHScEjI+Cy2Ni8vLYJ7Z2T6mTm+4VUBVvzhW72q5/
	TywqwVLGQxyqhtE2gCh+tRJsIglheylHrLe3coXK+RJKlwqMzqWJZCEJWI76ldC5rOeJMJk9+ENSz
	wMfutxcr6JpJIvLR63NoSamJ19sijDxNK0Pc1nRdBN6eJ9G9h4dIReuD9N9uDuZjkScAH0Sm1hfI1
	lxyyFitQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKna-009sUW-1x;
	Fri, 14 Apr 2023 14:53:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnS-009sQw-1L
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 14:53:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnQ-0001qy-M4; Fri, 14 Apr 2023 16:53:04 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnP-00BDor-Vb; Fri, 14 Apr 2023 16:53:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnO-00FM02-Ql; Fri, 14 Apr 2023 16:53:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 16:52:55 +0200
Message-Id: <20230414145259.3644816-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
References: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_075306_574368_B2541053 
X-CRM114-Status: GOOD (  12.05  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/5] usb: dwc3: populate parent of xHCI dev
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
index e377c4068ad2..281d016a86aa 100644
--- a/drivers/usb/dwc3/host.c
+++ b/drivers/usb/dwc3/host.c
@@ -24,14 +24,14 @@ int dwc3_host_init(struct dwc3 *dwc)
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
index 4b367e31fd78..033b12748c12 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -283,13 +283,21 @@ int device_add_resource(struct device *dev, const char *resname,
 
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
2.39.2



