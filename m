Delivery-date: Mon, 11 Aug 2025 14:30:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfI-009KiK-0V
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRez-00060x-4H
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZiFTuQDzxh+vCAJnmKmrw6OJ/IBkHUsd8LoZxzcISDU=; b=RFc5OFbVdSTmuHIsvvBMfTAp24
	aZK9sWT4xWBQdLK20inIk3q+1GqlrUPoIYF/6IrQunZquWPCABobhTi+2yNv6WPe84Rz4msZ/lNst
	Jeo0WbbhFvyzCeUSuIiaEIvrLgDcTzFpy1oV8TgzFq0E7x1fkUu0gEQa3Q+G2o1rcNoY/lsj3fFeb
	Jd4wfPHL6LL7KTeCx8i05RbmI56RWMb47uGGl06MX0UcSDM8MS9BpFW/mU793j3oMpErGd2PVNRJ4
	6/i/UlDZ4gkzWL4ON8ofm/eZ7p8mLfDyLvTDUspd0cqs9Pb0S56CTEQb8LRkJVTSgv1Q+Hu7jdj/8
	0JnIZNTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRds-00000007dql-43tr;
	Mon, 11 Aug 2025 12:28:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdf-00000007dW4-16ZX
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdd-0004WP-WD; Mon, 11 Aug 2025 14:28:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:54 +0200
Message-Id: <20250811122824.1667791-15-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_454220_B1A67F60 
X-CRM114-Status: GOOD (  15.98  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/44] param: make bobject_add_param_fixed variadic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upcoming structured I/O support will make heavy use of
bobject_add_param_fixed, so prepare for that by making it receive a
format string and variadic arguments.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/animeo_ip/init.c            |  4 +--
 arch/arm/boards/at91sam9m10ihd/hw_version.c | 10 ++-----
 arch/arm/boards/at91sam9x5ek/hw_version.c   | 10 ++-----
 common/console.c                            | 11 ++------
 drivers/efi/efi-device.c                    |  4 +--
 drivers/usb/core/usb.c                      |  6 ++--
 fs/fs.c                                     |  3 +-
 include/param.h                             | 25 +++++++++++++----
 lib/parameter.c                             | 31 +++++++++++++++++----
 9 files changed, 62 insertions(+), 42 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index a0a2007d521d..e46ede939aba 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -82,8 +82,8 @@ static void animeo_ip_detect_version(void)
 		version = "IO";
 	}
 
-	dev_add_param_fixed(dev, "model", model);
-	dev_add_param_fixed(dev, "version", version);
+	dev_add_param_fixed(dev, "model", "%s", model);
+	dev_add_param_fixed(dev, "version", "%s", version);
 }
 
 static struct atmel_nand_data nand_pdata = {
diff --git a/arch/arm/boards/at91sam9m10ihd/hw_version.c b/arch/arm/boards/at91sam9m10ihd/hw_version.c
index 9ae4ccb77c75..b7b231fd0a09 100644
--- a/arch/arm/boards/at91sam9m10ihd/hw_version.c
+++ b/arch/arm/boards/at91sam9m10ihd/hw_version.c
@@ -134,7 +134,6 @@ static void at91sam9m10ihd_devices_detect_one(const char *name)
 	struct board_info* binfo;
 	struct vendor_info* vinfo;
 	struct device *dev = NULL;
-	char str[16];
 	u8 vendor_id = 0;
 
 	if (at91sam9m10ihd_read_w1(name, &info))
@@ -180,14 +179,11 @@ static void at91sam9m10ihd_devices_detect_one(const char *name)
 
 	dev_add_param_fixed(dev, "vendor", info.vendor_name);
 	dev_add_param_fixed(dev, "board", info.board_name);
-	sprintf(str, "%.2s", info.vendor_country);
-	dev_add_param_fixed(dev, "country", str);
+	dev_add_param_fixed(dev, "country", "%.2s", info.vendor_country);
 	dev_add_param_uint32_fixed(dev, "year", info.year, "%u");
 	dev_add_param_uint32_fixed(dev, "week", info.week, "%u");
-	sprintf(str, "%c", info.revision_code);
-	dev_add_param_fixed(dev, "revision_code", str);
-	sprintf(str, "%c", info.revision_id);
-	dev_add_param_fixed(dev, "revision_id", str);
+	dev_add_param_fixed(dev, "revision_code", "%c", info.revision_code);
+	dev_add_param_fixed(dev, "revision_id", "%c", info.revision_id);
 }
 
 void at91sam9m10ihd_devices_detect_hw(void)
diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 9c6bd6866098..55ce409dfdad 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -150,7 +150,6 @@ static void at91sam9x5ek_devices_detect_one(const char *name)
 	struct board_info* binfo;
 	struct vendor_info* vinfo;
 	struct device *dev = NULL;
