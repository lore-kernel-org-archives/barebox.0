Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwLtE-0002vd-Rc
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 21:53:26 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun,  6 Mar 2011 22:53:18 +0100
Message-Id: <1299448398-5672-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299448398-5672-1-git-send-email-jbe@pengutronix.de>
References: <1299448398-5672-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/5] S3C2440/NAND: Fix typo
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

This routine loops over 'pages', not 'blocks'.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 drivers/mtd/nand/nand_s3c2410.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 7d7ff46..5a607b4 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -529,7 +529,7 @@ static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs,
 }
 
 /**
- * Load a sequential count of blocks from the NAND into memory
+ * Load a sequential count of pages from the NAND into memory
  * @param[out] dest Pointer to target area (in SDRAM)
  * @param[in] size Bytes to read from NAND device
  * @param[in] page Start page to read from
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
