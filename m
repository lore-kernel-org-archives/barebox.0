Delivery-date: Tue, 27 May 2025 22:14:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h6-000xMK-02
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 22:14:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h4-000323-UF
	for lore@pengutronix.de; Tue, 27 May 2025 22:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lRk6fmvZRo35LIyLGYxsfQopqvPFkDlJBQ8a4HIdSPc=; b=BWzXwhiWzL4eiDB56/WBbgNfxR
	L2z6ISPOLDeEgQFnryEYQncHYOCZKcrYi3XZSU9ciO+RVIp9bosI8uq9E5b0wHNEU0DsbwMIRpaDg
	qvBE0pZNB3cFrlop/jf/QP7pEDK4pTEN/p+tvcV2NLCyOlBByypt4dNjLFmkRgTSjKYj1QzuUrx2J
	bk5/lv4ItZjfJNivbsbK6ZL29PB3m2pw/WX5iWlC1o1TJL1wlvswJKczZkihKUQQiLEjN/Cv7Ue+H
	bE6leodS9CA4ohfGUFWxNaauzA/yfh1QgzBuvs39Q8PZxuP7uObgNqNYDZML3rq5EKTNt6eRlqDZT
	/PHTmTRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gc-0000000BUVA-0Lxt;
	Tue, 27 May 2025 20:14:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gU-0000000BUMq-07Xp
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 20:14:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-0002IF-Pq; Tue, 27 May 2025 22:14:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-000TVX-1l;
	Tue, 27 May 2025 22:14:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-003jQO-1R;
	Tue, 27 May 2025 22:14:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 May 2025 22:13:57 +0200
Message-Id: <20250527201359.889550-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527201359.889550-1-a.fatoum@pengutronix.de>
References: <20250527201359.889550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_131402_218610_2422C4BF 
X-CRM114-Status: GOOD (  13.23  )
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
Subject: [PATCH 7/9] treewide: add missing __printf attributes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To get compiler warnings for mismatched format specifiers, add the
__printf attribute everywhere it's appropriate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/psci.h | 2 +-
 include/bthread.h           | 4 +++-
 include/driver.h            | 4 ++--
 include/fastboot.h          | 2 +-
 include/libfile.h           | 3 ++-
 include/linux/clkdev.h      | 7 +++++--
 include/linux/printk.h      | 3 ++-
 include/printf.h            | 4 ++--
 include/stdio.h             | 2 +-
 include/stringlist.h        | 3 ++-
 include/xfuncs.h            | 2 +-
 11 files changed, 22 insertions(+), 14 deletions(-)

diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
index 8ffb85db0516..1952b8ac7652 100644
--- a/arch/arm/include/asm/psci.h
+++ b/arch/arm/include/asm/psci.h
@@ -139,7 +139,7 @@ static inline int psci_puts(const char *str)
 	return 0;
 }
 
-static inline int psci_printf(const char *fmt, ...)
+static inline __printf(1, 2) int psci_printf(const char *fmt, ...)
 {
 	return 0;
 }
diff --git a/include/bthread.h b/include/bthread.h
index 4441b53696fb..751d810a9f2f 100644
--- a/include/bthread.h
+++ b/include/bthread.h
@@ -7,12 +7,14 @@
 #define __BTHREAD_H_
 
 #include <linux/stddef.h>
+#include <linux/compiler.h>
 
 struct bthread;
 
 extern struct bthread *current;
 
-struct bthread *bthread_create(void (*threadfn)(void *), void *data, const char *namefmt, ...);
+struct bthread *bthread_create(void (*threadfn)(void *), void *data, const char *namefmt, ...)
+	__printf(3, 4);
 void bthread_cancel(struct bthread *bthread);
 
 void bthread_schedule(struct bthread *);
diff --git a/include/driver.h b/include/driver.h
index b5f4de01e424..e9a919f9bbb5 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -153,8 +153,8 @@ static inline const char *dev_name(const struct device *dev)
 	return dev_id(dev) ?: dev->name;
 }
 
