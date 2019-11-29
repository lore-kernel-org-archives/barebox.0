Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006fT-U4
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz7-0006u0-Si
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:05 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:29 +0100
Message-Id: <20191129151505.23946-4-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 03/39] ARM: move into ARM32 specific optee kernel start into
 lib32 dir
To: barebox@lists.infradead.org

Otherwise it may also get built on a ARM64 config, which obviously
fails.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/Makefile                        | 1 -
 arch/arm/lib32/Makefile                      | 1 +
 arch/arm/{cpu => lib32}/start-kernel-optee.S | 0
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm/{cpu => lib32}/start-kernel-optee.S (100%)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 09b3bc2eeab9..4b6e2384973e 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -15,7 +15,6 @@ pbl-$(CONFIG_BOARD_ARM_GENERIC_DT_AARCH64) += board-dt-2nd-aarch64.o
 
 obj-pbl-y += setupc$(S64).o cache$(S64).o
 
-obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
 obj-$(CONFIG_ARM_PSCI_CLIENT) += psci-client.o
 
 #
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index 3c02a0bf96d7..cd43147e662a 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
 obj-$(CONFIG_BOOTM)     += bootm.o
+obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
 obj-$(CONFIG_CMD_BOOTU) += bootu.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
diff --git a/arch/arm/cpu/start-kernel-optee.S b/arch/arm/lib32/start-kernel-optee.S
similarity index 100%
rename from arch/arm/cpu/start-kernel-optee.S
rename to arch/arm/lib32/start-kernel-optee.S
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
