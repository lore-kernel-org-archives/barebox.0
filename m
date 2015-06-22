Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6z31-0002Ru-1P
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 10:33:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002Dz-HB
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002ir-8D
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 22 Jun 2015 12:33:19 +0200
Message-Id: <1434969204-11433-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
References: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/6] Common: define scopes a specific hardware or software
 feature can cope with
To: barebox@lists.infradead.org

This change adds an enum to define a scope to be used in frameworks which
have to select a feature specific to a scope. These defines will be used
in the following changes in the 'reset reason', 'machine restart' and
'watchdog' framework. These three frameworks need this kind of information
to select a proper feature provider or source.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 include/fscope.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 include/fscope.h

diff --git a/include/fscope.h b/include/fscope.h
new file mode 100644
index 0000000..186249b
--- /dev/null
+++ b/include/fscope.h
@@ -0,0 +1,29 @@
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __INCLUDE_FSCOPE_H
+# define __INCLUDE_FSCOPE_H
+
+/* define a scope some hardware feature can cope with */
+enum f_scope {
+	FEATURE_SCOPE_UNKNOWN,
+	FEATURE_SCOPE_CPU,
+	FEATURE_SCOPE_SOC,
+	FEATURE_SCOPE_MACHINE,
+};
+
+#define NAME_FEATURE_SCOPE_UNKNOWN "unknown"
+#define NAME_FEATURE_SCOPE_CPU "cpu"
+#define NAME_FEATURE_SCOPE_SOC "soc"
+#define NAME_FEATURE_SCOPE_MACHINE "machine"
+
+#endif /* __INCLUDE_FSCOPE_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
