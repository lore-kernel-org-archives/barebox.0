Delivery-date: Mon, 13 Dec 2021 22:13:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsdr-005gIO-9u
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:13:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsdp-0004Vq-IQ
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:13:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TF9Kj3YPX6KZ0l49U/aiXqbV1LJOuCjkvdRQtOfo9w=; b=2NQ9SkAWGerq15
	oqEhaTA2EN8dP0TmGL/8RQYqlg3n+ga9Asf9oudugxo2a0GL05abAZMWEGE5fjrxBhdqoHMbBA3/y
	uMqRdtcpO0Dkp52TszK8F/UIwTN5Z/hpT3CkhUQBlnYbHyghErGp+Zm4t4gluE3Mt7nLY/XpQfAyc
	Y3+swodz/fZVXK9E8nGQzTKdpWImKUh8jK8L75TNGwpvz0A9Gn5gEhynCWJexveA+gUniToyxUOBY
	5MkFaOSXf4DxfJt//W4p1RqfOO60ciNMYRqERmw2cgebJ4qjOAC7zx/QBGQMwGOc1Ixz7j+b4iXw/
	efbSFhGnqe2ZduQkw1wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwscG-00BQaP-PU; Mon, 13 Dec 2021 21:12:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZU-00BOuj-CL
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZL-0002TC-0N; Mon, 13 Dec 2021 22:09:11 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpg-EQ; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:09:04 +0100
Message-Id: <20211213210905.3399551-25-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130920_510118_53A29A53 
X-CRM114-Status: GOOD (  15.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 24/25] efi: add efi_device hook to be called before an image
 is started
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

boot_services::open_protocol supports opening protocols exclusively.
A protocol that is opened exclusively can not be used anymore by
an application that is called via boot_services::start_image.

We want to open the SNP protocol exclusively in the next step. That
would mean a chainloaded barebox could no longer use the SNP protocol
because it's exclusively opened by the current barebox already.
To work around this a efi_drv::dev_pause and efi_drv::dev_continue is
introduced. The former is called before an application is started and
the latter right after an application has exited. This will be used
by the SNP network driver to enter/leave exclusive mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/efi/efi-image.c   |  4 ++++
 drivers/efi/efi-device.c | 28 ++++++++++++++++++++++++++++
 include/efi/efi-device.h |  5 +++++
 3 files changed, 37 insertions(+)

diff --git a/common/efi/efi-image.c b/common/efi/efi-image.c
index bd1c58438e..7807d0653e 100644
--- a/common/efi/efi-image.c
+++ b/common/efi/efi-image.c
@@ -149,10 +149,14 @@ static int efi_execute_image(const char *file)
 		shutdown_barebox();
 	}
 
+	efi_pause_devices();
+
 	efiret = BS->start_image(handle, NULL, NULL);
 	if (EFI_ERROR(efiret))
 		pr_err("failed to StartImage: %s\n", efi_strerror(efiret));
 
+	efi_continue_devices();
+
 	if (!is_driver)
 		BS->unload_image(handle);
 
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 6c86a8ab1a..f3f5452b98 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -466,6 +466,34 @@ static int efi_init_devices(void)
 }
 core_initcall(efi_init_devices);
 
+void efi_pause_devices(void)
+{
+	struct device_d *dev;
+
+	bus_for_each_device(&efi_bus, dev) {
+		struct driver_d *drv = dev->driver;
+		struct efi_device *efidev = to_efi_device(dev);
+		struct efi_driver *efidrv = to_efi_driver(drv);
+
+		if (efidrv->dev_pause)
+			efidrv->dev_pause(efidev);
+	}
+}
+
+void efi_continue_devices(void)
+{
+	struct device_d *dev;
+
+	bus_for_each_device(&efi_bus, dev) {
+		struct driver_d *drv = dev->driver;
+		struct efi_device *efidev = to_efi_device(dev);
+		struct efi_driver *efidrv = to_efi_driver(drv);
+
+		if (efidrv->dev_continue)
+			efidrv->dev_continue(efidev);
+	}
+}
+
 static void efi_devpath(efi_handle_t handle)
 {
 	efi_status_t efiret;
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index 5ec59a8a2d..729fbc8103 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -15,6 +15,8 @@ struct efi_driver {
 	struct driver_d driver;
 	int (*probe)(struct efi_device *efidev);
 	void (*remove)(struct efi_device *efidev);
+	int (*dev_pause)(struct efi_device *efidev);
+	int (*dev_continue)(struct efi_device *efidev);
 	efi_guid_t guid;
 };
 
@@ -45,6 +47,9 @@ int efi_connect_all(void);
 void efi_register_devices(void);
 struct efi_device *efi_get_bootsource(void);
 
+void efi_pause_devices(void);
+void efi_continue_devices(void);
+
 static inline bool efi_device_has_guid(struct efi_device *efidev, efi_guid_t guid)
 {
 	int i;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

