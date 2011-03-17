Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q0DAs-0006hy-Kp
	for barebox@lists.infradead.org; Thu, 17 Mar 2011 13:23:36 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Thu, 17 Mar 2011 15:23:16 +0200
Message-Id: <0781cdb4e6ac0ac31ebb1f45dd57cd2c9192dd02.1300368089.git.baruch@tkos.co.il>
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
Subject: [PATCH 1/2] mtd/nand: increase page and oob size limits
To: barebox@lists.infradead.org

Sync these limits with the Linux kernel. This allows support for NAND devices
with page size of 4k.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 include/linux/mtd/nand.h |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index cb35fd2..0fe66e4 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -45,8 +45,8 @@ extern void nand_wait_ready(struct mtd_info *mtd);
  * is supported now. If you add a chip with bigger oobsize/page
  * adjust this accordingly.
  */
-#define NAND_MAX_OOBSIZE	64
-#define NAND_MAX_PAGESIZE	2048
+#define NAND_MAX_OOBSIZE	576
+#define NAND_MAX_PAGESIZE	8192
 
 /*
  * Constants for hardware specific CLE/ALE/NCE function
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
