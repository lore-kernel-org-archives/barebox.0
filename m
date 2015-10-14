Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmHof-0005AM-7E
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 08:53:46 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZmHoN-0005FH-JD
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 10:53:27 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 14 Oct 2015 10:53:26 +0200
Message-Id: <1444812807-2331-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1444812807-2331-1-git-send-email-l.stach@pengutronix.de>
References: <1444812807-2331-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] mtd: nand_denali: don't include arch header
To: barebox@lists.infradead.org

It causes build failures on other arches than socfpga and the driver
doesn't use anything provided by this header.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mtd/nand/nand_denali.c    | 1 -
 drivers/mtd/nand/nand_denali_dt.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index d2e51e2568dc..bf9a05d85264 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -24,7 +24,6 @@
 #include <init.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
-#include <mach/generic.h>
 #include <io.h>
 #include <of_mtd.h>
 #include <errno.h>
diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index 09eb110c870a..6a3aee1415e9 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -19,7 +19,6 @@
 #include <init.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
-#include <mach/generic.h>
 #include <io.h>
 #include <of_mtd.h>
 #include <errno.h>
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
