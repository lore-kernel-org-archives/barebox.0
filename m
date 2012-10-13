Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TN280-0005ZH-8r
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 13:51:44 +0000
Received: from mail632.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1193DFF88AE
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 16:00:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 13 Oct 2012 15:49:21 +0200
Message-Id: <1350136162-22061-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350136162-22061-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121013134622.GM13639@game.jcrosoft.org>
 <1350136162-22061-1-git-send-email-plagnioj@jcrosoft.com>
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
index ec1afc0..4791d29 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -34,11 +34,28 @@ void set_reset_source(enum reset_src_type st)
 }
 EXPORT_SYMBOL(set_reset_source);
 
+static const char * const wakeup_src_names[] = {
+	[WAKEUP_UKWNOWN] = "unknown",
+	[WAKEUP_POWER] = "power",
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
index af4246a..1777b2b 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -31,4 +31,15 @@ static inline void set_reset_source(enum reset_src_type unused)
 }
 #endif
 
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
