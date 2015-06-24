Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward6l.mail.yandex.net ([2a02:6b8:0:1819::6])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7kDu-0005gs-Pj
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 12:56:16 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Wed, 24 Jun 2015 15:57:27 +0300
Message-Id: <1435150649-10266-2-git-send-email-alllecs@yandex.ru>
In-Reply-To: <1435150649-10266-1-git-send-email-alllecs@yandex.ru>
References: <1435150649-10266-1-git-send-email-alllecs@yandex.ru>
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
Subject: [RFC V2 1/3] common: move DDR_SPD to common/Kconfig
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

This patch makes it possible to use ddr_spd-related
routines in any arch not only in ppc.

Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
---
 arch/ppc/mach-mpc85xx/Kconfig | 4 ----
 common/Kconfig                | 4 ++++
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index e29be9c..aa518b9 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -81,10 +81,6 @@ config P1022
 config MPC8544
 	bool
 
-config DDR_SPD
-	bool
-	select CRC16
-
 config FSL_DDR2
 	bool
 
diff --git a/common/Kconfig b/common/Kconfig
index 925fe4b..91e4ef3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -941,3 +941,7 @@ endmenu
 
 config HAS_DEBUG_LL
 	bool
+
+config DDR_SPD
+	bool
+	select CRC16
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
