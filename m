Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJC1f-0004Ti-BF
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:45:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Sep 2020 10:45:27 +0200
Message-Id: <20200918084532.2794-5-s.hauer@pengutronix.de>
In-Reply-To: <20200918084532.2794-1-s.hauer@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] Add constructor support
To: Barebox List <barebox@lists.infradead.org>

Call constructors (gcc-generated initcall-like functions) during barebox
start. Constructors are e.g. used for kasan initialization.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c                  | 15 +++++++++++++++
 include/asm-generic/barebox.lds.h | 12 ++++++++++++
 include/asm-generic/sections.h    |  3 +++
 lib/Kconfig                       |  3 +++
 4 files changed, 33 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index 1c58e41288..6cb0588ae6 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -366,6 +366,19 @@ static int run_init(void)
 	return 0;
 }
 
+typedef void (*ctor_fn_t)(void);
+
+/* Call all constructor functions linked into the kernel. */
+static void do_ctors(void)
+{
+#ifdef CONFIG_CONSTRUCTORS
+	ctor_fn_t *fn = (ctor_fn_t *) __ctors_start;
+
+	for (; fn < (ctor_fn_t *) __ctors_end; fn++)
+		(*fn)();
+#endif
+}
+
 int (*barebox_main)(void);
 
 void __noreturn start_barebox(void)
@@ -376,6 +389,8 @@ void __noreturn start_barebox(void)
 	if (!IS_ENABLED(CONFIG_SHELL_NONE) && IS_ENABLED(CONFIG_COMMAND_SUPPORT))
 		barebox_main = run_init;
 
+	do_ctors();
+
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
 		pr_debug("initcall-> %pS\n", *initcall);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 138e9405a1..6971e2c1d2 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -113,12 +113,24 @@
 	KEEP(*(.rsa_keys.rodata.*));		\
 	__rsa_keys_end = .;			\
 
+#ifdef CONFIG_CONSTRUCTORS
+#define KERNEL_CTORS()  . = ALIGN(8);                      \
+			__ctors_start = .;                 \
+			KEEP(*(.ctors))                    \
+			KEEP(*(SORT(.init_array.*)))       \
+			KEEP(*(.init_array))               \
+			__ctors_end = .;
+#else
+#define KERNEL_CTORS()
+#endif
+
 #define RO_DATA_SECTION				\
 	BAREBOX_INITCALLS			\
 	BAREBOX_EXITCALLS			\
 	BAREBOX_CMDS				\
 	BAREBOX_RATP_CMDS			\
 	BAREBOX_SYMS				\
+	KERNEL_CTORS()				\
 	BAREBOX_MAGICVARS			\
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index f584cad48d..870bff21f6 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -13,6 +13,9 @@ extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
 extern void *_barebox_pbl_size;
 
+/* Start and end of .ctors section - used for constructor calls. */
+extern char __ctors_start[], __ctors_end[];
+
 #define barebox_image_size	(__image_end - __image_start)
 #define barebox_bare_init_size	(unsigned int)&_barebox_bare_init_size
 #define barebox_pbl_size	(__piggydata_start - __image_start)
diff --git a/lib/Kconfig b/lib/Kconfig
index b4a8079700..90552f3c27 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -60,6 +60,9 @@ config REED_SOLOMON
 config BASE64
 	bool "include base64 encode/decode support"
 
+config CONSTRUCTORS
+	bool
+
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
