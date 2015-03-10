Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVQmI-0005N1-R4
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 20:29:23 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YVQlw-0006Aq-FP
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 21:29:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Mar 2015 21:29:00 +0100
Message-Id: <1426019340-12159-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] parameter: include header for ERR_PTR and errno
To: barebox@lists.infradead.org

Commit 03b59bdb64e83e (paramter: The dev_add_param_*() return ERR_PTR(),
change no-ops to return ERR_PTR(-ENOSYS) instead of NULL) started using
ERR_PTR and errnos without including the relevant header.

This fixes the build for a lot of configurations.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
Sascha, please apply to master as the above commit is already there.
---
 include/param.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/param.h b/include/param.h
index bd2c0789968a..3a851fc552a4 100644
--- a/include/param.h
+++ b/include/param.h
@@ -1,6 +1,7 @@
 #ifndef PARAM_H
 #define PARAM_H
 
+#include <linux/err.h>
 #include <linux/types.h>
 #include <linux/list.h>
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
