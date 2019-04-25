Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJfWl-0000ti-7R
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 14:39:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hJfWj-00070w-Ex
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 16:39:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC6)
 (envelope-from <afa@pengutronix.de>) id 1hJfWj-0007Mj-6F
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 16:39:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Apr 2019 16:38:56 +0200
Message-Id: <20190425143856.19917-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190425143232.25405-3-a.fatoum@pengutronix.de>
References: <20190425143232.25405-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/4] fixup! ARM: cache-armv7: start invalidation from outer
 levels
To: barebox@lists.infradead.org

---
 arch/arm/cpu/cache-armv7.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 21e189cda1d7..6a8aff8bb12c 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -130,7 +130,7 @@ inval_check:
 		cmp	r12, #0
 		sub	r12, r12, #2		@ decrement cache number
 loop_end_check:
-		dsb
+		dsb				@ work-around Cortex-A7 erratum 814220
 		bgt	loop1
 finished:
 		ldmfd	sp!, {r4-r11}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
