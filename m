Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1daPE9-0002UQ-J7
 for barebox@lists.infradead.org; Wed, 26 Jul 2017 16:32:12 +0000
Received: by mail-pf0-x243.google.com with SMTP id q85so15830529pfq.2
 for <barebox@lists.infradead.org>; Wed, 26 Jul 2017 09:31:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 26 Jul 2017 09:31:19 -0700
Message-Id: <20170726163120.25952-11-andrew.smirnov@gmail.com>
In-Reply-To: <20170726163120.25952-1-andrew.smirnov@gmail.com>
References: <20170726163120.25952-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/11] include: Add phy-id-list.h
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add phy-id-list.h as a place to share Etherent PHY IDs between board
specific code.

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
