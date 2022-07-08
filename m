Delivery-date: Fri, 08 Jul 2022 11:43:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9kWM-00AMQy-DD
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 11:43:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9kWO-0001DR-9J
	for lore@pengutronix.de; Fri, 08 Jul 2022 11:43:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m/gg3+ad181G2Adk+nNT4EE6srYerb+IIyd/xyzIBV0=; b=bpBvnS6I7WK+1uX18Ynd96j3NF
	KVTZCc82wJscXdEYD245QRMsysIrp+reFRKRQRmUcZ7aISq21xxxq5McLi06+xntr9I38k7UJEHy6
	OozSyo+9bhWh9luBMwPXQFeAE9k/hduVPCtdxIyK6jBuf/cTA28t5mIgeF9RbLDngFdiGjuqSnDWt
	OL3xw95kDiUxcDs94efZuUXQeIZo+LLv8vi7cCjqhNj/jQnAwLxxEk0UZYC/IFunGTsbk2GqD8buv
	z1+VDJntwxzKWjNsmMCpPFHcRJIrnFRzHtqbPuGDOxkrjO5kOLJRmE6lyyt5Tq08n6iEV3KXUKWsQ
	rTq4xOWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9kUk-002zFD-AX; Fri, 08 Jul 2022 09:41:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9kUf-002zCZ-KZ
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 09:41:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1o9kUZ-0000vZ-4r; Fri, 08 Jul 2022 11:41:43 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1o9kUU-005819-Tz; Fri, 08 Jul 2022 11:41:42 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1o9kUX-000huk-7c; Fri, 08 Jul 2022 11:41:41 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Fri,  8 Jul 2022 11:41:38 +0200
Message-Id: <20220708094138.112060-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_024149_766490_114F6734 
X-CRM114-Status: GOOD (  19.57  )
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
Subject: [PATCH v3] base: driver: print dev_err_probe message on permanent probe deferral
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This stores the probe deferral reason in the device structure.
If a probe is permanently deferred, the last reason is displayed.

Example output on a permanently deferred probe:
  ERROR: imx-pgc-domain0: probe permanently deferred (Failed to get domain's regulator)

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
v2 -> v3:
  - dropped const from dev_err_probe
  - use xasprintf instead of basprintf: guarantee memory allocation
  - prevent newline within message on permanent deferral
  - removed unnecessary helper functions
  - fixed remaining typos and whitespace changes
  - improved comments
  - reverted removal of kernel doc comment 
  - added example in commit message
---
 drivers/base/driver.c  | 44 +++++++++++++++++++++++++++++++++++-------
 include/driver.h       |  5 +++++
 include/linux/printk.h |  6 +++---
 3 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 303ca061c..4898e0114 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -283,6 +283,7 @@ void free_device_res(struct device_d *dev)
 	dev->name = NULL;
 	free(dev->unique_name);
 	dev->unique_name = NULL;
+	free(dev->deferred_probe_reason);
 }
 EXPORT_SYMBOL(free_device_res);
 
@@ -333,9 +334,13 @@ static int device_probe_deferred(void)
 		}
 	} while (success);
 
-	list_for_each_entry(dev, &deferred, active)
-		dev_err(dev, "probe permanently deferred\n");
-
+	list_for_each_entry(dev, &deferred, active) {
+		if (dev->deferred_probe_reason)
+			dev_err(dev, "probe permanently deferred (%s)\n",
+				dev->deferred_probe_reason);
+		else
+			dev_err(dev, "probe permanently deferred\n");
+	}
 	return 0;
 }
 late_initcall(device_probe_deferred);
@@ -573,6 +578,24 @@ const void *device_get_match_data(struct device_d *dev)
 	return NULL;
 }
 
+static void device_set_deferred_probe_reason(struct device_d *dev, const struct va_format *vaf)
+{
+	char *reason;
+	char *last_char;
+
+	free(dev->deferred_probe_reason);
+
+	reason = xasprintf("%pV", vaf);
+
+	/* drop newline char at end of reason string */
+	last_char = reason + strlen(reason) - 1;
+
+	if (*last_char == '\n')
+		*last_char = '\0';
+
+	dev->deferred_probe_reason = reason;
+}
+
 /**
  * dev_err_probe - probe error check and log helper
  * @loglevel: log level configured in source file
@@ -584,8 +607,12 @@ const void *device_get_match_data(struct device_d *dev)
  * This helper implements common pattern present in probe functions for error
  * checking: print debug or error message depending if the error value is
  * -EPROBE_DEFER and propagate error upwards.
- * In case of -EPROBE_DEFER it sets also defer probe reason, which can be
- * checked later by reading devices_deferred debugfs attribute.
+ *
+ * In case of -EPROBE_DEFER it sets the device's deferred_probe_reason attribute,
+ * but does not report an error. The error is recorded and displayed later, if
+ * (and only if) the probe is permanently deferred. For all other error codes,
+ * it just outputs the error along with the formatted message.
+ *
  * It replaces code sequence::
  *
  * 	if (err != -EPROBE_DEFER)
@@ -601,8 +628,8 @@ const void *device_get_match_data(struct device_d *dev)
  * Returns @err.
  *
  */
-int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...);
-int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
+int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...);
+int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...)
 {
 	struct va_format vaf;
 	va_list args;
@@ -611,6 +638,9 @@ int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
 	vaf.fmt = fmt;
 	vaf.va = &args;
 
+	if (err == -EPROBE_DEFER)
+		device_set_deferred_probe_reason(dev, &vaf);
+
 	dev_printf(err == -EPROBE_DEFER ? MSG_DEBUG : MSG_ERR,
 		   dev, "error %pe: %pV", ERR_PTR(err), &vaf);
 
diff --git a/include/driver.h b/include/driver.h
index b35b5f397..a89ce7af9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -88,6 +88,11 @@ struct device_d {
 	 * when the driver should actually detect client devices
 	 */
 	int     (*detect) (struct device_d *);
+
+	/*
+	 * if a driver probe is deferred, this stores the last error
+	 */
+	char *deferred_probe_reason;
 };
 
 /** @brief Describes a driver present in the system */
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 39523b057..e21e859bf 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -76,12 +76,12 @@ static inline int pr_print(int level, const char *format, ...)
 	__dev_printf(8, (dev) , format , ## arg)
 
 #if LOGLEVEL >= MSG_ERR
-int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
+int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
 #elif !defined(dev_err_probe)
-static int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
+static int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
-static inline int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
+static inline int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...)
 {
 	return err;
 }
-- 
2.30.2



