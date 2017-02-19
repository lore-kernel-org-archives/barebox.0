Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfWgt-0005m8-8c
 for barebox@lists.infradead.org; Sun, 19 Feb 2017 18:58:37 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 19 Feb 2017 19:57:48 +0100
Message-Id: <1487530668-7575-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM: i.MX50: do not pass base address to imx53_boot_save_loc
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

This is a follow-up on commit cf3dfafff4cb.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/imx50.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
index fb278a5..d6ff6df 100644
--- a/arch/arm/mach-imx/imx50.c
+++ b/arch/arm/mach-imx/imx50.c
@@ -50,7 +50,7 @@ static int imx50_silicon_revision(void)
 int imx50_init(void)
 {
 	imx50_silicon_revision();
-	imx53_boot_save_loc((void *)MX50_SRC_BASE_ADDR);
+	imx53_boot_save_loc();
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
