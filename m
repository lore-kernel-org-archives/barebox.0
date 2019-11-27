Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvQ4-0006zR-Jk
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:23:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:23:33 +0100
Message-Id: <20191127112337.18719-3-s.hauer@pengutronix.de>
In-Reply-To: <20191127112337.18719-1-s.hauer@pengutronix.de>
References: <20191127112337.18719-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ARM Layerscape: ls1046ardb: Add barebox update handler
To: Barebox List <barebox@lists.infradead.org>

Add a barebox update handler for easy barebox update.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/board.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index 0846df9fad..606f65ce9d 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <bbu.h>
 #include <envfs.h>
 #include <asm/memory.h>
 #include <linux/sizes.h>
@@ -9,6 +10,7 @@
 #include <linux/clkdev.h>
 #include <asm/system.h>
 #include <mach/layerscape.h>
+#include <mach/bbu.h>
 
 static int rdb_mem_init(void)
 {
@@ -35,6 +37,9 @@ static int rdb_postcore_init(void)
 
 	defaultenv_append_directory(defaultenv_ls1046ardb);
 
+	ls1046a_bbu_mmc_register_handler("sd", "/dev/mmc0.barebox",
+					 BBU_HANDLER_FLAG_DEFAULT);
+
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
