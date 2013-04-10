Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPr7S-0008Ie-AP
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 09:15:08 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 10 Apr 2013 11:14:47 +0200
Message-Id: <1365585295-2420-5-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v4 05/13] tegra: move default textbase
To: barebox@lists.infradead.org

All available opensource tools and published BCT configurations use
0x10800 as the default textbase on Tegra 20.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index f91267f..2f15b27 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -14,7 +14,7 @@ if ARCH_TEGRA_2x_SOC
 
 config ARCH_TEXT_BASE
 	hex
-	default 0x31fc0000
+	default 0x00108000
 
 choice
 	prompt "Tegra 20 Board Type"
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
