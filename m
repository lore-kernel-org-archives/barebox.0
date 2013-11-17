Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22e.google.com ([2a00:1450:4008:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vi1pG-0000GG-Jk
 for barebox@lists.infradead.org; Sun, 17 Nov 2013 12:51:43 +0000
Received: by mail-bk0-f46.google.com with SMTP id u15so967620bkz.33
 for <barebox@lists.infradead.org>; Sun, 17 Nov 2013 04:51:16 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 17 Nov 2013 13:51:10 +0100
Message-Id: <1384692670-24375-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] mmci: remove include of mmci.h header
To: barebox@lists.infradead.org

We need #include "mmci.h" only and not #include <mmci.h>
which don't exists.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/mci/mmci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index 66ca450..d93b3cb 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -31,7 +31,6 @@
 #include <linux/clk.h>
 #include <errno.h>
 #include <malloc.h>
-#include <mmci.h>
 #include <linux/amba/bus.h>
 #include <linux/amba/mmci.h>
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
