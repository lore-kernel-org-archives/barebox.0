Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwv2A-0001Rz-Qv
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:25:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:24:52 +0100
Message-Id: <1299583492-29504-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1299583492-29504-1-git-send-email-s.hauer@pengutronix.de>
References: <1299583492-29504-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] kallsyms/printk: enable symbol printing support (%pS)
To: barebox@lists.infradead.org

With this kallsyms finally start working at least on ARM. This
enables us resolving addresses into symbols which is particularly
useful in combination with stack unwinding support. As kallsyms
now compile and work we can remove the depends on BROKEN.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile           |    2 +-
 common/Kconfig     |    3 -
 common/kallsyms.c  |  148 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/kallsyms.h |    5 ++
 lib/vsprintf.c     |    1 +
 5 files changed, 154 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index 1a4a54e..55c83cc 100644
--- a/Makefile
+++ b/Makefile
@@ -599,7 +599,7 @@ endef
 
 # Generate .S file with all kernel symbols
 quiet_cmd_kallsyms = KSYM    $@
-      cmd_kallsyms = $(NM) -g -n $< | $(KALLSYMS) > $@
+      cmd_kallsyms = $(NM) -n $< | $(KALLSYMS) --all-symbols > $@
 
 .tmp_kallsyms1.o .tmp_kallsyms2.o .tmp_kallsyms3.o: %.o: %.S scripts FORCE
 	$(call if_changed_dep,as_o_S)
diff --git a/common/Kconfig b/common/Kconfig
index 02bc67e..9e30579 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -148,13 +148,10 @@ config MODULES
 
 config KALLSYMS
 	depends on HAS_KALLSYMS
-	depends on BROKEN
 	bool "kallsyms"
 	help
 	  With Kallsyms enabled all symbols are compiled into the barebox image.
 	  This is useful to print a nice backtrace when an exception occurs.
-	  No architecture supports backtraces at the moment, so this option
-	  is quite useless at the moment
 
 config RELOCATABLE
 	depends on PPC
diff --git a/common/kallsyms.c b/common/kallsyms.c
index 490adb9..0218991 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <init.h>
 #include <kallsyms.h>
+#include <asm-generic/sections.h>
 
 #ifndef DOXYGEN_SHOULD_SKIP_THIS
 
@@ -16,6 +17,13 @@ extern const unsigned long kallsyms_markers[] __attribute__((weak));
 
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
+static inline int is_kernel_text(unsigned long addr)
+{
+	if ((addr >= (unsigned long)_stext && addr <= (unsigned long)_etext))
+		return 1;
+	return 0;
+}
+
 /* expand a compressed symbol data into the resulting uncompressed string,
    given the offset to where the symbol is in the compressed stream */
 static unsigned int kallsyms_expand_symbol(unsigned int off, char *result)
@@ -55,6 +63,33 @@ static unsigned int kallsyms_expand_symbol(unsigned int off, char *result)
 	return off;
 }
 
+/*
+ * Find the offset on the compressed stream given and index in the
+ * kallsyms array.
+ */
+static unsigned int get_symbol_offset(unsigned long pos)
+{
+	const u8 *name;
+	int i;
+
+	/*
+	 * Use the closest marker we have. We have markers every 256 positions,
+	 * so that should be close enough.
+	 */
+	name = &kallsyms_names[kallsyms_markers[pos >> 8]];
+
+	/*
+	 * Sequentially scan all the symbols up to the point we're searching
+	 * for. Every symbol is stored in a [<len>][<len> bytes of data] format,
+	 * so we just need to add the len to the current pointer for every
+	 * symbol we wish to skip.
+	 */
+	for (i = 0; i < (pos & 0xFF); i++)
+		name = name + (*name) + 1;
+
+	return name - kallsyms_names;
+}
+
 /* Lookup the address for this symbol. Returns 0 if not found. */
 unsigned long kallsyms_lookup_name(const char *name)
 {
@@ -68,6 +103,117 @@ unsigned long kallsyms_lookup_name(const char *name)
 		if (strcmp(namebuf, name) == 0)
 			return kallsyms_addresses[i];
 	}
-//	return module_kallsyms_lookup_name(name);
+
+	/* module kallsyms not yet supported */
 	return 0;
 }
