Delivery-date: Sat, 30 Oct 2021 20:00:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsf1-0001Gy-GD
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 20:00:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsf0-0002zO-GX
	for lore@pengutronix.de; Sat, 30 Oct 2021 20:00:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fQzWmyq2EDyeRyTckieqbRW0XhdoYg040rt6xFhwcKA=; b=elsWIeATQGRGZg
	Y+KHaozktd0xNjTwBuJ2/AlOhognQRm87z4zo2hf9hpcDti+ylYVOd7wveXoUBgwu+Gx9Tc6QjuDn
	2u4EPsCo9D6uA/P3/WU2UYhPu5SmojdOh/D8ErHDUdkYAIwo/5Nu0nSUBaxqBmopdfGrqJ/ZZxQTs
	zL8rhtkAtdvnDaGh9ofpgBsQlLSgQ+205x3m00Me7zb5faluz9srHQsI0GiCJc453wYOuD4m/1QwQ
	ENHzb4vQrgR/X+AbJPxqjpWFpna+53gBsf+Br2joaUHYWhl+vtfXyfJ6mykDctoE+mxiHvZf9xLqd
	36ZBhYxHyjQBndfs3ZFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsdk-00DO2W-VK; Sat, 30 Oct 2021 17:59:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsdd-00DO01-C1
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:59:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsdc-0002OX-5y; Sat, 30 Oct 2021 19:59:28 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsdb-009YQn-NB; Sat, 30 Oct 2021 19:59:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:59:26 +0200
Message-Id: <20211030175926.2277259-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105929_437778_D0414C10 
X-CRM114-Status: GOOD (  13.92  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: implement dev_err_probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The function like it's Linux equivalent is meant to be used during
driver probe whenever an error occurs that would lead to aborting the
probe. This allows moving EPROBE_DEFER checks out of drivers and
in future could allow selectively compiling out only error probe
messages, as they are mainly interesting during bring up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c  | 49 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/printk.h | 12 +++++++++++
 2 files changed, 61 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 3b22a95e174c..e3615fcd0630 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -10,6 +10,8 @@
  * @brief barebox's driver model, and devinfo command
  */
 
+#define dev_err_probe dev_err_probe
+
 #include <common.h>
 #include <command.h>
 #include <deep-probe.h>
@@ -535,3 +537,50 @@ const void *device_get_match_data(struct device_d *dev)
 
 	return NULL;
 }
+
+/**
+ * dev_err_probe - probe error check and log helper
+ * @loglevel: log level configured in source file
+ * @dev: the pointer to the struct device
+ * @err: error value to test
+ * @fmt: printf-style format string
+ * @...: arguments as specified in the format string
+ *
+ * This helper implements common pattern present in probe functions for error
+ * checking: print debug or error message depending if the error value is
+ * -EPROBE_DEFER and propagate error upwards.
+ * In case of -EPROBE_DEFER it sets also defer probe reason, which can be
+ * checked later by reading devices_deferred debugfs attribute.
+ * It replaces code sequence::
+ *
+ * 	if (err != -EPROBE_DEFER)
+ * 		dev_err(dev, ...);
+ * 	else
+ * 		dev_dbg(dev, ...);
+ * 	return err;
+ *
+ * with::
+ *
+ * 	return dev_err_probe(dev, err, ...);
+ *
+ * Returns @err.
+ *
+ */
+int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...);
+int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
+{
+	struct va_format vaf;
+	va_list args;
+
+	va_start(args, fmt);
+	vaf.fmt = fmt;
+	vaf.va = &args;
+
+	dev_printf(err == -EPROBE_DEFER ? MSG_DEBUG : MSG_ERR,
+		   dev, "error %pe: %pV", ERR_PTR(err), &vaf);
+
+	va_end(args);
+
+	return err;
+}
+EXPORT_SYMBOL_GPL(dev_err_probe);
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 3f370adb90ec..212041927251 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -74,6 +74,18 @@ static inline int pr_print(int level, const char *format, ...)
 #define dev_vdbg(dev, format, arg...)		\
 	__dev_printf(8, (dev) , format , ## arg)
 
+#if LOGLEVEL >= MSG_ERR
+int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
+	__attribute__ ((format(__printf__, 3, 4)));
+#elif !defined(dev_err_probe)
+static int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
+	__attribute__ ((format(__printf__, 3, 4)));
+static inline int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
+{
+	return err;
+}
+#endif
+
 #define __pr_printk(level, format, args...) \
 	({	\
 		(level) <= LOGLEVEL ? pr_print((level), (format), ##args) : 0; \
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