-	char str[16];
 	u8 vendor_id = 0;
 
 	if (at91sam9x5ek_read_w1(name, &info))
@@ -206,14 +205,11 @@ static void at91sam9x5ek_devices_detect_one(const char *name)
 
 	dev_add_param_fixed(dev, "vendor", info.vendor_name);
 	dev_add_param_fixed(dev, "board", info.board_name);
-	sprintf(str, "%.2s", info.vendor_country);
-	dev_add_param_fixed(dev, "country", str);
+	dev_add_param_fixed(dev, "country", "%.2s", info.vendor_country);
 	dev_add_param_uint32_fixed(dev, "year", info.year, "%u");
 	dev_add_param_uint32_fixed(dev, "week", info.week, "%u");
-	sprintf(str, "%c", info.revision_code);
-	dev_add_param_fixed(dev, "revision_code", str);
-	sprintf(str, "%c", info.revision_id);
-	dev_add_param_fixed(dev, "revision_id", str);
+	dev_add_param_fixed(dev, "revision_code", "%c", info.revision_code);
+	dev_add_param_fixed(dev, "revision_id", "%c", info.revision_id);
 }
 
 #define NODE_NAME_LEN  128
diff --git a/common/console.c b/common/console.c
index 393183a72514..dc552e4c5dac 100644
--- a/common/console.c
+++ b/common/console.c
@@ -222,17 +222,12 @@ static void console_init_early(void)
 
 static void console_add_earlycon_param(struct console_device *cdev, unsigned baudrate)
 {
-	char *str;
-
 	if (!cdev->linux_earlycon_name)
 		return;
 
-	str = basprintf("earlycon=%s,0x%lx", cdev->linux_earlycon_name,
-			(ulong)cdev->phys_base);
-
-	dev_add_param_fixed(&cdev->class_dev, "linux.bootargs.earlycon", str);
-
-	free(str);
+	dev_add_param_fixed(&cdev->class_dev, "linux.bootargs.earlycon",
+			    "earlycon=%s,0x%lx", cdev->linux_earlycon_name,
+			    (ulong)cdev->phys_base);
 }
 
 void console_set_stdoutpath(struct console_device *cdev, unsigned baudrate)
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 0e6f75659f62..15884646dc18 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -197,7 +197,7 @@ static int efi_register_device(struct efi_device *efidev)
 
 	dev_path_str = device_path_to_str(efidev->devpath);
 	if (dev_path_str) {
-		dev_add_param_fixed(&efidev->dev, "devpath", dev_path_str);
+		dev_add_param_fixed(&efidev->dev, "devpath", "%s", dev_path_str);
 		free(dev_path_str);
 	}
 
@@ -421,7 +421,7 @@ static int efi_init_devices(void)
 
 	bus_register(&efi_bus);
 
-	dev_add_param_fixed(&efi_bus.dev, "fw_vendor", fw_vendor);
+	dev_add_param_fixed(&efi_bus.dev, "fw_vendor", "%s", fw_vendor);
 	free(fw_vendor);
 
 	dev_add_param_uint32_fixed(&efi_bus.dev, "major", sys_major, "%u");
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ec487107584c..d144e9840916 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -558,9 +558,9 @@ int usb_new_device(struct usb_device *dev)
 			dev->descriptor->iProduct, "%u");
 	dev_add_param_uint32_fixed(&dev->dev, "iSerialNumber",
 			dev->descriptor->iSerialNumber, "%u");
