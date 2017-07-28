Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1db6Vt-0003ST-4c
 for barebox@lists.infradead.org; Fri, 28 Jul 2017 14:45:25 +0000
Received: by mail-pg0-x241.google.com with SMTP id k190so8093250pgk.4
 for <barebox@lists.infradead.org>; Fri, 28 Jul 2017 07:44:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 28 Jul 2017 07:44:26 -0700
Message-Id: <20170728144427.14007-11-andrew.smirnov@gmail.com>
In-Reply-To: <20170728144427.14007-1-andrew.smirnov@gmail.com>
References: <20170728144427.14007-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 10/11] include: Add phy-id-list.h
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add phy-id-list.h as a place to share Etherent PHY IDs between board
specific code.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/phy-id-list.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 include/phy-id-list.h

diff --git a/include/phy-id-list.h b/include/phy-id-list.h
new file mode 100644
index 000000000..a6070a024
--- /dev/null
+++ b/include/phy-id-list.h
@@ -0,0 +1,12 @@
+/*
+ * List of all Etherenet PHY IDs that is not found in any .h files in
+ * include/linux
+ */
+
+
+#ifndef __PHY_ID_LIST__
+#define __PHY_ID_LIST__
+
+#define PHY_ID_BCM54220 0x600d8589
+
+#endif
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
