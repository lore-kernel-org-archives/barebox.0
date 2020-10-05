Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPLWA-0003ay-TE
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 08:06:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Oct 2020 10:06:43 +0200
Message-Id: <20201005080643.25199-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] bootm: propagate register_image_handler return value
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While register_image_handler can't currently fail, it still returns an
error code. Propagate that error code along instead of having a blanket
return 0. This makes the code a little more compact.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/stm32image.c | 4 +---
 arch/arm/mach-zynq/bootm-zynqimg.c | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-stm32mp/stm32image.c b/arch/arm/mach-stm32mp/stm32image.c
index 84975c5c3bf1..207df6894d4e 100644
--- a/arch/arm/mach-stm32mp/stm32image.c
+++ b/arch/arm/mach-stm32mp/stm32image.c
@@ -43,8 +43,6 @@ static struct image_handler image_handler_stm32_image_v1_handler = {
 
 static int stm32mp_register_stm32image_image_handler(void)
 {
-	register_image_handler(&image_handler_stm32_image_v1_handler);
-
-	return 0;
+	return register_image_handler(&image_handler_stm32_image_v1_handler);
 }
 late_initcall(stm32mp_register_stm32image_image_handler);
diff --git a/arch/arm/mach-zynq/bootm-zynqimg.c b/arch/arm/mach-zynq/bootm-zynqimg.c
index e903ab667905..77ed6880e4b6 100644
--- a/arch/arm/mach-zynq/bootm-zynqimg.c
+++ b/arch/arm/mach-zynq/bootm-zynqimg.c
@@ -42,8 +42,6 @@ static struct image_handler zynq_image_handler = {
 
 static int zynq_register_image_handler(void)
 {
-	register_image_handler(&zynq_image_handler);
-
-	return 0;
+	return register_image_handler(&zynq_image_handler);
 }
 late_initcall(zynq_register_image_handler);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
