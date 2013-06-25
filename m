Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPRA-0000I9-0E
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:44 +0200
Message-Id: <1372152052-5463-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] ARM: Add image end section
To: barebox@lists.infradead.org

In the upcoming multi image build process we will cat images together.
To find the concatenated image we need to reliably find the end of the
current binary. This adds a dummy section at the end of a pbl binary.
Its only purpose is to mark the end of the image. The multi image
patches will add something to this section so that it doesn't get
discarded by the linker.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S         | 8 +++++++-
 arch/arm/lib/runtime-offset.S  | 3 +++
 include/asm-generic/sections.h | 1 +
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index d3ec2f8..1eae829 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -86,6 +86,12 @@ SECTIONS
 	}
 	__piggydata_end = .;
 
-	_barebox_image_size = __piggydata_end - (TEXT_BASE - SZ_2M);
+	. = ALIGN(4);
+	.image_end : {
+		KEEP(*(.image_end))
+	}
+	__image_end = .;
+
+	_barebox_image_size = __image_end - (TEXT_BASE - SZ_2M);
 	_barebox_pbl_size = __bss_start - (TEXT_BASE - SZ_2M);
 }
diff --git a/arch/arm/lib/runtime-offset.S b/arch/arm/lib/runtime-offset.S
index 15bf414..f10c4c8 100644
--- a/arch/arm/lib/runtime-offset.S
+++ b/arch/arm/lib/runtime-offset.S
@@ -42,6 +42,9 @@ ld_var_entry __dynsym_end
 ld_var_entry _barebox_image_size
 ld_var_entry __bss_start
 ld_var_entry __bss_stop
+#ifdef __PBL__
+ld_var_entry __image_end
+#endif
 
 1:
 	ldr r1, =__ld_var_base
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 5492aa4..984f8b6 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -6,6 +6,7 @@ extern char __bss_start[], __bss_stop[];
 extern char _sdata[], _edata[];
 extern char __bare_init_start[], __bare_init_end[];
 extern char _end[];
+extern char __image_end[];
 extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
 extern void *_barebox_pbl_size;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
