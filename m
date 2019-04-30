Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUSS-0007w9-GK
 for barebox@lists.infradead.org; Tue, 30 Apr 2019 15:14:14 +0000
From: Jan Remmet <j.remmet@phytec.de>
Date: Tue, 30 Apr 2019 17:14:07 +0200
Message-Id: <1556637247-33931-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH] UBI: remove Kconfig entry from include
To: barebox@lists.infradead.org

CONFIG_MTD_UBI_WL_THRESHOLD can be set via Kconfig.
default there is also 4096. So remove the leftover here.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 drivers/mtd/ubi/ubi-barebox.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index 557ad8831676..7ee87ffd3e10 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -30,7 +30,6 @@
 #define crc32(seed, data, length)  crc32_no_comp(seed, (unsigned char * const)data, length)
 
 /* configurable */
-#define CONFIG_MTD_UBI_WL_THRESHOLD	4096
 #define UBI_IO_DEBUG			0
 
 /* upd.c */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
