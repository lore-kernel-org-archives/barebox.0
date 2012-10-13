Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMwXj-0007oc-Vz
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 07:53:57 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1FF0AFF88C0
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 10:03:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 13 Oct 2012 09:51:28 +0200
Message-Id: <1350114689-19272-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350114689-19272-1-git-send-email-plagnioj@jcrosoft.com>
References: <1350114689-19272-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] reset_resource: add wakeup source
To: barebox@lists.infradead.org

This will allow to known the source of wakeup

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/reset_source.c  |   17 +++++++++++++++++
 include/reset_source.h |   11 +++++++++++
 2 files changed, 28 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index ec1afc0..8fd8a6d 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -34,11 +34,28 @@ void set_reset_source(enum reset_src_type st)
 }
 EXPORT_SYMBOL(set_reset_source);
 
+static const char * const wakeup_src_names[] = {
+	[WAKEUP_UKWNOWN] = "unknown",
+	[RESET_POWER] = "power",
+	[WAKEUP_RTC] = "rtc",
+	[WAKEUP_TIMER] = "timer",
+	[WAKEUP_USER] = "user",
+	[WAKEUP_WOL] = "wakeup on lan",
+};
+
+void set_wakeup_source(enum wakeup_src_type st)
+{
+	setenv("global.system.wakeup", wakeup_src_names[st]);
+}
+EXPORT_SYMBOL(set_reset_source);
+
 /* ensure this runs after the 'global' device is already registerd */
 static int init_reset_source(void)
 {
 	globalvar_add_simple("system.reset");
+	globalvar_add_simple("system.wakeup");
 	set_reset_source(RESET_UKWNOWN);
+	set_wakeup_source(WAKEUP_UKWNOWN);
 	return 0;
 }
 
diff --git a/include/reset_source.h b/include/reset_source.h
index 5129c6a..d08aa65 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -25,4 +25,15 @@ enum reset_src_type {
 
 void set_reset_source(enum reset_src_type);
 
+enum wakeup_src_type {
+	WAKEUP_UKWNOWN,	/* maybe the SoC cannot detect the wakeup source */
+	WAKEUP_POWER,	/* Power restore */
+	WAKEUP_RTC,	/* rtc */
+	WAKEUP_TIMER,	/* timer */
+	WAKEUP_USER,	/* user */
+	WAKEUP_WOL,	/* wakeup on lan */
+};
+
+void set_wakeup_source(enum wakeup_src_type);
+
 #endif /* __INCLUDE_RESET_SOURCE_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
