Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYR-0003wh-RO
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:04 +0000
Received: by mail-lb0-f170.google.com with SMTP id u10so3711955lbd.1
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:20 +0400
Message-Id: <1410334946-12922-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/9] MIPS: xburst: add JZ4780 SoC support
To: barebox@lists.infradead.org

Old Ingenic SoCs (JZ4755, JZ4740) use MIPS32r1 ISA CPU cores
than latest ones (JZ4770, JZ4780) use MIPS32r2.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig             | 1 -
 arch/mips/mach-xburst/Kconfig | 7 +++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index bc68c67..40d5d83 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -82,7 +82,6 @@ config MACH_MIPS_LOONGSON
 
 config MACH_MIPS_XBURST
 	bool "Ingenic XBurst-based boards"
-	select SYS_HAS_CPU_MIPS32_R1
 	select SYS_SUPPORTS_LITTLE_ENDIAN
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select DRIVER_SERIAL_NS16550
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index f7b8470..4d57015 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -6,6 +6,13 @@ config ARCH_TEXT_BASE
 
 config CPU_JZ4755
 	bool
+	select SYS_HAS_CPU_MIPS32_R1
+	select WATCHDOG
+	select WATCHDOG_JZ4740
+
+config CPU_JZ4780
+	bool
+	select SYS_HAS_CPU_MIPS32_R2
 	select WATCHDOG
 	select WATCHDOG_JZ4740
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
