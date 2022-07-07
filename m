Delivery-date: Thu, 07 Jul 2022 17:56:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9TrQ-009SZP-ET
	for lore@lore.pengutronix.de; Thu, 07 Jul 2022 17:56:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9TrS-0000FA-6T
	for lore@pengutronix.de; Thu, 07 Jul 2022 17:56:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V8aifiKRpS355Wuln1aRbdBj5vE8bBWR7qvoJIDY+Kg=; b=w5RFcBEWobu0FgaN1UeOsORR7c
	RgjIL9Es2+f9QzF5JzvQgM5688Ihc+C1lyqjqjmDT3knuR7r0WS6Hympizdee/aVi5R9rhaDB4vGf
	74e114Cq0EpeBWDOqZI+VMuTyBhDGNuXPk6YZ2ECwxkqX17Q2YDprEofyHuMncPg328KOCQjJpbTf
	qxHxaSXHzfoRQ4l4Up71+t7zEI68PtbtyAaBAIY3YYJToh35x+Gj0/F2nXwDPwobcnpgNnyZz6DCI
	U9h03Ei/TyUxDp53raXHV4FyiSEmKkJ5fSax2+beX2Lt3A4vkzstdE3hYG43tQHJ6Fr1yBTp7QoH2
	r405uqrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Tpu-00Gqee-LE; Thu, 07 Jul 2022 15:54:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Tpq-00Gqdj-5D
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 15:54:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1o9Tpn-0008Qb-M1; Thu, 07 Jul 2022 17:54:31 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1o9Tpj-004yxU-EH; Thu, 07 Jul 2022 17:54:30 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1o9Tpm-00EYNE-9t; Thu, 07 Jul 2022 17:54:30 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Thu,  7 Jul 2022 17:54:27 +0200
Message-Id: <20220707155427.3468397-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_085434_241433_57325402 
X-CRM114-Status: GOOD (  19.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] base: driver: print dev_err_probe message on permanent probe deferral
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This stores the probe deferral reason in the device structure.
If a probe is permanently deferred, the last reason is displayed.

Other dev_err_probe outputs are displayed as before.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
v1 -> v2:
  - improved commit message
  - improved function prototypes
  - improved debug output, device name is displayed once only per
    message
  - reverted removal of MSG_DEBUG output on deferred probe
  - replaced kfree by free
  - removed unnecessary null checks before free
  - fixed several typos
  - fixed compiler warnings
  - fixed coding style issues
---
drivers/base/driver.c | 47 ++++++++++++++++++++++++++++++++++---------
 include/driver.h      |  6 ++++++
 2 files changed, 44 insertions(+), 9 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 303ca061c..02d185e01 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -283,6 +283,7 @@ void free_device_res(struct device_d *dev)
 	dev->name = NULL;
 	free(dev->unique_name);
 	dev->unique_name = NULL;
+	free(dev->deferred_probe_reason);
 }
 EXPORT_SYMBOL(free_device_res);
 
@@ -300,6 +301,12 @@ void free_device(struct device_d *dev)
 }
 EXPORT_SYMBOL(free_device);
 
+
+static char *device_get_deferred_probe_reason(const struct device_d *dev)
+{
+	return dev->deferred_probe_reason;
+}
+
 /*
  * Loop over list of deferred devices as long as at least one
  * device is successfully probed. Devices that again request
@@ -312,6 +319,7 @@ static int device_probe_deferred(void)
 	struct device_d *dev, *tmp;
 	struct driver_d *drv;
 	bool success;
+	char *reason;
 
 	do {
 		success = false;
@@ -333,9 +341,13 @@ static int device_probe_deferred(void)
 		}
 	} while (success);
 
-	list_for_each_entry(dev, &deferred, active)
-		dev_err(dev, "probe permanently deferred\n");
-
+	list_for_each_entry(dev, &deferred, active) {
+		reason = device_get_deferred_probe_reason(dev);
+		if (reason)
+			dev_err(dev, "probe permanently deferred (%s)\n", reason);
+		else
+			dev_err(dev, "probe permanently deferred\n");
+	}
 	return 0;
 }
 late_initcall(device_probe_deferred);
@@ -573,7 +585,16 @@ const void *device_get_match_data(struct device_d *dev)
 	return NULL;
 }
 
-/**
+static void device_set_deferred_probe_reason(struct device_d *dev, const struct va_format *vaf)
+{
+	char *reason;
+
+	free(dev->deferred_probe_reason);
+
+	reason = basprintf("%pV", vaf);
+	dev->deferred_probe_reason = reason;
+}
+/*
  * dev_err_probe - probe error check and log helper
  * @loglevel: log level configured in source file
  * @dev: the pointer to the struct device
@@ -584,8 +605,12 @@ const void *device_get_match_data(struct device_d *dev)
  * This helper implements common pattern present in probe functions for error
  * checking: print debug or error message depending if the error value is
  * -EPROBE_DEFER and propagate error upwards.
- * In case of -EPROBE_DEFER it sets also defer probe reason, which can be
- * checked later by reading devices_deferred debugfs attribute.
+ *
+ * In case of -EPROBE_DEFER it sets the device's deferred_probe_reason attribute,
+ * but does not report an error. The error is recorded and displayed later, if
+ * (and only if) the probe is permanently  deferred. For all other error codes,
+ * it just outputs the error
+ *
  * It replaces code sequence::
  *
  * 	if (err != -EPROBE_DEFER)
@@ -606,13 +631,17 @@ int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
 {
 	struct va_format vaf;
 	va_list args;
-
+	
 	va_start(args, fmt);
 	vaf.fmt = fmt;
 	vaf.va = &args;
 
-	dev_printf(err == -EPROBE_DEFER ? MSG_DEBUG : MSG_ERR,
-		   dev, "error %pe: %pV", ERR_PTR(err), &vaf);
+	/* deferred probe, just remember the error reason */
+	if (err == -EPROBE_DEFER)
+		device_set_deferred_probe_reason((struct device_d*)dev, &vaf);
+
+	dev_printf(err == -EPROBE_DEFER ? MSG_DEBUG : MSG_ERR, 
+		   dev, "error %pe: %pV\n", ERR_PTR(err), &vaf);
 
 	va_end(args);
 
diff --git a/include/driver.h b/include/driver.h
index b35b5f397..2dfe4719a 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -88,6 +88,12 @@ struct device_d {
 	 * when the driver should actually detect client devices
 	 */
 	int     (*detect) (struct device_d *);
+
+	/*
+	 * if a driver probe is deferred, this stores the last error
+	 */
+
+	char *deferred_probe_reason;
 };
 
 /** @brief Describes a driver present in the system */
-- 
2.30.2



