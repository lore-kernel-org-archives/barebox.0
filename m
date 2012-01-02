Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiOB-0005Td-7K
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:57:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:57:12 +0100
Message-Id: <1325512634-25797-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
References: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mtd Kconfig: only select NAND_READ_OOB when NAND is
 enabled
To: barebox@lists.infradead.org

To get rid of:

(MTD_OOB_DEVICE && MTD_RAW_DEVICE) selects NAND_READ_OOB which has unmet direct dependencies (MTD && NAND)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/Kconfig |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index 69ababc..0a4ca31 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -10,13 +10,13 @@ config MTD_WRITE
 
 config MTD_OOB_DEVICE
 	bool
-	select NAND_READ_OOB
+	select NAND_READ_OOB if NAND
 	default y
 	prompt "Create a device for reading the OOB data"
 
 config MTD_RAW_DEVICE
 	bool
-	select NAND_READ_OOB
+	select NAND_READ_OOB if NAND
 	default n
 	prompt "mtdraw device to read/write both data+oob"
 
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
