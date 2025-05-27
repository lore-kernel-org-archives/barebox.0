Delivery-date: Tue, 27 May 2025 22:14:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h4-000xLy-0N
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 22:14:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h3-0002yx-5d
	for lore@pengutronix.de; Tue, 27 May 2025 22:14:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LW01u8ofvVchNM0GPEk60wMht9hNxjhrHU6Nud1D0oI=; b=XJwgg+X63eelZEJu9BDs/nLr0u
	cVTAGlN2xltLlQkQiqMhx1Rht8EuNArrvjOzBJ7aLjbA6bMdgRxqcy+zZJYuqwBAxyGIOF6WQ27Vk
	NySxrsuMZu3J+rqB4eLZ62XMqKk1ffV48qNCeqvS2hbDzLl/DrrZouuN3O+SihZCRDlR5C5l5sQkf
	L7aFXXtGmuVxSSxgzJrVn5A1msizcWQBjTurYwedA/KJnEsjrYi7+WQRlBu/19G1sIXHO07pO2fK0
	nVltjkfKfVJ3XQ2j8dNAF1XZkFyS/Yg79TJntwuLOFyyMoREDfoop48YiSO6Y92tWyJEv5cJUvwhK
	Snzp3sSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gb-0000000BUUF-2Jhw;
	Tue, 27 May 2025 20:14:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gT-0000000BUMp-3yxz
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 20:14:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-0002Hx-Nr; Tue, 27 May 2025 22:14:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-000TVU-1b;
	Tue, 27 May 2025 22:14:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-003jQO-1H;
	Tue, 27 May 2025 22:14:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 May 2025 22:13:56 +0200
Message-Id: <20250527201359.889550-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527201359.889550-1-a.fatoum@pengutronix.de>
References: <20250527201359.889550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_131402_143271_A190E3B2 
X-CRM114-Status: GOOD (  12.77  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] treewide: replace attribute with shorter __printf macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This makes for more compact code, but doesn't introduce any functional
change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/psci.h |  5 +++--
 include/bbu.h               |  3 +--
 include/environment.h       |  5 ++---
 include/linux/printk.h      |  7 +++----
 include/of.h                |  2 +-
 include/printf.h            |  3 ++-
 include/stdio.h             | 12 ++++++------
 include/xfuncs.h            |  2 +-
 8 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
index b342eb85f5ec..8ffb85db0516 100644
--- a/arch/arm/include/asm/psci.h
+++ b/arch/arm/include/asm/psci.h
@@ -6,6 +6,8 @@
 #ifndef __ARM_PSCI_H__
 #define __ARM_PSCI_H__
 
+#include <linux/compiler.h>
+
 struct device_node;
 
 #define ARM_PSCI_VER(major, minor)	(((major) << 16) | (minor))
@@ -121,8 +123,7 @@ void psci_cpu_entry(void);
 void psci_set_putc(void (*putcf)(void *ctx, int c), void *ctx);
 void psci_putc(char c);
 int psci_puts(const char *str);
-int psci_printf(const char *fmt, ...)
-            __attribute__ ((format(__printf__, 1, 2)));
+int psci_printf(const char *fmt, ...) __printf(1, 2);
 #else
 
 static inline void psci_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
diff --git a/include/bbu.h b/include/bbu.h
index 087d3ee8278f..bce138d95b37 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -37,8 +37,7 @@ struct bbu_handler {
 	const char *devicefile;
 };
 
-int bbu_force(struct bbu_data *, const char *fmt, ...)
-	__attribute__ ((format(__printf__, 2, 3)));
+int bbu_force(struct bbu_data *, const char *fmt, ...) __printf(2, 3);
 
 int bbu_confirm(struct bbu_data *);
 
diff --git a/include/environment.h b/include/environment.h
index c24796427675..585af53c0bfe 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -33,7 +33,7 @@ const char *var_name(struct variable_d *);
 const char *getenv(const char *);
 int envvar_for_each(int (*fn)(struct variable_d *v, void *data), void *data);
 int setenv(const char *, const char *);
-int pr_setenv(const char *, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
+int pr_setenv(const char *, const char *fmt, ...) __printf(2, 3);
 void export_env_ull(const char *name, unsigned long long val);
 int getenv_ull(const char *name, unsigned long long *val);
 int getenv_ullx(const char *name, unsigned long long *val);
@@ -58,8 +58,7 @@ static inline int setenv(const char *var, const char *val)
 	return 0;
 }
 
-static inline __attribute__ ((format(__printf__, 2, 3))) int pr_setenv(
-	const char *var, const char *fmt, ...)
+static inline __printf(2, 3) int pr_setenv(const char *var, const char *fmt, ...)
 {
 	return 0;
 }
