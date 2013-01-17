Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvluu-0001sT-CD
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 09:37:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Jan 2013 10:37:42 +0100
Message-Id: <1358415464-4657-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
References: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM Ka-Ro TX25: fix compilation with external NAND boot
 enabled
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/lowlevel.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index d0afad2..6f17958 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -31,8 +31,6 @@
 #ifdef CONFIG_NAND_IMX_BOOT
 static void __bare_init __naked insdram(void)
 {
-	uint32_t r;
-
 	/* setup a stack to be able to call imx_nand_load_image() */
 	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
@@ -71,6 +69,7 @@ void __bare_init __naked reset(void)
 	uint32_t r;
 #ifdef CONFIG_NAND_IMX_BOOT
 	unsigned int *trg, *src;
+	int i;
 #endif
 
 	common_reset();
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
