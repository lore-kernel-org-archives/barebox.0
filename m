Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRS89-0004Yy-IF
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 19:30:43 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  2 Oct 2013 21:30:11 +0200
Message-Id: <1380742211-2731-5-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
References: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 4/4] beaglebone: use most recent timings for white variant
To: barebox@lists.infradead.org

These values come from the U-Boot source code.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c |   14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 2ff7c71..e993c89 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -36,13 +36,13 @@ static const struct am33xx_cmd_control ddr2_cmd_ctrl = {
 };
 
 static const struct am33xx_emif_regs ddr2_regs = {
-	.emif_read_latency	= 0x5,
-	.emif_tim1		= 0x0666B3D6,
-	.emif_tim2		= 0x143731DA,
-	.emif_tim3		= 0x00000347,
-	.sdram_config		= 0x43805332,
-	.sdram_config2		= 0x43805332,
-	.sdram_ref_ctrl		= 0x0000081a,
+	.emif_read_latency	= 0x100005,
+	.emif_tim1		= 0x0666B3C9,
+	.emif_tim2		= 0x243631CA,
+	.emif_tim3		= 0x0000033F,
+	.sdram_config		= 0x41805332,
+	.sdram_config2		= 0x41805332,
+	.sdram_ref_ctrl		= 0x0000081A,
 };
 
 static const struct am33xx_ddr_data ddr2_data = {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
