Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RoLxa-0001kk-A4
 for barebox@lists.infradead.org; Fri, 20 Jan 2012 21:25:23 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 20 Jan 2012 22:25:03 +0100
Message-Id: <1327094703-6958-4-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
References: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM pca-a-l1: should depend on ARCH_OMAP3
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/mach-omap/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index ecdabb0..50f53dd 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -152,6 +152,7 @@ config MACH_PCAAL1
 	bool "Phytec phyCARD-A-L1"
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
+	depends on ARCH_OMAP3
 	  help
 	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
