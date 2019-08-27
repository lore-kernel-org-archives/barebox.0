Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d66-00088C-Uq
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:30 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 1FEB5200019
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:24 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:10 +0200
Message-Id: <20190827150918.16247-3-ahmad@a3f.at>
In-Reply-To: <20190827150918.16247-1-ahmad@a3f.at>
References: <20190827150918.16247-1-ahmad@a3f.at>
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
Subject: [PATCH v2 02/10] Kconfig: create Kconfig symbol for
 ARCH_HAS_DATA_ABORT_MASK
To: barebox@lists.infradead.org

Other arch-specific features are exposed in Kconfig too, so do here
likewise.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/Kconfig                | 1 +
 arch/arm/include/asm/barebox.h  | 4 ----
 arch/mips/Kconfig               | 1 +
 arch/mips/include/asm/barebox.h | 2 --
 include/abort.h                 | 2 +-
 lib/Kconfig                     | 3 +++
 6 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 95ec2d9079ca..b227bb78b64f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -417,6 +417,7 @@ config ARM_OPTIMZED_STRING_FUNCTIONS
 	  increase your binary size.
 
 config ARM_EXCEPTIONS
+	select ARCH_HAS_DATA_ABORT_MASK
 	bool "enable arm exception handling support"
 	default y
 
diff --git a/arch/arm/include/asm/barebox.h b/arch/arm/include/asm/barebox.h
index 38d3a0943e18..c1b56432ccfc 100644
--- a/arch/arm/include/asm/barebox.h
+++ b/arch/arm/include/asm/barebox.h
@@ -1,8 +1,4 @@
 #ifndef _BAREBOX_H_
 #define _BAREBOX_H_	1
 
-#ifdef CONFIG_ARM_EXCEPTIONS
-#define ARCH_HAS_DATA_ABORT_MASK
-#endif
-
 #endif	/* _BAREBOX_H_ */
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 728295d486a6..1395ad4c6f01 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -10,6 +10,7 @@ config MIPS
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DMA
+	select ARCH_HAS_DATA_ABORT_MASK
 	select ELF
 	default y
 
diff --git a/arch/mips/include/asm/barebox.h b/arch/mips/include/asm/barebox.h
index 2d13ee932f20..4c68e3f8354d 100644
--- a/arch/mips/include/asm/barebox.h
+++ b/arch/mips/include/asm/barebox.h
@@ -3,6 +3,4 @@
 #ifndef _ASM_MIPS_BAREBOX_H_
 #define _ASM_MIPS_BAREBOX_H_
 
-#define ARCH_HAS_DATA_ABORT_MASK
-
 #endif /* _ASM_MIPS_BAREBOX_H_ */
diff --git a/include/abort.h b/include/abort.h
index 326467c25f70..3eb7986f41c4 100644
--- a/include/abort.h
+++ b/include/abort.h
@@ -3,7 +3,7 @@
 
 #include <asm/barebox.h>
 
-#if defined ARCH_HAS_DATA_ABORT_MASK && !defined __PBL__
+#if defined CONFIG_ARCH_HAS_DATA_ABORT_MASK && !defined __PBL__
 
 /*
  * data_abort_mask - ignore data aborts
diff --git a/lib/Kconfig b/lib/Kconfig
index 53289e696509..b64885ac93ef 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -168,4 +168,7 @@ config BLOBGEN
 config ARCH_HAS_STACK_DUMP
 	bool
 
+config ARCH_HAS_DATA_ABORT_MASK
+	bool
+
 endmenu
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
