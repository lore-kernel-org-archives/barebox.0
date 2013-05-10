Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uas5C-00037g-0a
 for barebox@lists.infradead.org; Fri, 10 May 2013 18:30:19 +0000
Received: from localhost.localdomain (tmo-104-228.customers.d1-online.com
 [80.187.104.228])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 2A9AC7D416E
 for <barebox@lists.infradead.org>; Fri, 10 May 2013 20:29:55 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 10 May 2013 20:29:49 +0200
Message-Id: <1368210589-21434-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] arm: properly init alignment trap bit
To: barebox@lists.infradead.org

On ARMv7 the intention is to disable the alignment trap to be able to
use hardware assisted unaligned load/stores. Fix the init to do the
right thing.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/include/asm/barebox-arm-head.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 9385415..9a8cc87 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -22,7 +22,7 @@ static inline void arm_cpu_lowlevel_init(void)
 
 #if __LINUX_ARM_ARCH__ >= 6
 	r |= CR_U;
-	r &= CR_A;
+	r &= ~CR_A;
 #else
 	r |= CR_A;
 #endif
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
