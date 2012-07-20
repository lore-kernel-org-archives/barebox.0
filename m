Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss78V-0007wj-TH
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 06:56:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ss78M-0007k1-73
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:56:18 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Ss78M-0006Ze-5x
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:56:18 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Jul 2012 08:56:15 +0200
Message-Id: <1342767377-24735-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342767377-24735-1-git-send-email-jbe@pengutronix.de>
References: <1342767377-24735-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/3] ARM/Samsung: be able to include the nand header multiple
 times
To: barebox@lists.infradead.org

This is required in preparation for the following patches.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h b/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
index acd78b8..fa88da1 100644
--- a/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
@@ -18,6 +18,9 @@
  *
  */
 
+#ifndef MACH_S3C24XX_NAND_H
+# define MACH_S3C24XX_NAND_H
+
 #ifdef CONFIG_S3C_NAND_BOOT
 extern void s3c24x0_nand_load_image(void*, int, int);
 #endif
@@ -52,3 +55,5 @@ struct s3c24x0_nand_platform_data {
  * @file
  * @brief Basic declaration to use the s3c24x0 NAND driver
  */
+
+#endif /* MACH_S3C24XX_NAND_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
