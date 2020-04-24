Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3Y8-0007mC-9J
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 18:59:46 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 25 Apr 2020 03:59:20 +0900
Message-Id: <20200424185924.705754-2-masahiroy@kernel.org>
In-Reply-To: <20200424185924.705754-1-masahiroy@kernel.org>
References: <20200424185924.705754-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/6] modpost: sync mk_elfconfig.c with Linux 5.7-rc2
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Just get rid of the argument $(ARCH), then hardcode MODULE_SYMBOL_PREFIX.
This should have no impact because none of v850, h8300, blackfin is
supported by barebox.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/mod/Makefile       |  2 +-
 scripts/mod/mk_elfconfig.c | 11 +----------
 scripts/mod/modpost.c      |  2 ++
 3 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index c5aa34892..e02b9f4ce 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -8,7 +8,7 @@ modpost-objs	:= modpost.o sumversion.o
 $(obj)/modpost.o $(obj)/file2alias.o $(obj)/sumversion.o: $(obj)/elfconfig.h
 
 quiet_cmd_elfconfig = MKELF   $@
-      cmd_elfconfig = $(obj)/mk_elfconfig $(ARCH) < $< > $@
+      cmd_elfconfig = $(obj)/mk_elfconfig < $< > $@
 
 $(obj)/elfconfig.h: $(obj)/empty.o $(obj)/mk_elfconfig FORCE
 	$(call if_changed,elfconfig)
diff --git a/scripts/mod/mk_elfconfig.c b/scripts/mod/mk_elfconfig.c
index db3881f14..680eade89 100644
--- a/scripts/mod/mk_elfconfig.c
+++ b/scripts/mod/mk_elfconfig.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -9,9 +10,6 @@ main(int argc, char **argv)
 	unsigned char ei[EI_NIDENT];
 	union { short s; char c[2]; } endian_test;
 
-	if (argc != 2) {
-		fprintf(stderr, "Error: no arch\n");
-	}
 	if (fread(ei, 1, EI_NIDENT, stdin) != EI_NIDENT) {
 		fprintf(stderr, "Error: input truncated\n");
 		return 1;
@@ -55,12 +53,5 @@ main(int argc, char **argv)
 	else
 		exit(1);
 
-	if ((strcmp(argv[1], "v850") == 0) || (strcmp(argv[1], "h8300") == 0)
-	    || (strcmp(argv[1], "blackfin") == 0))
-		printf("#define MODULE_SYMBOL_PREFIX \"_\"\n");
-	else
-		printf("#define MODULE_SYMBOL_PREFIX \"\"\n");
-
 	return 0;
 }
-
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 795ee8d09..a42f1e6ce 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -31,6 +31,8 @@ static inline int license_is_gpl_compatible(const char *license)
 }
 #endif
 
+#define MODULE_SYMBOL_PREFIX ""
+
 /* Are we using CONFIG_MODVERSIONS? */
 int modversions = 0;
 /* Warn about undefined symbols? (do so if we have vmlinux) */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
