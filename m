Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosA-00067z-BO
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 74/78] ARM: build: Remove duplicate file compilation
Date: Fri, 16 Mar 2018 13:53:50 +0100
Message-Id: <20180316125354.23462-75-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

cache.o is already obj-y, drop unnecessary obj-$(CONFIG_MMU)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index eb783481ea..edd4a290ca 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -18,7 +18,6 @@ obj-pbl-y += setupc$(S64).o
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
 obj-$(CONFIG_OFDEVICE) += dtb.o
-obj-$(CONFIG_MMU) += cache.o
 
 ifeq ($(CONFIG_MMU),)
 obj-y += no-mmu.o
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
