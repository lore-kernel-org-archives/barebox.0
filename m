Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAw3-0008JE-SJ
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 11:22:44 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihAw2-0005Rq-Nu
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 12:22:38 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 17 Dec 2019 12:22:38 +0100
Message-Id: <20191217112238.32333-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: rdu-common: restart machine after fixing i210 device ID
To: barebox@lists.infradead.org

For the iNVM change to take effect we need to reset the i210 adapter.
As this is not really possible in isolation in Barebox, we just go
through a full machine reset cycle. As this should only happen once
during the lifetime of each device there is no need for a more
elaborate solution.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-common/board.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
index c13b04c2221e..3e44b85a4d70 100644
--- a/arch/arm/boards/zii-common/board.c
+++ b/arch/arm/boards/zii-common/board.c
@@ -13,11 +13,12 @@
  */
 
 #include <common.h>
+#include <fs.h>
 #include <globalvar.h>
 #include <init.h>
-#include <fs.h>
-#include <net.h>
 #include <linux/nvmem-consumer.h>
+#include <net.h>
+#include <restart.h>
 
 static int rdu_eth_register_ethaddr(struct device_node *np)
 {
@@ -129,6 +130,9 @@ static int rdu_i210_invm(void)
 	val = I210_CFGWORD_PCIID_157B;
 	pwrite(fd, &val, sizeof(val), 0);
 
+	shutdown_barebox();
+	restart_machine();
+
 	return 0;
 }
 late_initcall(rdu_i210_invm);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
