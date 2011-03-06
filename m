Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwLtE-0002vf-RH
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 21:53:26 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun,  6 Mar 2011 22:53:17 +0100
Message-Id: <1299448398-5672-5-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/5] S3C2440/NAND: Re-enable the controller after NAND boot
	test
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

After running the 'nand_boot_test' command, any usage of the NAND fails with
an IO error. This happens due to the load routine disables the NAND controller
after loading the image.

This patch re-enables the NAND controller again after running the test.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 drivers/mtd/nand/nand_s3c2410.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index e298771..7d7ff46 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -611,6 +611,10 @@ static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
 
 	s3c24x0_nand_load_image(dest, size, 0);
 
+	/* re-enable the controller again, as this was a test only */
+	enable_nand_controller((void *)S3C24X0_NAND_BASE,
+				BOARD_DEFAULT_NAND_TIMING);
+
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
