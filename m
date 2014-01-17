Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axf-0003Io-Jq
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:18 +0100
Message-Id: <1389971012-22977-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/22] ARM: Fix image size calculation for
 CONFIG_PBL_RELOCATABLE
To: barebox@lists.infradead.org

TEXT_BASE - SZ_2M is only used for non relocable pbl images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 1eae829..0954c89 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -24,15 +24,17 @@
 #include <asm-generic/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 
+#ifdef CONFIG_PBL_RELOCATABLE
+#define BASE	0x0
+#else
+#define BASE	(TEXT_BASE - SZ_2M)
+#endif
+
 OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
 OUTPUT_ARCH(arm)
 SECTIONS
 {
-#ifdef CONFIG_PBL_RELOCATABLE
-	. = 0x0;
-#else
-	. = TEXT_BASE - SZ_2M;
-#endif
+	. = BASE;
 
 	PRE_IMAGE
 
@@ -91,7 +93,6 @@ SECTIONS
 		KEEP(*(.image_end))
 	}
 	__image_end = .;
-
-	_barebox_image_size = __image_end - (TEXT_BASE - SZ_2M);
-	_barebox_pbl_size = __bss_start - (TEXT_BASE - SZ_2M);
+	_barebox_image_size = __image_end - BASE;
+	_barebox_pbl_size = __bss_start - BASE;
 }
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
