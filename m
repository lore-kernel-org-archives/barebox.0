Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UWJDM-00069N-5x
 for barebox@lists.infradead.org; Sun, 28 Apr 2013 04:27:54 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 28 Apr 2013 08:27:29 +0400
Message-Id: <1367123249-24119-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
References: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/4] ARM: imx: Fix incorrect Kconfig symbols for some boards
To: barebox@lists.infradead.org

This patch fix incorrect Kconfig symbols for MACH_FREESCALE_MX51_PDK,
MACH_FREESCALE_MX53_LOCO and MACH_FREESCALE_MX53_SMD.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 8ddec9d..eee6acd 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -17,9 +17,9 @@ config ARCH_TEXT_BASE
 	default 0x87f00000 if MACH_PCM043
 	default 0x08f80000 if MACH_SCB9328
 	default 0xa7e00000 if MACH_NESO
-	default 0x97f00000 if MACH_MX51_PDK
-	default 0x7ff00000 if MACH_MX53_LOCO
-	default 0x7ff00000 if MACH_MX53_SMD
+	default 0x97f00000 if MACH_FREESCALE_MX51_PDK
+	default 0x7ff00000 if MACH_FREESCALE_MX53_LOCO
+	default 0x7ff00000 if MACH_FREESCALE_MX53_SMD
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
 	default 0x7ff00000 if MACH_TQMA53
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
