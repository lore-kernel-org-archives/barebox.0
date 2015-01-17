Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCTuZ-00067X-0i
 for barebox@lists.infradead.org; Sat, 17 Jan 2015 13:59:37 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 17 Jan 2015 14:58:51 +0100
Message-Id: <1421503131-24840-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1421503131-24840-1-git-send-email-robert.jarzmik@free.fr>
References: <1421503131-24840-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 2/2] ARM: pxa: fix pxa310 config
To: barebox@lists.infradead.org

This is a 2 fold small fix patch for pxa3xx architecture :
  - the ARCH_PXA310 was forgotten from the KConfig, breaking the
    zylonite 310 board.
  - the TEXT_BASE is moved to the end of memory, making room for more
    malloc space, to flash big UBI filesystem images

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 63f148b..b36e720 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -4,7 +4,7 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0000000 if MACH_MIOA701
 	default 0xa3f00000 if MACH_PCM027
-	default 0x81000000 if MACH_ZYLONITE
+	default 0x83f00000 if MACH_ZYLONITE
 
 # ----------------------------------------------------------
 
@@ -16,6 +16,9 @@ config ARCH_PXA3XX
        bool
        select CPU_XSC3
 
+config ARCH_PXA310
+       bool
+
 choice
 	prompt "Intel/Marvell PXA Processor"
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
