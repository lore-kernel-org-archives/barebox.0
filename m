Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzJ-0006RE-31
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz9-0006u0-MY
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:52 +0100
Message-Id: <20191129151505.23946-27-l.stach@pengutronix.de>
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
Subject: [PATCH 26/39] ARM: PBL break is not available on ARMv4
To: barebox@lists.infradead.org

ARMv4 does not support the bkpt mnemonic. Rather than trying to work
around this, just disable this feature for ARMv4. On Tegra the PBL
runs on the ARM720T co-processor, so we also need to disable the option
for this SoC architecture.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index d397d8bc4d4d..60237d305676 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1309,7 +1309,7 @@ config DEBUG_INITCALLS
 
 config PBL_BREAK
 	bool "Execute software break on pbl start"
-	depends on ARM
+	depends on ARM && (!CPU_32v4T && !ARCH_TEGRA)
 	help
 	  If this enabled, barebox will be compiled with BKPT instruction
 	  on early pbl init. This option should be used only with JTAG debugger!
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
