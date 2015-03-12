Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YW0bw-0004aW-VJ
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 10:45:06 +0000
Received: from mail412.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id D14B9FFA0CD
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 11:44:39 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 12 Mar 2015 11:44:31 +0100
Message-Id: <1426157072-2434-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] digest: fix and add missing copyright
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/hmac.c     | 6 ++++++
 crypto/internal.h | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/crypto/hmac.c b/crypto/hmac.c
index b04dff1..8d07a61 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -1,3 +1,9 @@
+/*
+ * (C) Copyright 2015 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2 only
+ */
+
 #include <common.h>
 #include <digest.h>
 #include <malloc.h>
diff --git a/crypto/internal.h b/crypto/internal.h
index b6a8df0..cc409d8 100644
--- a/crypto/internal.h
+++ b/crypto/internal.h
@@ -1,5 +1,5 @@
 /*
- * (C) Copyright 215 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ * (C) Copyright 2015 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * GPL v2 only
  */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
