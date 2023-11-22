Delivery-date: Wed, 22 Nov 2023 18:14:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qoB-004cTk-1y
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:14:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qoB-0004Ap-IW
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:14:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aQbz12uyeuI41oxJeJKNRzY3Dvc0Sodn/N4I6iDch04=; b=MiibljJAlzL5PpI97wMlPFGqW+
	WugW+5crLaLA4GAUGYJzHqoYnBUahQtiob1OS6953N3fi5aD97Zao7xC6D+HvJya4gyhAGLfaXwde
	SNyNCqAvb2ktLzD2KZeGyyCimEnDPpJardqkEwgn7Z3h6RKvPFAFY+WHUl3qi1KgY13ybAedh96s6
	xrJoVmy5y0eyQSOX2UFCqZUtP16a3bjgrSescPRMWRm7SxR5IyiQJTj3TxGrttiXiUiEKI1iI1RQ5
	STq972wcbHdEuBYusTAtavjzTVqVhrI0+14VMbTEbdICeVFGiO9N5c0TfERPXp/wCKmmjZBC7+6Yt
	Kb0tPEDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qn1-002csy-1j;
	Wed, 22 Nov 2023 17:13:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qmx-002crg-2c
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:13:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qmw-0003rl-DU
	for barebox@lists.infradead.org; Wed, 22 Nov 2023 18:13:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qmw-00ArRB-0u
	for barebox@lists.infradead.org; Wed, 22 Nov 2023 18:13:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qmv-0083cJ-2y
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 22 Nov 2023 18:13:19 +0100
Message-Id: <20231122171320.1714868-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_091323_854909_5E835B56 
X-CRM114-Status: GOOD (  17.41  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] console: provide best-effort clk_get_for_console helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

clk_get will return -EPROBE_DEFER if clock provider hasn't yet been
probed. In a system with deep probe enabled, dependencies are probed
on demand, so a -EPROBE_DEFER return is final and the console probe
will never succeed.

CONFIG_DEBUG_LL is often used to debug this, but because the low-level
console is not interactive, it's a bit cumbersome. Improve upon this a
bit, by providing a clk_get_for_console helper that returns NULL if and
only if we are sure that a clock provider will not be probed.

In that case, the driver can skip code paths initialization code and
baud rate setting dependent on having access to the clock and still
register a console that reuses what was set up by CONFIG_DEBUG_LL.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - restrict new mechanism to stdout console (Sascha)
---
 include/console.h   | 27 +++++++++++++++++++++++++++
 include/linux/clk.h | 21 +++++++++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/include/console.h b/include/console.h
index d7cbdfa99207..69c0ec144b31 100644
--- a/include/console.h
+++ b/include/console.h
@@ -8,6 +8,7 @@
 #define _CONSOLE_H_
 
 #include <param.h>
+#include <linux/clk.h>
 #include <linux/list.h>
 #include <driver.h>
 #include <serdev.h>
@@ -228,4 +229,30 @@ static inline void console_ctrlc_allow(void) { }
 static inline void console_ctrlc_forbid(void) { }
 #endif
 
+/**
+ * clk_get_for_console - get clock, ignoring known unavailable clock controller
+ * @dev: device for clock "consumer"
+ * @id: clock consumer ID
+ *
+ * Return: a struct clk corresponding to the clock producer, a
+ * valid IS_ERR() condition containing errno or NULL if it could
+ * be determined that the clock producer will never be probed in
+ * absence of modules. The NULL return allows serial drivers to
+ * skip clock handling for the stdout console and rely on CONFIG_DEBUG_LL.
+ */
+static inline struct clk *clk_get_for_console(struct device *dev, const char *id)
+{
+	__always_unused unsigned baudrate;
+	struct clk *clk;
+
+	if (!IS_ENABLED(CONFIG_DEBUG_LL) || !of_device_is_stdout_path(dev, &baudrate))
+		return clk_get(dev, id);
+
+	clk = clk_get_if_available(dev, id);
+	if (clk == NULL)
+		dev_warn(dev, "couldn't get clock (ignoring)\n");
+
+	return clk;
+}
+
 #endif
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 61b4ff3127cf..f505f18a75c0 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -14,6 +14,7 @@
 #include <linux/spinlock.h>
 #include <linux/stringify.h>
 #include <linux/container_of.h>
+#include <deep-probe.h>
 #include <xfuncs.h>
 
 struct device;
@@ -982,4 +983,24 @@ static inline struct clk *clk_get_enabled(struct device *dev, const char *id)
 	return clk;
 }
 
+/**
+ * clk_get_if_available - get clock, ignoring known unavailable clock controller
+ * @dev: device for clock "consumer"
+ * @id: clock consumer ID
+ *
+ * Return: a struct clk corresponding to the clock producer, a
+ * valid IS_ERR() condition containing errno or NULL if it could
+ * be determined that the clock producer will never be probed in
+ * absence of modules.
+ */
+static inline struct clk *clk_get_if_available(struct device *dev, const char *id)
+{
+	struct clk *clk = clk_get(dev, id);
+
+	if (clk == ERR_PTR(-EPROBE_DEFER) && deep_probe_is_supported())
+		return NULL;
+
+	return clk;
+}
+
 #endif
-- 
2.39.2



