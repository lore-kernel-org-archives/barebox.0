Delivery-date: Tue, 06 May 2025 08:38:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwf-002i4N-1i
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwd-0001xY-V1
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8WBBgeK1GyWI30+p8QYwStgTKyJ7uEJW5L0H/CoHX+E=; b=h4X0Yksxht5hycgB+UWozsVb1Y
	R+OvBOcpnei7u448WfqG8MzdoVgwP3gXUMpWo/fuvshPl7GfiMSfCb0rRzipRdzX63t6FLw6UJecC
	U6przE6dTv2d7dnHzMG3ugzYZVldUOu0lQ1cCfqetrU41SunjX7WtLPC31JOzvKNlpHlEFAXJIxCC
	M+t1dSFe7of8UhW6HQgr9Zg6fNPaVDz+rHgV1sM+KW8BQXPP6vJUDib8cL6uuE5jRLfyYmYqCn7OP
	bNRkbXhJA5IJqp7LfIAwDSZ5cRZvPnetwg8ON8xYXvo5iMpYKRiBE77qK4lbQZFIsNPy43nO6aqUz
	XaOnjzeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBw8-0000000AjQP-3dG9;
	Tue, 06 May 2025 06:37:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBtA-0000000AiKM-3e8Q
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:34:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-0000TQ-Cn; Tue, 06 May 2025 08:34:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-001LpI-0a;
	Tue, 06 May 2025 08:34:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-00D9CO-1n;
	Tue, 06 May 2025 08:34:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:34:41 +0200
Message-Id: <20250506063446.3133582-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
References: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233448_938675_145DBFB3 
X-CRM114-Status: GOOD (  18.14  )
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
Subject: [PATCH 3/8] driver: switch dev_get_drvdata to Linux semantics
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that no users of dev_get_drvdata remain, replace it with the Linux
version. Any out-of-tree users must be changed to use
device_get_match_data instead. The new dev_get_drvdata is the equivalent
of what was so far written as dev->priv.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c  | 15 ---------------
 include/device.h       |  5 ++++-
 include/driver.h       | 12 ------------
 include/linux/device.h | 32 ++++++++++++++++++++++++++++++++
 4 files changed, 36 insertions(+), 28 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 85cec7efab46..2160d2fd060b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -709,21 +709,6 @@ static void devices_shutdown(void)
 }
 devshutdown_exitcall(devices_shutdown);
 
-int dev_get_drvdata(struct device *dev, const void **data)
-{
-	if (dev->of_id_entry) {
-		*data = dev->of_id_entry->data;
-		return 0;
-	}
-
-	if (dev->id_entry) {
-		*data = (const void **)dev->id_entry->driver_data;
-		return 0;
-	}
-
-	return -ENODEV;
-}
-
 const void *device_get_match_data(struct device *dev)
 {
 	if (dev->of_id_entry)
diff --git a/include/device.h b/include/device.h
index 8841197a0a56..bc3a348e2e15 100644
--- a/include/device.h
+++ b/include/device.h
@@ -54,7 +54,10 @@ struct device {
 	/*! Devices of a particular class normaly need to store more
 	 * information than struct device holds.
 	 */
-	void *priv;
+	union {
+		void *priv;
+		void *driver_data;
+	};
 	void *type_data;     /*! In case this device is a specific device, this pointer
 			      * points to the type specific device, i.e. eth_device
 			      */
diff --git a/include/driver.h b/include/driver.h
index d73c33a42a81..b63dce84c80e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -666,18 +666,6 @@ int cdevfs_del_partition(struct cdev *cdev);
 
 #define DRV_OF_COMPAT(compat) of_match_ptr(compat)
 
-/**
- * dev_get_drvdata - get driver match data associated with device
- * @dev: device instance
- * @data: pointer to void *, where match data is stored
- *
- * Returns 0 on success and error code otherwise.
- *
- * DEPRECATED: use device_get_match_data instead, which avoids
- * common pitfalls due to explicit pointer casts
- */
-int dev_get_drvdata(struct device *dev, const void **data);
-
 /**
  * device_get_match_data - get driver match data associated with device
  * @dev: device instance
diff --git a/include/linux/device.h b/include/linux/device.h
index 661d8b24730e..d4098b85239f 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -73,4 +73,36 @@ static inline int bus_for_each_dev(const struct bus_type *bus, struct device *st
 	return 0;
 }
 
+
+/**
+ * dev_set_drvdata - set driver private data for device
+ * @dev: device instance
+ * @data: driver-specific data
+ *
+ * Returns private driver data or NULL if none was set.
+ *
+ * NOTE: This does _not_ return the match data associated with
+ * the match. For that use device_get_match_data instead.
+ */
+static inline void dev_set_drvdata(struct device *dev, void *data)
+{
+	dev->driver_data = data;
+}
+
+/**
+ * dev_get_drvdata - get driver match data associated for device
+ * @dev: device instance
+ * @data: driver-specific data
+ *
+ * Set some driver and device specific data for later retrieval
+ * by dev_get_drvdata.
+ *
+ * NOTE: This does _not_ return the match data associated with
+ * the match. For that use device_get_match_data instead.
+ */
+static inline void *dev_get_drvdata(const struct device *dev)
+{
+	return dev->driver_data;
+}
+
 #endif
-- 
2.39.5



