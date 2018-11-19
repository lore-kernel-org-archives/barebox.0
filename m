Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfB6-0003Ep-24
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:46 +0100
Message-Id: <20181119084454.17599-5-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/12] ARM: samsung: provide prototype for nand_boot()
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h b/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
index f9c6d91b5b..52642ee81f 100644
--- a/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
@@ -52,4 +52,6 @@ struct s3c24x0_nand_platform_data {
  * @brief Basic declaration to use the s3c24x0 NAND driver
  */
 
+void nand_boot(void);
+
 #endif /* MACH_S3C24XX_NAND_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
