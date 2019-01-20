Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp60.i.mail.ru ([217.69.128.40])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gl480-0007rL-O9
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 03:50:36 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 06:50:23 +0300
Message-Id: <20190120035024.18282-2-shc_work@mail.ru>
In-Reply-To: <20190120035024.18282-1-shc_work@mail.ru>
References: <20190120035024.18282-1-shc_work@mail.ru>
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
Subject: [PATCH 2/3] ARM: omap: Remove reference to non-existent
 HAVE_DEFAULT_ENVIRONMENT_NEW symbol
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-omap/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index e793175..49ca0ee 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -186,7 +186,6 @@ config MACH_VSCOM_BALTOS
 config MACH_WAGO_PFC_AM35XX
         bool "Wago PFC200 Fieldbus Controller"
         select ARCH_AM35XX
-        select HAVE_DEFAULT_ENVIRONMENT_NEW
         select HAVE_PBL_MULTI_IMAGES
         select HAVE_CONFIGURABLE_MEMORY_LAYOUT
         help
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
