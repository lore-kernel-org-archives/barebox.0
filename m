Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwLtE-0002ve-RT
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 21:53:27 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun,  6 Mar 2011 22:53:16 +0100
Message-Id: <1299448398-5672-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/5] S3C2440/NAND: Fix page address generation
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

A NAND page address consist of a collumn and row part. It depends on the NAND
type, how to handle both parts correctly. This patch tries to generate the
page address from a given page offset correctly. It also forces the collumn
part to '0', as the NAND boot routine reads full pages only.

Note: Page offset to page address conversion does only work for 512 or 2048
bytes per page NAND types.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 drivers/mtd/nand/nand_s3c2410.c |   30 ++++++++++++++++++++++++++----
 1 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 08330ed..e298771 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -497,13 +497,35 @@ static void __nand_boot_init wait_for_completion(void __iomem *host)
 		;
 }
 
+/**
+ * Convert a page offset into a page address for the NAND
+ * @param host Where to write the address to
+ * @param offs Page's offset in the NAND
+ * @param ps Page size (512 or 2048)
+ * @param c Address cycle count (3, 4 or 5)
+ *
+ * Uses the offset of the page to generate a page address into the NAND. This
+ * differs when using a 512 byte or 2048 bytes per page NAND.
+ * The collumn part of the page address to be generated is always forced to '0'.
+ */
 static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs,
 					int ps, int c)
 {
-	send_addr(host, offs & 0xff);
-	send_addr(host, (offs >> 9) & 0xff);
-	send_addr(host, (offs >> 17) & 0xff);
-	send_addr(host, (offs >> 25) & 0xff);
+	send_addr(host, 0); /* collumn part 1 */
+
+	if (ps == 512) {
+		send_addr(host, offs >> 9);
+		send_addr(host, offs >> 17);
+		if (c > 3)
+			send_addr(host, offs >> 25);
+	} else {
+		send_addr(host, 0); /* collumn part 2 */
+		send_addr(host, offs >> 11);
+		send_addr(host, offs >> 19);
+		if (c > 4)
+			send_addr(host, offs >> 27);
+		send_cmd(host, NAND_CMD_READSTART);
+	}
 }
 
 /**
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
