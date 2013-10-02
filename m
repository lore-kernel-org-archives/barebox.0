Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRS89-0004Yw-IK
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 19:30:44 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  2 Oct 2013 21:30:08 +0200
Message-Id: <1380742211-2731-2-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/4] am33xx_generic: convert from switch to if/else
To: barebox@lists.infradead.org

The function am33xx_get_cpu_rev may be called before barebox_arm_entry(),
so we need to avoid switch statements. One example is the BeagleBone,
where we use this function to differenciate between the white and black
variants.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_generic.c |   31 +++++++++++--------------------
 1 file changed, 11 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 3690ce1..251c8d4 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -43,30 +43,21 @@ void __noreturn reset_cpu(unsigned long addr)
  * The significance of the CPU revision depends upon the cpu type.
  * Latest known revision is considered default.
  *
+ * This function is called before barebox_arm_entry(), so avoid switch
+ * statements.
+ *
  * @return silicon version
  */
 u32 am33xx_get_cpu_rev(void)
 {
-	u32 version, retval;
-
-	version = (readl(AM33XX_IDCODE_REG) >> 28) & 0xF;
-
-	switch (version) {
-	case 0:
-		retval = AM335X_ES1_0;
-		break;
-	case 1:
-		retval = AM335X_ES2_0;
-		break;
-	case 2:
-		/*
-		 * Fall through the default case.
-		 */
-	default:
-		retval = AM335X_ES2_1;
-	}
-
-	return retval;
+	u32 version = (readl(AM33XX_IDCODE_REG) >> 28) & 0xF;
+
+	if (version == 0)
+		return AM335X_ES1_0;
+	else if (version == 1)
+		return AM335X_ES2_0;
+	else
+		return AM335X_ES2_1;
 }
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
