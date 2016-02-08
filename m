Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSirF-0007e3-Mm
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 10:15:51 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon,  8 Feb 2016 11:15:24 +0100
Message-Id: <1454926524-6210-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1454926524-6210-1-git-send-email-mkl@pengutronix.de>
References: <1454926524-6210-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] i.MX habv3: add some more status codes
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/hab/habv3.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/hab/habv3.c b/drivers/hab/habv3.c
index 204b9095b393..82ae245f8a03 100644
--- a/drivers/hab/habv3.c
+++ b/drivers/hab/habv3.c
@@ -20,6 +20,7 @@ struct hab_status {
 };
 
 static struct hab_status hab_status[] = {
+	{ 0x12, "Download code can't be executed, please check the HAB type" },
 	{ 0x17, "SCC unexpectedly not in secure state" },
 	{ 0x1b, "secureRAM self test failure" },
 	{ 0x1d, "secureRAM initialization failure" },
@@ -31,11 +32,14 @@ static struct hab_status hab_status[] = {
 	{ 0x33, "certificate parsing failed or the certificate contained an unsupported key" },
 	{ 0x35, "signature verification failed" },
 	{ 0x36, "hash verification failed" },
+	{ 0x39, "Failure not matching any other description" },
 	{ 0x3a, "CSF customer/product code does not match processor customer/product code" },
+	{ 0x47, "installation or comparison of SRKs failed" },
 	{ 0x4b, "CSF command sequence contains unsupported command identifier" },
 	{ 0x4d, "CSF length is unsupported" },
 	{ 0x4e, "absence of expected CSF header" },
 	{ 0x55, "error during assert verification" },
+	{ 0x56, "Download code can't be executed, please check the HAB type" },
 	{ 0x63, "DCD invalid" },
 	{ 0x66, "write operation to register failed" },
 	{ 0x67, "INT_BOOT fuse is blown but BOOT pins are set for external boot" },
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
