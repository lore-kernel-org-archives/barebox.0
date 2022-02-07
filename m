Delivery-date: Mon, 07 Feb 2022 10:52:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0ha-0088vD-9Z
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:52:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0hY-0003mr-3a
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:52:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nbrhZmT+Mx6T/Sw9rhC10bRb9p803U34wZ10a+Nth8=; b=BH6VIrwFTjXVUZ
	MYN4YiqXSr95LLIdnIFB5MtdofRnGLLzDparWzsCzUnegFUI2YhJ7y/jhHOFZiXxfYED/8Agdmm4s
	ZqjT8nr2NpLNQ5Buj+qXTy7oPSecmml5B96gNVHhfm3ztWQjPfo6bwMOGmEbGViKYL1JiGj+3fN7Q
	xetDvPDNzVviZ6q7xwbklRlo23P3o9D/bmxQEs++DR1QpWBkSRspN0WwQ4q02j7ArJ2STg8a/hL8F
	wc1Vd24qKJwlJonS13oZtxVBF4ZbLjNoS/qO30zofW+yEnJjc1s2DmrhOO5G9QOEzVNZUoqYuWIYB
	D8ojlLj+jMUebDz4MDUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0gF-009eUK-51; Mon, 07 Feb 2022 09:51:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0ew-009dog-SX
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 09:50:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0en-0002tf-BU; Mon, 07 Feb 2022 10:50:01 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0em-0040M1-ME; Mon, 07 Feb 2022 10:50:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Feb 2022 10:49:50 +0100
Message-Id: <20220207094953.949868-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207094953.949868-1-s.hauer@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_015010_967864_04C8871D 
X-CRM114-Status: GOOD (  18.93  )
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
Cc: Michael Olbrich <mol@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/8] driver: Add functions to free devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

struct device_d has some dynamically allocated members, namely .name and
.unique_name. These are normally not freed when a device is freed. Add
two functions to free these resources. free_device_res() only frees the
allocated members, but not the device itself. This is suitable for cases
where the device is embedded in another struct. free_device() frees the
allocated members along with the device itself. This can be called when
the device itself has been directly allocated.

Some users which should use these functions are also fixed in this
patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c  | 30 ++++++++++++++++++++++++++++++
 drivers/of/base.c      |  2 +-
 drivers/of/platform.c  |  3 ++-
 drivers/usb/core/usb.c |  1 +
 include/driver.h       |  4 ++++
 5 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index f54f4d0b37..2347b5c71f 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -270,6 +270,36 @@ int unregister_device(struct device_d *old_dev)
 }
 EXPORT_SYMBOL(unregister_device);
 
+/**
+ * free_device_res - free dynamically allocated device members
+ * @dev: The device
+ *
+ * This frees dynamically allocated resources allocated during device
+ * lifetime, but not the device itself.
+ */
+void free_device_res(struct device_d *dev)
+{
+	free(dev->name);
+	dev->name = NULL;
+	free(dev->unique_name);
+	dev->unique_name = NULL;
+}
+EXPORT_SYMBOL(free_device_res);
+
+/**
+ * free_device - free a device
+ * @dev: The device
+ *
+ * This frees dynamically allocated resources allocated during device
+ * lifetime and finally the device itself.
+ */
+void free_device(struct device_d *dev)
+{
+	free_device_res(dev);
+	free(dev);
+}
+EXPORT_SYMBOL(free_device);
+
 /*
  * Loop over list of deferred devices as long as at least one
  * device is successfully probed. Devices that again request
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 80465d6d50..2591610c3f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2383,7 +2383,7 @@ static void of_platform_device_create_root(struct device_node *np)
 
 	ret = platform_device_register(dev);
 	if (ret)
-		free(dev);
+		free_device(dev);
 }
 
 static const struct of_device_id reserved_mem_matches[] = {
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 3a82809cb3..0e718469db 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -155,7 +155,7 @@ struct device_d *of_platform_device_create(struct device_node *np,
 
 	np->dev = NULL;
 
-	free(dev);
+	free_device(dev);
 	if (num_reg)
 		free(res);
 	return NULL;
@@ -278,6 +278,7 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	return &dev->dev;
 
 amba_err_free:
+	free_device_res(&dev->dev);
 	free(dev);
 	return NULL;
 }
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 4eede13a11..34a0f004f7 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -534,6 +534,7 @@ void usb_free_device(struct usb_device *usbdev)
 {
 	dma_free(usbdev->descriptor);
 	dma_free(usbdev->setup_packet);
+	free_device_res(&usbdev->dev);
 	free(usbdev);
 }
 
diff --git a/include/driver.h b/include/driver.h
index 4f97b943c8..93de4f676e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -141,6 +141,10 @@ void device_detect_all(void);
  */
 int unregister_device(struct device_d *);
 
+void free_device_res(struct device_d *dev);
+void free_device(struct device_d *dev);
+
+
 /* Iterate over a devices children
  */
 #define device_for_each_child(dev, child) \
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

