Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gI980-0006Rs-C5
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 09:19:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gI97m-0003fn-CP
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 10:18:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 Nov 2018 10:18:36 +0100
Message-Id: <20181101091846.10882-1-l.stach@pengutronix.de>
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
Subject: [PATCH v4 01/11] ARM: pass architecture flag for SMCC also to PBL
 compilation unit
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 874d723e2cee..374b7cda4c77 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -23,6 +23,7 @@ endif
 obj-$(CONFIG_ARM_PSCI) += psci.o
 obj-pbl-$(CONFIG_ARM_SMCCC) += smccc-call$(S64).o
 AFLAGS_smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
+AFLAGS_pbl-smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
 obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
 AFLAGS_sm_as.o		:=-Wa,-march=armv7-a
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
