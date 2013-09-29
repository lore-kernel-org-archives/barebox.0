Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN7n-00023X-5F
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:51 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id 5DE6726C2004
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:11 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:35 +0200
Message-Id: <1380484776-32266-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
References: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 7/8] tegra: ac100: delete custom Kconfig
To: barebox@lists.infradead.org

Now that tegra arch is both DT only and forced relocatable
there is nothing interesting left in here.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/toshiba-ac100/Kconfig | 7 -------
 arch/arm/mach-tegra/Kconfig           | 2 --
 2 files changed, 9 deletions(-)
 delete mode 100644 arch/arm/boards/toshiba-ac100/Kconfig

diff --git a/arch/arm/boards/toshiba-ac100/Kconfig b/arch/arm/boards/toshiba-ac100/Kconfig
deleted file mode 100644
index 1cc13f0..0000000
--- a/arch/arm/boards/toshiba-ac100/Kconfig
+++ /dev/null
@@ -1,7 +0,0 @@
-if MACH_TOSHIBA_AC100
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x01000000
-
-endif
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 90c0c0f..4363bce 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -64,8 +64,6 @@ if MACH_TEGRA20_GENERIC
 
 endif #MACH_TEGRA20_GENERIC
 
-source arch/arm/boards/toshiba-ac100/Kconfig
-
 # ---------------------------------------------------------
 
 endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
