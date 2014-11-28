Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMYG-0000WV-HZ
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:28:56 +0100
Message-Id: <1417184946-16128-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] ARM: Let MMU depend on !CPU_ARM946E
To: barebox@lists.infradead.org

CPU_ARM946E is selected by boards, so letting it depend on !MMU
leads to broken dependencies. Let MMU depend on !CPU_ARM946E instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Kconfig | 1 -
 common/Kconfig       | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index fb1a999..8934df0 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -42,7 +42,6 @@ config CPU_ARM926T
 # ARM946E-S
 config CPU_ARM946E
 	bool
-	depends on !MMU
 	select CPU_32v4T
 	help
 	  ARM946E-S is a member of the ARM9E-S family of high-
diff --git a/common/Kconfig b/common/Kconfig
index 5627980..21298c2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -145,6 +145,7 @@ source "pbl/Kconfig"
 
 config MMU
 	bool "Enable MMU"
+	depends on !CPU_ARM946E
 	help
 	  Saying yes here enables the MMU. This is useful on some architectures
 	  to enable the data cache which depends on the MMU. See Documentation/mmu.txt
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
