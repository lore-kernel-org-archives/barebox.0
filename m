Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtJWC-0002PH-IG
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 17:03:14 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XtJVq-0000RL-U3
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 18:02:50 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Nov 2014 18:02:47 +0100
Message-Id: <1416934970-24929-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
References: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH v2 2/5] envfs: include errno.h
To: barebox@lists.infradead.org

Fixes: include/envfs.h:124:10: error: 'ENOSYS' undeclared

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/envfs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/envfs.h b/include/envfs.h
index fdcb8a8d97c3..27c4b42c6b60 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -2,6 +2,7 @@
 #define _ENVFS_H
 
 #ifdef __BAREBOX__
+#include <errno.h>
 #include <asm/byteorder.h>
 #include <linux/stringify.h>
 #endif
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
