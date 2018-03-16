Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-00067z-4V
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:42 +0100
Message-Id: <20180316125354.23462-7-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/78] ARM: scroll past image end without ld_var
To: Barebox List <barebox@lists.infradead.org>

ld_var is going to be removed, cope without it. In the PBL image
we want to get the location after the binary to the place where
the compressed image is located. To do this Put a variable at
the very end of the binary, get it's location and add an offset.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/uncompress.c | 17 +++++++++--------
 arch/arm/lib/pbl.lds.S    |  5 ++---
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 2588e84b66..b600c1e7ec 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -37,9 +37,8 @@
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-static int __attribute__((__used__))
-	__attribute__((__section__(".image_end")))
-	__image_end_dummy = 0xdeadbeef;
+static int __attribute__((__section__(".image_end")))
+	image_end_marker = 0xdeadbeef;
 
 void __noreturn barebox_multi_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
@@ -52,7 +51,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	void *pg_start;
 	unsigned long pc = get_pc();
 
-	image_end = (void *)ld_var(__image_end) + get_runtime_offset();
+	image_end = (void *)&image_end_marker + get_runtime_offset();
 
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
 		/*
@@ -67,11 +66,13 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	}
 
 	/*
-	 * image_end is the first location after the executable. It contains
-	 * the size of the appended compressed binary followed by the binary.
+	 * image_end is the image_end_marker defined above. It is the last location
+	 * in the executable. Right after the executable the build process adds
+	 * the size of the appended compressed binary followed by the compressed
+	 * binary itself.
 	 */
-	pg_start = image_end + 1;
-	pg_len = *(image_end);
+	pg_start = image_end + 2;
+	pg_len = *(image_end + 1);
 	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 73baff0ca5..7de7791b71 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -87,10 +87,9 @@ SECTIONS
 	__piggydata_end = .;
 
 	. = ALIGN(4);
-	.image_end : {
-		KEEP(*(.image_end))
-	}
+	.image_end : { *(.image_end) }
 	__image_end = .;
+
 	_barebox_image_size = __image_end - BASE;
 	_barebox_pbl_size = __bss_start - BASE;
 }
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
