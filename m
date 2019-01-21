Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glcOc-00019T-GW
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 16:26:00 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 22 Jan 2019 01:25:12 +0900
Message-Id: <1548087912-22262-3-git-send-email-yamada.masahiro@socionext.com>
In-Reply-To: <1548087912-22262-1-git-send-email-yamada.masahiro@socionext.com>
References: <1548087912-22262-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 3/3] kconfig.h: update to v4.16-rc2
To: barebox@lists.infradead.org

I intentionally copied this from a little bit old kernel version
because Barebox cannot import commit 101110f6271c ("Kbuild: always
define endianess in kconfig.h").

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 include/linux/kconfig.h | 53 ++++++++++++++++++++++++++++++++++---------------
 1 file changed, 37 insertions(+), 16 deletions(-)

diff --git a/include/linux/kconfig.h b/include/linux/kconfig.h
index cb17ee2..fec5076 100644
--- a/include/linux/kconfig.h
+++ b/include/linux/kconfig.h
@@ -1,10 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_KCONFIG_H
 #define __LINUX_KCONFIG_H
 
 #include <generated/autoconf.h>
 
+#define __ARG_PLACEHOLDER_1 0,
+#define __take_second_arg(__ignored, val, ...) val
+
+/*
+ * The use of "&&" / "||" is limited in certain expressions.
+ * The following enable to calculate "and" / "or" with macro expansion only.
+ */
+#define __and(x, y)			___and(x, y)
+#define ___and(x, y)			____and(__ARG_PLACEHOLDER_##x, y)
+#define ____and(arg1_or_junk, y)	__take_second_arg(arg1_or_junk y, 0)
+
+#define __or(x, y)			___or(x, y)
+#define ___or(x, y)			____or(__ARG_PLACEHOLDER_##x, y)
+#define ____or(arg1_or_junk, y)		__take_second_arg(arg1_or_junk 1, y)
+
 /*
- * Helper macros to use CONFIG_ options in C expressions. Note that
+ * Helper macros to use CONFIG_ options in C/CPP expressions. Note that
  * these only work with boolean and tristate options.
  */
 
@@ -16,31 +32,36 @@
  * When CONFIG_BOOGER is not defined, we generate a (... 1, 0) pair, and when
  * the last step cherry picks the 2nd arg, we get a zero.
  */
-#define __ARG_PLACEHOLDER_1 0,
-#define config_enabled(cfg) _config_enabled(cfg)
-#define _config_enabled(value) __config_enabled(__ARG_PLACEHOLDER_##value)
-#define __config_enabled(arg1_or_junk) ___config_enabled(arg1_or_junk 1, 0)
-#define ___config_enabled(__ignored, val, ...) val
-
-/*
- * IS_ENABLED(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y' or 'm',
- * 0 otherwise.
- *
- */
-#define IS_ENABLED(option) \
-	(config_enabled(option) || config_enabled(option##_MODULE))
+#define __is_defined(x)			___is_defined(x)
+#define ___is_defined(val)		____is_defined(__ARG_PLACEHOLDER_##val)
+#define ____is_defined(arg1_or_junk)	__take_second_arg(arg1_or_junk 1, 0)
 
 /*
  * IS_BUILTIN(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y', 0
  * otherwise. For boolean options, this is equivalent to
  * IS_ENABLED(CONFIG_FOO).
  */
-#define IS_BUILTIN(option) config_enabled(option)
+#define IS_BUILTIN(option) __is_defined(option)
 
 /*
  * IS_MODULE(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'm', 0
  * otherwise.
  */
-#define IS_MODULE(option) config_enabled(option##_MODULE)
+#define IS_MODULE(option) __is_defined(option##_MODULE)
+
+/*
+ * IS_REACHABLE(CONFIG_FOO) evaluates to 1 if the currently compiled
+ * code can call a function defined in code compiled based on CONFIG_FOO.
+ * This is similar to IS_ENABLED(), but returns false when invoked from
+ * built-in code when CONFIG_FOO is set to 'm'.
+ */
+#define IS_REACHABLE(option) __or(IS_BUILTIN(option), \
+				__and(IS_MODULE(option), __is_defined(MODULE)))
+
+/*
+ * IS_ENABLED(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y' or 'm',
+ * 0 otherwise.
+ */
+#define IS_ENABLED(option) __or(IS_BUILTIN(option), IS_MODULE(option))
 
 #endif /* __LINUX_KCONFIG_H */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
