Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPr7R-0008Ib-T8
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 09:15:07 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 10 Apr 2013 11:14:44 +0200
Message-Id: <1365585295-2420-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
References: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v4 02/13] tegra: switch to proper CPU type
To: barebox@lists.infradead.org

Tegras main CPUs are all ARMv7.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index bb9b47b..dfb7e24 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -137,7 +137,7 @@ config ARCH_VEXPRESS
 
 config ARCH_TEGRA
 	bool "Nvidia Tegra-based boards"
-	select CPU_ARM926T
+	select CPU_V7
 	select HAS_DEBUG_LL
 
 config ARCH_ZYNQ
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
