Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAl2-0000R4-4J
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 11:27:33 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 10 Jul 2019 13:27:30 +0200
Message-Id: <1562758050-447264-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH] mtd: ubi: Max out default wear-leveling threshold
To: barebox@lists.infradead.org

Due to the recursive ubi_thread implementation in the barebox, a large
amount of wear-leveling can lead to a stack overflow.

This was observed during extensive ubi stress tests with the linux
kernel and periodic power cycles. We found that if the wear-leveling
threshold is exceeded and a large amount of erase blocks need
wear-leveling the stack can overflow.

The hardware used to observe this was a phyCORE-i.MX 6 with 1GB NAND flash.

As the kernel is perfectly capable of handling wear-leveling we can
increase the wear-leveling threshold in the barebox to leave it to the
kernel. To minimize the chance of wear-leveling in the barebox max out
the threshold.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/mtd/ubi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/Kconfig b/drivers/mtd/ubi/Kconfig
index 9a344082b7bb..509a1f77ddcd 100644
--- a/drivers/mtd/ubi/Kconfig
+++ b/drivers/mtd/ubi/Kconfig
@@ -12,7 +12,7 @@ if MTD_UBI
 
 config MTD_UBI_WL_THRESHOLD
 	int "UBI wear-leveling threshold"
-	default 4096
+	default 65536
 	range 2 65536
 	help
 	  This parameter defines the maximum difference between the highest
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
