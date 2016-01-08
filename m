Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHUzw-0003Kc-5f
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 11:14:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Jan 2016 12:13:54 +0100
Message-Id: <1452251635-14689-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] defaultenv2: Add automount for RATPFS
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/defaultenv-2-base/init/automount-ratp | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 defaultenv/defaultenv-2-base/init/automount-ratp

diff --git a/defaultenv/defaultenv-2-base/init/automount-ratp b/defaultenv/defaultenv-2-base/init/automount-ratp
new file mode 100644
index 0000000..6474df8
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/init/automount-ratp
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+# automount ratp filesystem
+
+mkdir -p /mnt/ratp
+automount /mnt/ratp 'mount -t ratpfs none /mnt/ratp'
\ No newline at end of file
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
