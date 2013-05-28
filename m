Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhFVG-000800-RW
 for barebox@lists.infradead.org; Tue, 28 May 2013 08:43:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 May 2013 10:43:10 +0200
Message-Id: <1369730590-12904-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX53 vincell: Fix lowlevel startup
To: barebox@lists.infradead.org

This is a i.MX53 board, not i.MX51.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/lowlevel.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index ee7aafd..534e506 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -132,7 +132,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x70000000 && r < 0xf0000000)
-		imx51_barebox_entry(0);
+		imx53_barebox_entry(0);
 
 	/* Setup a preliminary stack */
 	r = 0xf8000000 + 0x60000 - 16;
@@ -146,5 +146,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	imx_esdctlv4_init();
 
-	imx51_barebox_entry(0);
+	imx53_barebox_entry(0);
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