diff --git a/include/linux/printk.h b/include/linux/printk.h
index f1f76fb71859..f39dcb69a9ec 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -31,15 +31,14 @@ struct device;
 
 #if !defined(CONFIG_CONSOLE_NONE) && IN_PROPER
 int dev_printf(int level, const struct device *dev, const char *format, ...)
-	__attribute__ ((format(__printf__, 3, 4)));
+	__printf(3, 4);
 #else
 #define dev_printf(level, dev, ...) pr_print(((void)dev, (level)), __VA_ARGS__)
 #endif
 
 #if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
 	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
-int pr_print(int level, const char *format, ...)
-	__attribute__ ((format(__printf__, 2, 3)));
+int pr_print(int level, const char *format, ...) __printf(2, 3);
 #else
 static inline __printf(2, 3) int pr_print(int level, const char *format, ...)
 {
@@ -101,7 +100,7 @@ static inline __printf(2, 3) int pr_print(int level, const char *format, ...)
 
 #if LOGLEVEL >= MSG_ERR
 int dev_err_probe(struct device *dev, int err, const char *fmt, ...)
-	__attribute__ ((format(__printf__, 3, 4)));
+	__printf(3, 4);
 #elif !defined(dev_err_probe)
 static inline __printf(3, 4) int dev_err_probe(struct device *dev,
 			       int err, const char *fmt, ...)
diff --git a/include/of.h b/include/of.h
index fccb8ba7e9e1..e46d410d3651 100644
--- a/include/of.h
+++ b/include/of.h
@@ -293,7 +293,7 @@ extern int of_property_write_string(struct device_node *np, const char *propname
 extern int of_property_write_strings(struct device_node *np, const char *propname,
 				    ...) __attribute__((__sentinel__));
 int of_property_sprintf(struct device_node *np, const char *propname, const char *fmt, ...)
-	__attribute__ ((format(__printf__, 3, 4)));
+	__printf(3, 4);
 
 extern struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name,
diff --git a/include/printf.h b/include/printf.h
index eac78aec92c1..0e5f79afb87e 100644
--- a/include/printf.h
+++ b/include/printf.h
@@ -3,6 +3,7 @@
 #define __PRINTF_H
 
 #include <linux/types.h>
+#include <linux/compiler.h>
 
 struct device;
 
@@ -18,7 +19,7 @@ struct device;
 
 #if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
 	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
-int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+int printf(const char *fmt, ...) __printf(1, 2);
 #else
 static inline __printf(1, 2) int printf(const char *fmt, ...)
 {
diff --git a/include/stdio.h b/include/stdio.h
index 0e01a0e63a46..f6f181941b4a 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -12,17 +12,17 @@
  */
 
 /* serial stuff */
-void serial_printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+void serial_printf(const char *fmt, ...) __printf(1, 2);
 
-int sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
-int snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
-int scnprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
+int sprintf(char *buf, const char *fmt, ...) __printf(2, 3);
+int snprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
+int scnprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
 int vsprintf(char *buf, const char *fmt, va_list args);
 int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
 int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 
 #if IN_PROPER || defined(CONFIG_PBL_CONSOLE)
-int asprintf(char **strp, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
+int asprintf(char **strp, const char *fmt, ...) __printf(2, 3);
 char *bvasprintf(const char *fmt, va_list ap);
 int vasprintf(char **strp, const char *fmt, va_list ap);
 #else
@@ -143,7 +143,7 @@ static inline void putchar(char c)
 #define MAX_FILES	128
 
 int vdprintf(int fd, const char *fmt, va_list args) ;
-int dprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
+int dprintf(int file, const char *fmt, ...) __printf(2, 3);
 int dputs(int file, const char *s);
 int dputc(int file, const char c);
 
diff --git a/include/xfuncs.h b/include/xfuncs.h
index f0aca6de76b3..8dd88d6607d7 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -17,7 +17,7 @@ char *xstrdup(const char *s);
 char *xstrndup(const char *s, size_t size) __returns_nonnull;
 void* xmemalign(size_t alignment, size_t bytes) __xalloc_size(2);
 void* xmemdup(const void *orig, size_t size) __returns_nonnull;
-char *xasprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2))) __returns_nonnull;
+char *xasprintf(const char *fmt, ...) __printf(1, 2) __returns_nonnull;
 char *xvasprintf(const char *fmt, va_list ap) __returns_nonnull;
 
 wchar_t *xstrdup_wchar(const wchar_t *src);
-- 
2.39.5



