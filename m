Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSf-0000tT-8t
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id z17-v6so1301185pgv.3
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:55 -0700
Message-Id: <20181027013157.23135-10-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/11] VF610: zii-vf610-dev: Drop switch reset GPIO
 configuration
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This GPIO is controlled by MV88E6xxx driver, so there's no need to
explicitly configure this GPIO.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 275d0a432..a8fa1ef61 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -63,11 +63,6 @@ late_initcall(zii_vf610_cfu1_expose_signals);
 static int zii_vf610_cfu1_spu3_expose_signals(void)
 {
 	static const struct gpio signals[] = {
-		{
-			.gpio  = 107,
-			.flags  = GPIOF_OUT_INIT_HIGH,
-			.label = "soc_sw_rstn",
-		},
 		{
 			.gpio  = 98,
 			.flags = GPIOF_IN,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
