Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpx23-0001Wp-IZ
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 13:07:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cpx1g-0007Bl-RE
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 14:07:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Mar 2017 14:07:06 +0100
Message-Id: <20170320130708.15741-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: add AFLAGS for secure monitor files
To: barebox@lists.infradead.org

The instructions used in those files are only supported on ARMv7.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 13b4f9590d21..13fe12c31f6f 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -36,7 +36,9 @@ endif
 
 obj-$(CONFIG_ARM_PSCI) += psci.o
 obj-$(CONFIG_ARM_SECURE_MONITOR) += smccc-call.o
+AFLAGS_smccc-call.o	:=-Wa,-march=armv7-a
 obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
+AFLAGS_sm_as.o		:=-Wa,-march=armv7-a
 
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
 pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