+
+static unsigned long get_symbol_pos(unsigned long addr,
+				    unsigned long *symbolsize,
+				    unsigned long *offset)
+{
+	unsigned long symbol_start = 0, symbol_end = 0;
+	unsigned long i, low, high, mid;
+
+	/* This kernel should never had been booted. */
+	BUG_ON(!kallsyms_addresses);
+
+	/* Do a binary search on the sorted kallsyms_addresses array. */
+	low = 0;
+	high = kallsyms_num_syms;
+
+	while (high - low > 1) {
+		mid = low + (high - low) / 2;
+		if (kallsyms_addresses[mid] <= addr)
+			low = mid;
+		else
+			high = mid;
+	}
+
+	/*
+	 * Search for the first aliased symbol. Aliased
+	 * symbols are symbols with the same address.
+	 */
+	while (low && kallsyms_addresses[low-1] == kallsyms_addresses[low])
+		--low;
+
+	symbol_start = kallsyms_addresses[low];
+
+	/* Search for next non-aliased symbol. */
+	for (i = low + 1; i < kallsyms_num_syms; i++) {
+		if (kallsyms_addresses[i] > symbol_start) {
+			symbol_end = kallsyms_addresses[i];
+			break;
+		}
+	}
+
+	/* If we found no next symbol, we use the end of the section. */
+	if (!symbol_end) {
+		symbol_end = (unsigned long)_etext;
+	}
+
+	if (symbolsize)
+		*symbolsize = symbol_end - symbol_start;
+	if (offset)
+		*offset = addr - symbol_start;
+
+	return low;
+}
+
+/*
+ * Lookup an address
+ * - modname is set to NULL if it's in the kernel.
+ * - We guarantee that the returned name is valid until we reschedule even if.
+ *   It resides in a module.
+ * - We also guarantee that modname will be valid until rescheduled.
+ */
+const char *kallsyms_lookup(unsigned long addr,
+			    unsigned long *symbolsize,
+			    unsigned long *offset,
+			    char **modname, char *namebuf)
+{
+	namebuf[KSYM_NAME_LEN - 1] = 0;
+	namebuf[0] = 0;
+
+	if (is_kernel_text(addr)) {
+		unsigned long pos;
+
+		pos = get_symbol_pos(addr, symbolsize, offset);
+		/* Grab name */
+		kallsyms_expand_symbol(get_symbol_offset(pos), namebuf);
+		if (modname)
+			*modname = NULL;
+		return namebuf;
+	}
+
+	/* moduled not yet supported in kallsyms */
+	return NULL;
+}
+
+/* Look up a kernel symbol and return it in a text buffer. */
+int sprint_symbol(char *buffer, unsigned long address)
+{
+	char *modname;
+	const char *name;
+	unsigned long offset, size;
+	int len;
+
+	name = kallsyms_lookup(address, &size, &offset, &modname, buffer);
+	if (!name)
+		return sprintf(buffer, "0x%lx", address);
+
+	if (name != buffer)
+		strcpy(buffer, name);
+	len = strlen(buffer);
+	buffer += len;
+
+	if (modname)
+		len += sprintf(buffer, "+%#lx/%#lx [%s]",
+						offset, size, modname);
+	else
+		len += sprintf(buffer, "+%#lx/%#lx", offset, size);
+
+	return len;
+}
+EXPORT_SYMBOL_GPL(sprint_symbol);
+
diff --git a/include/kallsyms.h b/include/kallsyms.h
index 5117be2..69b84d2 100644
--- a/include/kallsyms.h
+++ b/include/kallsyms.h
@@ -2,6 +2,11 @@
 #define __KALLSYMS_H
 
 #define KSYM_NAME_LEN 128
+#define KSYM_SYMBOL_LEN (sizeof("%s+%#lx/%#lx [%s]") + (KSYM_NAME_LEN - 1) + \
+		2*(BITS_PER_LONG*3/10) + (MODULE_NAME_LEN - 1) + 1)
 unsigned long kallsyms_lookup_name(const char *name);
 
+/* Look up a kernel symbol and return it in a text buffer. */
+int sprint_symbol(char *buffer, unsigned long address);
+
 #endif /* __KALLSYMS_H */
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index fec87ba..ccccc5d 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -15,6 +15,7 @@
 #include <linux/ctype.h>
 #include <asm-generic/div64.h>
 #include <malloc.h>
+#include <kallsyms.h>
 
 #include <common.h>
 #include <led.h>
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
