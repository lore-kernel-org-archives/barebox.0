Delivery-date: Tue, 06 May 2025 08:38:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwe-002i3z-3D
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwc-0001wn-M3
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pPQsSm6o8MrUQhLJhMxwO2OLmDC1rbdQjs+ptncKvWk=; b=HC6NzEvOSHVx2fpI7BeNNN/x0z
	P7NIf//SsDlwBiS23Q90WEiVPmli/cMGej0wLMaJyMNSaHemmgRQdjiS5j4w8h0eDXIL4tq+N0SmE
	M1AOhTxjN9eA8XXdgapSShtWNsIsws/g1ae0j8GSZMsNH+GccUe9aoy4baTCog/cfRumytPnRoz2y
	OnlI6UwAS6RhT5faIFGa56EH10TSz9E3EL58pxAZlr4RFE3ikapXB4quHSnr9Bb/IChQApBZYzwc9
	bcHxoE8WVKWso/gsKND2Cc8ZPpCY7kjSQSwEnjE5Go0qDaDzsP6gcSAW4ClhtLOD+W9aHKMqGqMbr
	bIZuQDuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBwA-0000000AjRk-4BxX;
	Tue, 06 May 2025 06:37:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBtA-0000000AiKT-3lc9
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:34:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-0000Tj-KK; Tue, 06 May 2025 08:34:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-001LpU-1A;
	Tue, 06 May 2025 08:34:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-00D9CO-2M;
	Tue, 06 May 2025 08:34:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:34:45 +0200
Message-Id: <20250506063446.3133582-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
References: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233449_040824_FBB8DE76 
X-CRM114-Status: GOOD (  12.80  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] drivers: maintain const when converting from struct driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for making the struct driver parameter to the match
callbacks const, introduce container_of_const and make use of it instead
of normal container in upcasting macros.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/acpi.h               |  5 +----
 include/efi/efi-device.h     |  5 +----
 include/linux/container_of.h | 14 ++++++++++++++
 include/linux/virtio.h       | 10 ++--------
 4 files changed, 18 insertions(+), 16 deletions(-)

diff --git a/include/acpi.h b/include/acpi.h
index fc0da30610a6..fa94d972e3fe 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -125,10 +125,7 @@ struct acpi_driver {
 
 extern struct bus_type acpi_bus;
 
-static inline struct acpi_driver *to_acpi_driver(struct driver *drv)
-{
-	return container_of(drv, struct acpi_driver, driver);
-}
+#define to_acpi_driver(drv) container_of_const((drv), struct acpi_driver, driver)
 
 #define device_acpi_driver(drv)	\
 	register_efi_driver_macro(device, acpi, drv)
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index 5d2110356fd4..a8fc99a0e12b 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -33,10 +33,7 @@ static inline struct efi_device *to_efi_device(struct device *dev)
 	return container_of(dev, struct efi_device, dev);
 }
 
-static inline struct efi_driver *to_efi_driver(struct driver *drv)
-{
-	return container_of(drv, struct efi_driver, driver);
-}
+#define to_efi_driver(drv) container_of_const((drv), struct efi_driver, driver)
 
 static inline int efi_driver_register(struct efi_driver *efidrv)
 {
diff --git a/include/linux/container_of.h b/include/linux/container_of.h
index 2f4944b791b8..8669ef0154d9 100644
--- a/include/linux/container_of.h
+++ b/include/linux/container_of.h
@@ -21,6 +21,20 @@
 		      "pointer type mismatch in container_of()");	\
 	((type *)(__mptr - offsetof(type, member))); })
 
+
+/**
+ * container_of_const - cast a member of a structure out to the containing
+ *			structure and preserve the const-ness of the pointer
+ * @ptr:		the pointer to the member
+ * @type:		the type of the container struct this is embedded in.
+ * @member:		the name of the member within the struct.
+ */
+#define container_of_const(ptr, type, member)				\
+	_Generic(ptr,							\
+		const typeof(*(ptr)) *: ((const type *)container_of(ptr, type, member)),\
+		default: ((type *)container_of(ptr, type, member))	\
+	)
+
 /**
  * container_of_safe - cast a member of a structure out to the containing structure
  * @ptr:	the pointer to the member.
diff --git a/include/linux/virtio.h b/include/linux/virtio.h
index 3d4c88336055..eb4293003294 100644
--- a/include/linux/virtio.h
+++ b/include/linux/virtio.h
@@ -43,10 +43,7 @@ struct virtio_device {
 	u32 status_param;
 };
 
-static inline struct virtio_device *dev_to_virtio(struct device *_dev)
-{
-	return container_of(_dev, struct virtio_device, dev);
-}
+#define dev_to_virtio(_dev)	container_of_const(_dev, struct virtio_device, dev)
 
 void virtio_add_status(struct virtio_device *dev, unsigned int status);
 int register_virtio_device(struct virtio_device *dev);
@@ -96,10 +93,7 @@ struct virtio_driver {
 	void (*config_changed)(struct virtio_device *dev);
 };
 
-static inline struct virtio_driver *drv_to_virtio(struct driver *drv)
-{
-	return container_of(drv, struct virtio_driver, driver);
-}
+#define drv_to_virtio(__drv)	container_of_const(__drv, struct virtio_driver, driver)
 
 int virtio_driver_register(struct virtio_driver *drv);
 
-- 
2.39.5