-	dev_add_param_fixed(&dev->dev, "Manufacturer", dev->mf);
-	dev_add_param_fixed(&dev->dev, "Product", dev->prod);
-	dev_add_param_fixed(&dev->dev, "SerialNumber", dev->serial);
+	dev_add_param_fixed(&dev->dev, "Manufacturer", "%s", dev->mf);
+	dev_add_param_fixed(&dev->dev, "Product", "%s", dev->prod);
+	dev_add_param_fixed(&dev->dev, "SerialNumber", "%s", dev->serial);
 	dev_add_param_uint32_fixed(&dev->dev, "idVendor",
 			dev->descriptor->idVendor, "%04x");
 	dev_add_param_uint32_fixed(&dev->dev, "idProduct",
diff --git a/fs/fs.c b/fs/fs.c
index 24c14a590a11..54bd35786857 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1224,7 +1224,8 @@ void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str)
 {
 	fsdev->linux_rootarg = xstrdup(str);
 
-	dev_add_param_fixed(&fsdev->dev, "linux.bootargs", fsdev->linux_rootarg);
+	dev_add_param_fixed(&fsdev->dev, "linux.bootargs",
+			    "%s", fsdev->linux_rootarg);
 }
 
 /**
diff --git a/include/param.h b/include/param.h
index 5f4f87f67c73..1bf04015f266 100644
--- a/include/param.h
+++ b/include/param.h
@@ -6,6 +6,7 @@
 #include <linux/types.h>
 #include <linux/list.h>
 #include <bobject.h>
+#include <stdarg.h>
 
 #define PARAM_FLAG_RO	(1 << 0)
 #define PARAM_GLOBALVAR_UNQUALIFIED	(1 << 1)
@@ -103,8 +104,12 @@ struct param_d *bobject_add_param_file_list(bobject_t bobj, const char *name,
 					struct file_list **file_list,
 					void *priv);
 
+struct param_d *vbobject_add_param_fixed(struct bobject *bobj, const char *name,
+					 const char *fmt, va_list ap);
+
 struct param_d *bobject_add_param_fixed(bobject_t bobj, const char *name,
-				    const char *value);
+				    const char *fmt, ...)
+	__printf(3, 4);
 
 void param_remove(struct param_d *p);
 
@@ -224,9 +229,17 @@ static inline struct param_d *bobject_add_param_file_list(bobject_t bobj,
 	return NULL;
 }
 
-static inline struct param_d *bobject_add_param_fixed(bobject_t bobj,
-						  const char *name,
-						  const char *value)
+static inline
+struct param_d *vbobject_add_param_fixed(struct bobject *bobj, const char *name,
+					 const char *fmt, va_list ap)
+{
+	return NULL;
+}
+
+static inline __printf(3, 4)
+struct param_d *bobject_add_param_fixed(bobject_t bobj,
+					const char *name,
+					const char *fmt, ...)
 {
 	return NULL;
 }
@@ -340,7 +353,7 @@ static inline struct param_d *bobject_add_param_string_fixed(bobject_t bobj,
 							 const char *name,
 							 const char *value)
 {
-	return bobject_add_param_fixed(bobj, name, value);
+	return bobject_add_param_fixed(bobj, name, "%s", value);
 }
 
 static inline struct param_d *bobject_add_param_enum_ro(bobject_t bobj,
@@ -367,6 +380,7 @@ static inline struct param_d *bobject_add_param_bitmask_ro(bobject_t bobj,
 #define dev_set_param			bobject_set_param
 #define dev_add_param			bobject_add_param
 #define dev_add_param_string		bobject_add_param_string
+#define dev_add_param_fixed		bobject_add_param_fixed
 #define __dev_add_param_int		__bobject_add_param_int
 #define dev_add_param_enum		bobject_add_param_enum
 #define dev_add_param_tristate		bobject_add_param_tristate
@@ -375,7 +389,6 @@ static inline struct param_d *bobject_add_param_bitmask_ro(bobject_t bobj,
 #define dev_add_param_ip		bobject_add_param_ip
 #define dev_add_param_mac		bobject_add_param_mac
 #define dev_add_param_file_list		bobject_add_param_file_list
-#define dev_add_param_fixed		bobject_add_param_fixed
 #define dev_param_set_generic		bobject_param_set_generic
 
 #define dev_add_param_int		bobject_add_param_int
diff --git a/lib/parameter.c b/lib/parameter.c
index ef578d790856..73cc3701b938 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -213,15 +213,14 @@ struct param_d *bobject_add_param(bobject_t _bobj, const char *name,
 }
 
 /**
- * bobject_add_param_fixed - add a readonly parameter to a barebox object
+ * vbobject_add_param_fixed - add a readonly parameter to a barebox object
  * @param bobj	The barebox object
  * @param name	The name of the parameter
- * @param value	The value of the parameter
+ * @param fmt	Format string
  */
-struct param_d *bobject_add_param_fixed(bobject_t _bobj, const char *name,
-				    const char *value)
+struct param_d *vbobject_add_param_fixed(struct bobject *bobj, const char *name,
+					 const char *fmt, va_list ap)
 {
-	struct bobject *bobj = _bobj.bobj;
 	struct param_d *param;
 	int ret;
 
@@ -233,7 +232,27 @@ struct param_d *bobject_add_param_fixed(bobject_t _bobj, const char *name,
 		return ERR_PTR(ret);
 	}
 
-	param->value = strdup(value);
+	param->value = fmt ? bvasprintf(fmt, ap) : NULL;
+
+	return param;
+}
+
+/**
+ * bobject_add_param_fixed - add a readonly parameter to a barebox object
+ * @param bobj	The barebox object
+ * @param name	The name of the parameter
+ * @param fmt	Format string
+ */
+struct param_d *bobject_add_param_fixed(bobject_t _bobj, const char *name,
+					const char *fmt, ...)
+{
+	struct bobject *bobj = _bobj.bobj;
+	struct param_d *param;
+	va_list ap;
+
+	va_start(ap, fmt);
+	param = vbobject_add_param_fixed(bobj, name, fmt, ap);
+	va_end(ap);
 
 	return param;
 }
-- 
2.39.5



