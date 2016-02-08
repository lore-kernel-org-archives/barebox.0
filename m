Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSirF-0007e1-NP
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 10:15:52 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon,  8 Feb 2016 11:15:23 +0100
Message-Id: <1454926524-6210-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] i.MX habv3: sort hab status codes numerically
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/hab/habv3.c | 44 ++++++++++++++++++++++----------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/hab/habv3.c b/drivers/hab/habv3.c
index 70f31a3c4d98..204b9095b393 100644
--- a/drivers/hab/habv3.c
+++ b/drivers/hab/habv3.c
@@ -20,35 +20,35 @@ struct hab_status {
 };
 
 static struct hab_status hab_status[] = {
-	{ 0x8d, "data specified is out of bounds" },
-	{ 0x55, "error during assert verification" },
-	{ 0x36, "hash verification failed" },
-	{ 0x33, "certificate parsing failed or the certificate contained an unsupported key" },
-	{ 0x35, "signature verification failed" },
-	{ 0x4B, "CSF command sequence contains unsupported command identifier" },
-	{ 0x4e, "absence of expected CSF header" },
-	{ 0x4d, "CSF length is unsupported" },
-	{ 0x2e, "CSF TYPE does not match processor TYPE" },
-	{ 0x2d, "CSF UID does not match either processor UID or generic UID" },
-	{ 0x3a, "CSF customer/product code does not match processor customer/product code" },
-	{ 0x87, "key indexis either unsupported, or an attempt is made to overwrite the SRK from a CSF command" },
 	{ 0x17, "SCC unexpectedly not in secure state" },
-	{ 0x1e, "secureRAM secret key invalid" },
-	{ 0x1d, "secureRAM initialization failure" },
 	{ 0x1b, "secureRAM self test failure" },
-	{ 0x2b, "secureRAM internal failure" },
+	{ 0x1d, "secureRAM initialization failure" },
+	{ 0x1e, "secureRAM secret key invalid" },
 	{ 0x27, "secureRAM secrect key unexpectedly in use" },
-	{ 0x8b, "an attempt is made to read a key from the list of subordinate public keys at a location "
-		"where no key is installed" },
-	{ 0x8e, "algorithm type is either invalid or ortherwise unsupported" },
-	{ 0x66, "write operation to register failed" },
+	{ 0x2b, "secureRAM internal failure" },
+	{ 0x2d, "CSF UID does not match either processor UID or generic UID" },
+	{ 0x2e, "CSF TYPE does not match processor TYPE" },
+	{ 0x33, "certificate parsing failed or the certificate contained an unsupported key" },
+	{ 0x35, "signature verification failed" },
+	{ 0x36, "hash verification failed" },
+	{ 0x3a, "CSF customer/product code does not match processor customer/product code" },
+	{ 0x4b, "CSF command sequence contains unsupported command identifier" },
+	{ 0x4d, "CSF length is unsupported" },
+	{ 0x4e, "absence of expected CSF header" },
+	{ 0x55, "error during assert verification" },
 	{ 0x63, "DCD invalid" },
-	{ 0x6f, "RAM application pointer is NULL or ERASED_FLASH" },
+	{ 0x66, "write operation to register failed" },
+	{ 0x67, "INT_BOOT fuse is blown but BOOT pins are set for external boot" },
 	{ 0x69, "CSF missing when HAB TYPE is not HAB-disabled" },
 	{ 0x6a, "NANDFC boot buffer load failed" },
 	{ 0x6c, "Exception has occured" },
-	{ 0x67, "INT_BOOT fuse is blown but BOOT pins are set for external boot" },
+	{ 0x6f, "RAM application pointer is NULL or ERASED_FLASH" },
+	{ 0x87, "key indexis either unsupported, or an attempt is made to overwrite the SRK from a CSF command" },
 	{ 0x88, "Successful download completion" },
+	{ 0x8b, "an attempt is made to read a key from the list of subordinate public keys at a location "
+	  "where no key is installed" },
+	{ 0x8d, "data specified is out of bounds" },
+	{ 0x8e, "algorithm type is either invalid or ortherwise unsupported" },
 };
 
 int imx_habv3_get_status(uint32_t status)
@@ -75,4 +75,4 @@ int imx_habv3_get_status(uint32_t status)
 int imx25_hab_get_status(void)
 {
 	return imx_habv3_get_status(readl(IOMEM(0x780018d4)));
-}
\ No newline at end of file
+}
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
