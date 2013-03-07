Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDY8k-00033l-1C
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 10:33:37 +0000
Received: from antimon.pengutronix.de (port-212-202-120-50.static.qsc.de
 [212.202.120.50])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 4FEC37D4419
 for <barebox@lists.infradead.org>; Thu,  7 Mar 2013 11:33:29 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Mar 2013 11:33:19 +0100
Message-Id: <1362652402-2985-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1362652402-2985-1-git-send-email-dev@lynxeye.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 2/5] tegra: switch to ARMv7 cpu type
To: barebox@lists.infradead.org

Main barebox is running on the A9 cluster. Use the correct ISA.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7ac134e..5dbf74d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -125,7 +125,7 @@ config ARCH_VEXPRESS
 
 config ARCH_TEGRA
 	bool "Nvidia Tegra-based boards"
-	select CPU_ARM926T
+	select CPU_V7
 	select HAS_DEBUG_LL
 
 endchoice
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
