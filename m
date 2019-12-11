Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8DD-0006ww-6O
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 20:03:56 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 11 Dec 2019 21:02:45 +0100
Message-Id: <20191211200243.21164-2-rhi@pengutronix.de>
In-Reply-To: <20191211200243.21164-1-rhi@pengutronix.de>
References: <20191211200243.21164-1-rhi@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: omap: reword MACH_WAGO_PFC_AM35XX kconfig help text
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

Better differenciate it from the new MACH_WAGO_PFC_AM335X above it, and
fix indentation to be consistent with the rest of the file.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 6f8f4473a36f..239872726a96 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -191,12 +191,13 @@ config MACH_WAGO_PFC_AM335X
 	  PFC200 750-821x
 
 config MACH_WAGO_PFC_AM35XX
-        bool "Wago PFC200 Fieldbus Controller"
-        select ARCH_AM35XX
-        select HAVE_PBL_MULTI_IMAGES
-        select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-        help
-          Say Y here if you are using a the AM3505 based PFC200 controller
+	bool "Wago PFC200 Fieldbus Controller (AM3505 based)"
+	select ARCH_AM35XX
+	select HAVE_PBL_MULTI_IMAGES
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	help
+	  Say Y here if you are using an AM3505 based PFC200 controller, like
+	  PFC200 750-820x
 
 endif
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