-int dev_set_name(struct device *dev, const char *fmt, ...);
-int dev_add_alias(struct device *dev, const char *fmt, ...);
+int dev_set_name(struct device *dev, const char *fmt, ...) __printf(2, 3);
+int dev_add_alias(struct device *dev, const char *fmt, ...) __printf(2, 3);
 
 /*
  * get resource 'num' for a device
diff --git a/include/fastboot.h b/include/fastboot.h
index 4b2fdf3190b2..88577dfa5215 100644
--- a/include/fastboot.h
+++ b/include/fastboot.h
@@ -84,7 +84,7 @@ void fastboot_generic_free(struct fastboot *fb);
 int fastboot_handle_download_data(struct fastboot *fb, const void *buffer,
 				  unsigned int len);
 int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
-		      const char *fmt, ...);
+		      const char *fmt, ...) __printf(3, 4);
 void fastboot_start_download_generic(struct fastboot *fb);
 void fastboot_download_finished(struct fastboot *fb);
 void fastboot_exec_cmd(struct fastboot *fb, const char *cmdbuf)
diff --git a/include/libfile.h b/include/libfile.h
index bf775b022dc4..b795a0253039 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -3,6 +3,7 @@
 #define __LIBFILE_H
 
 #include <linux/types.h>
+#include <linux/compiler.h>
 
 struct resource;
 
@@ -14,7 +15,7 @@ int copy_fd(int in, int out);
 
 ssize_t read_file_into_buf(const char *filename, void *buf, size_t size);
 
-char *read_file_line(const char *fmt, ...);
+char *read_file_line(const char *fmt, ...) __printf(1, 2);
 
 void *read_file(const char *filename, size_t *size);
 
diff --git a/include/linux/clkdev.h b/include/linux/clkdev.h
index 65edbd760b2d..107dacb51995 100644
--- a/include/linux/clkdev.h
+++ b/include/linux/clkdev.h
@@ -12,6 +12,8 @@
 #ifndef __CLKDEV_H
 #define __CLKDEV_H
 
+#include <linux/compiler.h>
+
 struct clk;
 struct device;
 
@@ -24,14 +26,15 @@ struct clk_lookup {
 };
 
 struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
-	const char *dev_fmt, ...);
+	const char *dev_fmt, ...) __printf(3, 4);
 
 void clkdev_add(struct clk_lookup *cl);
 void clkdev_drop(struct clk_lookup *cl);
 
 void clkdev_add_table(struct clk_lookup *, size_t);
 int clk_add_alias(const char *, const char *, char *, struct device *);
-int clk_register_clkdev(struct clk *, const char *, const char *, ...);
+int clk_register_clkdev(struct clk *, const char *, const char *, ...)
+	__printf(3, 4);
 
 int clkdev_add_physbase(struct clk *clk, unsigned long base, const char *id);
 
diff --git a/include/linux/printk.h b/include/linux/printk.h
index f39dcb69a9ec..0d7180f0ebbc 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -167,7 +167,8 @@ static inline __printf(3, 4) int dev_err_probe(struct device *dev,
 int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size,
 		   int swab);
 int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbytes,
-			int size, int swab, const char *format, ...);
+			int size, int swab, const char *format, ...)
+	__printf(7, 8);
 
 #define pr_memory_display(level, addr, offs, nbytes, size, swab) \
 	({	\
diff --git a/include/printf.h b/include/printf.h
index 0e5f79afb87e..83da06201a3a 100644
--- a/include/printf.h
+++ b/include/printf.h
@@ -27,8 +27,8 @@ static inline __printf(1, 2) int printf(const char *fmt, ...)
 }
 #endif
 
-void __attribute__((noreturn)) panic(const char *fmt, ...);
-void __attribute__((noreturn)) panic_no_stacktrace(const char *fmt, ...);
+void __noreturn panic(const char *fmt, ...) __printf(1, 2);
+void __noreturn panic_no_stacktrace(const char *fmt, ...) __printf(1, 2);
 
 #define printk			printf
 
diff --git a/include/stdio.h b/include/stdio.h
index f6f181941b4a..50688feff4e6 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -26,7 +26,7 @@ int asprintf(char **strp, const char *fmt, ...) __printf(2, 3);
 char *bvasprintf(const char *fmt, va_list ap);
 int vasprintf(char **strp, const char *fmt, va_list ap);
 #else
-static inline int asprintf(char **strp, const char *fmt, ...)
+static inline __printf(2, 3) int asprintf(char **strp, const char *fmt, ...)
 {
 	return -1;
 }
diff --git a/include/stringlist.h b/include/stringlist.h
index b964fabd2320..03711ad9c7ff 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -12,7 +12,8 @@ struct string_list {
 };
 
 int string_list_add(struct string_list *sl, const char *str);
-int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...);
+int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...)
+	__printf(2, 3);
 int string_list_add_sorted(struct string_list *sl, const char *str);
 int string_list_add_sort_uniq(struct string_list *sl, const char *str);
 int string_list_contains(struct string_list *sl, const char *str);
diff --git a/include/xfuncs.h b/include/xfuncs.h
index 8dd88d6607d7..eb4050f489d9 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -33,7 +33,7 @@ static inline char *xstrdup(const char *s) { BUG(); }
 static inline char *xstrndup(const char *s, size_t size) { BUG(); }
 static inline void* xmemalign(size_t alignment, size_t bytes) { BUG(); }
 static inline void* xmemdup(const void *orig, size_t size) { BUG(); }
-static inline char *xasprintf(const char *fmt, ...) { BUG(); }
+static inline __printf(1, 2) char *xasprintf(const char *fmt, ...) { BUG(); }
 static inline char *xvasprintf(const char *fmt, va_list ap) { BUG(); }
 
 static inline wchar_t *xstrdup_wchar(const wchar_t *src) { BUG(); }
-- 
2.39.5



