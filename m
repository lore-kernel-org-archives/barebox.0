Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S6gcV-0001jW-DM
 for barebox@lists.infradead.org; Sun, 11 Mar 2012 11:07:24 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sun, 11 Mar 2012 12:07:06 +0100
Message-Id: <1331464026-11639-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] drivers/mtd: improve docg3 write speed
To: barebox@lists.infradead.org

When programming or erasing a page, don't wait
systematically for 3s, but finish the operation as soon as
the hardware has finished, and timeout if 3 seconds have
passed.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/devices/docg3.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 88d707c..7a40908 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -21,6 +21,7 @@
 #include <driver.h>
 #include <errno.h>
 #include <malloc.h>
+#include <clock.h>
 #include <io.h>
 #include <linux/kernel.h>
 #include <linux/mtd/mtd.h>
@@ -780,9 +781,9 @@ static int doc_get_op_status(struct docg3 *docg3)
 static int doc_write_erase_wait_status(struct docg3 *docg3)
 {
 	int status, ret = 0;
+	uint64_t start = get_time_ns();
 
-	if (!doc_is_ready(docg3))
-		mdelay(3000);
+	while (!is_timeout(start, 3000 * MSECOND) && !doc_is_ready(docg3));
 	if (!doc_is_ready(docg3)) {
 		doc_dbg("Timeout reached and the chip is still not ready\n");
 		ret = -EAGAIN;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
