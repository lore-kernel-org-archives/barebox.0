Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp31.i.mail.ru ([94.100.177.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vg5r3-0002TQ-7I
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 04:45:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 12 Nov 2013 08:45:02 +0400
Message-Id: <1384231502-1101-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1384231502-1101-1-git-send-email-shc_work@mail.ru>
References: <1384231502-1101-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] ARM: i.MX boards: Remove duplicate dependency of
 ARCH_IMX21 for IMX_IIM
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 33108ac..e3fd6bd 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -562,7 +562,7 @@ config ARCH_IMX_USBLOADER
 
 config IMX_IIM
 	tristate "IIM fusebox device"
-	depends on !ARCH_IMX21 && !ARCH_IMX21
+	depends on !ARCH_IMX21
 	help
 	  Device driver for the IC Identification Module (IIM) fusebox. Use the
 	  regular md/mw commands to program and read the fusebox.
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
