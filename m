Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKv-0003Uq-Cn
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:20:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:53 +0200
Message-Id: <20191014121901.19471-5-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/12] ARM: at91: don't define ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 for multi-image
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Since ed04a7c3 ("pbl multiimage: Allow to check image sizes"), we can
now check sizes per entry point, so no need to a Kconfig symbol that
applies to all boards for that. Thus drop the Kconfig symbol for
multi-image, so per-entry-point max image sizes can follow in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 3f24892be78d..668ace6f0bbc 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -222,6 +222,16 @@ config ARCH_SAMA5D4
 
 endchoice
 
+config SUPPORT_CALAO_DAB_MMX
+	bool
+
+config SUPPORT_CALAO_MOB_TNY_MD2
+	bool
+
+if !AT91_MULTI_BOARDS
+
+# ----------------------------------------------------------
+
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
 	default 0x1000 if ARCH_AT91SAM9260
@@ -235,16 +245,6 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	default 0x6000 if ARCH_SAMA5D3
 	default 0xffffffff
 
-config SUPPORT_CALAO_DAB_MMX
-	bool
-
-config SUPPORT_CALAO_MOB_TNY_MD2
-	bool
-
-if !AT91_MULTI_BOARDS
-
-# ----------------------------------------------------------
-
 if ARCH_AT91RM9200
 
 choice
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
