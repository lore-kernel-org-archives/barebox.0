Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XcK1f-0002F0-5x
 for barebox@lists.infradead.org; Thu, 09 Oct 2014 20:09:27 +0000
Received: by mail-la0-f47.google.com with SMTP id pv20so1950097lab.6
 for <barebox@lists.infradead.org>; Thu, 09 Oct 2014 13:09:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 10 Oct 2014 00:08:56 +0400
Message-Id: <1412885337-1544-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1412885337-1544-1-git-send-email-antonynpavlov@gmail.com>
References: <1412885337-1544-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] mips: qemu-malta: add little-endian mode support
To: barebox@lists.infradead.org

We can't just enable SYS_SUPPORTS_LITTLE_ENDIAN for successful
little-endian qemu-malta barebox build. Some byte swapping-related
macros are missed, e.g.:

    arch/mips/mach-malta/pci.c: In function 'pcibios_init':
    arch/mips/mach-malta/pci.c:218:28: error: 'GT_PCI0_CMD_MBYTESWAP_BIT'
    undeclared (first use in this function)
    GT_WRITE(GT_PCI0_CMD_OFS, GT_PCI0_CMD_MBYTESWAP_BIT |
                              ^

This patch adds necessary macros definition.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig               | 1 +
 arch/mips/include/asm/gt64120.h | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 40d5d83..ed6e1ab 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -43,6 +43,7 @@ config MACH_MIPS_MALTA
 	select SYS_HAS_CPU_MIPS32_R2
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select SYS_SUPPORTS_BIG_ENDIAN
+	select SYS_SUPPORTS_LITTLE_ENDIAN
 	select HAS_DEBUG_LL
 	select GPIOLIB
 	select HW_HAS_PCI
diff --git a/arch/mips/include/asm/gt64120.h b/arch/mips/include/asm/gt64120.h
index 7e783c8..88fa1fa 100644
--- a/arch/mips/include/asm/gt64120.h
+++ b/arch/mips/include/asm/gt64120.h
@@ -76,6 +76,13 @@
 #define GT_PCI0_CFGADDR_CONFIGEN_MSK	(MSK(1) << GT_PCI0_CFGADDR_CONFIGEN_SHF)
 #define GT_PCI0_CFGADDR_CONFIGEN_BIT	GT_PCI0_CFGADDR_CONFIGEN_MSK
 
+#define GT_PCI0_CMD_MBYTESWAP_SHF       0
+#define GT_PCI0_CMD_MBYTESWAP_MSK       (MSK(1) << GT_PCI0_CMD_MBYTESWAP_SHF)
+#define GT_PCI0_CMD_MBYTESWAP_BIT       GT_PCI0_CMD_MBYTESWAP_MSK
+#define GT_PCI0_CMD_SBYTESWAP_SHF       16
+#define GT_PCI0_CMD_SBYTESWAP_MSK       (MSK(1) << GT_PCI0_CMD_SBYTESWAP_SHF)
+#define GT_PCI0_CMD_SBYTESWAP_BIT       GT_PCI0_CMD_SBYTESWAP_MSK
+
 /*
  * Because of an error/peculiarity in the Galileo chip, we need to swap the
  * bytes when running bigendian.  We also provide non-swapping versions.
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
