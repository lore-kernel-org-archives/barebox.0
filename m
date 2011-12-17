Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rbvca-0003Wp-6i
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:52:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Dec 2011 15:52:06 +0100
Message-Id: <1324133529-2036-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] ARM cache-armv7: use thumb-2 instructions where necessary
To: barebox@lists.infradead.org

Copied from the Kernel

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv7.S |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 5b8491e..f25dcfa 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -84,8 +84,12 @@ loop1:
 loop2:
 		mov	r9, r4			@ create working copy of max way size
 loop3:
-		orr	r11, r10, r9, lsl r5	@ factor way and cache number into r11
-		orr	r11, r11, r7, lsl r2	@ factor index number into r11
+ARM(		orr	r11, r10, r9, lsl r5	) @ factor way and cache number into r11
+ARM(		orr	r11, r11, r7, lsl r2	) @ factor index number into r11
+THUMB(		lsl	r6, r9, r5		)
+THUMB(		orr	r11, r10, r6		) @ factor way and cache number into r11
+THUMB(		lsl	r6, r7, r2		)
+THUMB(		orr	r11, r11, r6		) @ factor index number into r11
 		mcr	p15, 0, r11, c7, c14, 2	@ clean & invalidate by set/way
 		subs	r9, r9, #1		@ decrement the way
 		bge	loop3
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
