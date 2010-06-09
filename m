Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMFLs-0001ZZ-1j
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 07:05:28 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 10:05:00 +0300
Message-Id: <d6ab8b960d4e16db3eb43418354bb4bc2a06f8bf.1276065824.git.baruch@tkos.co.il>
In-Reply-To: <cover.1276065824.git.baruch@tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
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
Subject: [PATCH 1/8] mx25 3ds: fix build failure
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

Remove redundant parameters from the imx_nand_load_image() call.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 board/freescale-mx25-3-stack/3stack.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
index f5316bf..6659185 100644
--- a/board/freescale-mx25-3-stack/3stack.c
+++ b/board/freescale-mx25-3-stack/3stack.c
@@ -320,7 +320,7 @@ console_initcall(imx25_console_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024, 2048, 16384);
+	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
 }
 #endif
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
