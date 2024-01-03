Delivery-date: Wed, 03 Jan 2024 11:19:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyL5-001mgH-24
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:19:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyL4-0003pq-2x
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:19:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1j8XOD1jd9av4aZurZvHe0BVpzVw0VpKHM1xzHGTbbU=; b=FBouu3MaGJdi6dxt/yacrTL0R1
	2ZlPlximAgbWwf5lidGlaE2fDi0WNkp8f2FLIz1SnGGutAQQcw6LCKMazSqUCJN8MaoQWcxdOmiXW
	6+hxyLDpwA6tMX9UmXaG66rGi3QTvpJ3aaDdu0YxJvecqTjGmOWyn+yfX2xzFivS4YT+ZNFhM3aNk
	IYCXLiRnTT+DELUhhddsLXLlwpgLnI9UUF4uFjP3RVuHCRCaeHy4rM1eCVFiEBkWIqslGtOeHvVsO
	b0bs/wmXZBXRpEBsUdlUPVXiZo7+JmWRlt7fIaCLYRSnSzCdowh4JH7M5riPcyfgktelj2KisuIVQ
	3XDSxiQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyJy-00AMy2-0t;
	Wed, 03 Jan 2024 10:17:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyJr-00AMto-2h
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:17:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-0003Ja-La; Wed, 03 Jan 2024 11:17:50 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-0005wl-8N; Wed, 03 Jan 2024 11:17:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-00B2Bh-0Y;
	Wed, 03 Jan 2024 11:17:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:17:48 +0100
Message-Id: <20240103101748.2629927-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101748.2629927-1-a.fatoum@pengutronix.de>
References: <20240103101748.2629927-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021752_071393_106CA120 
X-CRM114-Status: GOOD (  17.37  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] treewide: mark linker list elements with  __ll_elem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To fix build with clang while using ASAN, define all linker list
elements with __ll_elem.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c        |  3 +-
 include/command.h        |  4 +--
 include/deep-probe.h     |  3 +-
 include/image-metadata.h |  4 +--
 include/init.h           | 60 ++++++++++++++++++++--------------------
 include/linux/clk.h      |  2 +-
 include/linux/export.h   | 11 ++++----
 include/linux/pci.h      |  4 +--
 include/magicvar.h       |  7 +++--
 include/ratp_bb.h        |  3 +-
 10 files changed, 51 insertions(+), 50 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 4130f413a36d..d3f5d5e83880 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -641,8 +641,7 @@ struct of_clk_provider {
 };
 
 extern struct of_device_id __clk_of_table_start[];
-const struct of_device_id __clk_of_table_sentinel
-	__attribute__ ((unused,section (".__clk_of_table_end")));
+const struct of_device_id __clk_of_table_sentinel __ll_elem(.__clk_of_table_end);
 
 static LIST_HEAD(of_clk_providers);
 
diff --git a/include/command.h b/include/command.h
index ccae568f87b6..9226756cc00b 100644
--- a/include/command.h
+++ b/include/command.h
@@ -12,6 +12,7 @@
 
 #include <linux/list.h>
 #include <linux/stringify.h>
+#include <linux/compiler_types.h>
 #include <linux/stddef.h>
 #include <string.h>
 
@@ -75,8 +76,7 @@ int run_command(const char *cmd);
 #define BAREBOX_CMD_START(_name)						\
 static struct command __barebox_cmd_##_name;					\
 const struct command *barebox_cmd_##_name 					\
-	__attribute__ ((unused,section (".barebox_cmd_" __stringify(_name))))	\
-			= &__barebox_cmd_##_name;				\
+	__ll_elem(.barebox_cmd_##_name)	= &__barebox_cmd_##_name;		\
 static struct command __barebox_cmd_##_name = {					\
 	.name		= #_name,
 
diff --git a/include/deep-probe.h b/include/deep-probe.h
index 927dd8d6cf50..e3770fcf0d89 100644
--- a/include/deep-probe.h
+++ b/include/deep-probe.h
@@ -3,6 +3,7 @@
 #define __DEEP_PROBE_H
 
 #include <linux/stringify.h>
+#include <linux/compiler_types.h>
 #include <linux/types.h>
 
 struct deep_probe_entry {
@@ -23,7 +24,7 @@ extern struct deep_probe_entry __barebox_deep_probe_end;
 
 #define __BAREBOX_DEEP_PROBE_ENABLE(_entry,_device_id)			\
 	static const struct deep_probe_entry _entry			\
-	__attribute__ ((used,section (".barebox_deep_probe_" __stringify(_entry)))) = { \
+	__ll_elem(.barebox_deep_probe_##_entry) = {			\
 		.device_id = _device_id,				\
 	}
 
diff --git a/include/image-metadata.h b/include/image-metadata.h
index 615632f9ce81..e00c209aedc9 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -125,10 +125,10 @@ int imd_verify_crc32(void *buf, size_t size);
 #ifdef __BAREBOX__
 
 #include <linux/stringify.h>
+#include <linux/compiler_types.h>
 
 #define __BAREBOX_IMD_SECTION(_section) \
-	__attribute__ ((unused,section (__stringify(_section)))) \
-	__attribute__((aligned(4)))
+	__ll_elem(_section) __attribute__((aligned(4)))
 
 #define BAREBOX_IMD_TAG_STRING(_name, _type, _string, _keep_if_unused)			\
 	const struct imd_entry_string __barebox_imd_##_name				\
diff --git a/include/init.h b/include/init.h
index d0343fdf05cc..33a76974f23d 100644
--- a/include/init.h
+++ b/include/init.h
@@ -2,6 +2,8 @@
 #ifndef _INIT_H
 #define _INIT_H
 
+#include <linux/compiler_types.h>
+
 /*
  * fake define to simplify the linux sync
  */
@@ -33,13 +35,11 @@ typedef void (*exitcall_t)(void);
 
 #ifndef __ASSEMBLY__
 
-#define __define_initcall(level,fn,id) \
-	static initcall_t __initcall_##fn##id __attribute__((__used__)) \
-	__attribute__((__section__(".initcall." level))) = fn
+#define __define_initcall(fn,id) \
+	static initcall_t __initcall_##fn##id __ll_elem(.initcall.##id) = fn
 
-#define __define_exitcall(level,fn,id) \
-	static exitcall_t __exitcall_##fn##id __attribute__((__used__)) \
-	__attribute__((__section__(".exitcall." level))) = fn
+#define __define_exitcall(fn,id) \
+	static exitcall_t __exitcall_##fn##id __ll_elem(.exitcall.##id) = fn
 
 
 /*
@@ -51,32 +51,32 @@ typedef void (*exitcall_t)(void);
  * The only purpose for "of_populate" is to call of_probe() other functions are
  * not allowed.
  */
-#define pure_initcall(fn)		__define_initcall("0",fn,0)
+#define pure_initcall(fn)		__define_initcall(fn, 0)
 
-#define core_initcall(fn)		__define_initcall("1",fn,1)
-#define postcore_initcall(fn)		__define_initcall("2",fn,2)
-#define console_initcall(fn)		__define_initcall("3",fn,3)
-#define postconsole_initcall(fn)	__define_initcall("4",fn,4)
-#define mem_initcall(fn)		__define_initcall("5",fn,5)
-#define postmem_initcall(fn)		__define_initcall("6",fn,6)
-#define mmu_initcall(fn)		__define_initcall("7",fn,7)
-#define postmmu_initcall(fn)		__define_initcall("8",fn,8)
-#define coredevice_initcall(fn)		__define_initcall("9",fn,9)
-#define fs_initcall(fn)			__define_initcall("10",fn,10)
-#define device_initcall(fn)		__define_initcall("11",fn,11)
-#define crypto_initcall(fn)		__define_initcall("12",fn,12)
-#define of_populate_initcall(fn)	__define_initcall("13",fn,13)
-#define late_initcall(fn)		__define_initcall("14",fn,14)
-#define environment_initcall(fn)	__define_initcall("15",fn,15)
-#define postenvironment_initcall(fn)	__define_initcall("16",fn,16)
+#define core_initcall(fn)		__define_initcall(fn, 1)
+#define postcore_initcall(fn)		__define_initcall(fn, 2)
+#define console_initcall(fn)		__define_initcall(fn, 3)
+#define postconsole_initcall(fn)	__define_initcall(fn, 4)
+#define mem_initcall(fn)		__define_initcall(fn, 5)
+#define postmem_initcall(fn)		__define_initcall(fn, 6)
+#define mmu_initcall(fn)		__define_initcall(fn, 7)
+#define postmmu_initcall(fn)		__define_initcall(fn, 8)
+#define coredevice_initcall(fn)		__define_initcall(fn, 9)
+#define fs_initcall(fn)			__define_initcall(fn, 10)
+#define device_initcall(fn)		__define_initcall(fn, 11)
+#define crypto_initcall(fn)		__define_initcall(fn, 12)
+#define of_populate_initcall(fn)	__define_initcall(fn, 13)
+#define late_initcall(fn)		__define_initcall(fn, 14)
+#define environment_initcall(fn)	__define_initcall(fn, 15)
+#define postenvironment_initcall(fn)	__define_initcall(fn, 16)
 
-#define early_exitcall(fn)		__define_exitcall("0",fn,0)
-#define predevshutdown_exitcall(fn)	__define_exitcall("1",fn,1)
-#define devshutdown_exitcall(fn)	__define_exitcall("2",fn,2)
-#define postdevshutdown_exitcall(fn)	__define_exitcall("3",fn,3)
-#define prearchshutdown_exitcall(fn)	__define_exitcall("4",fn,4)
-#define archshutdown_exitcall(fn)	__define_exitcall("5",fn,5)
-#define postarchshutdown_exitcall(fn)	__define_exitcall("6",fn,6)
+#define early_exitcall(fn)		__define_exitcall(fn, 0)
+#define predevshutdown_exitcall(fn)	__define_exitcall(fn, 1)
+#define devshutdown_exitcall(fn)	__define_exitcall(fn, 2)
+#define postdevshutdown_exitcall(fn)	__define_exitcall(fn, 3)
+#define prearchshutdown_exitcall(fn)	__define_exitcall(fn, 4)
+#define archshutdown_exitcall(fn)	__define_exitcall(fn, 5)
+#define postarchshutdown_exitcall(fn)	__define_exitcall(fn, 6)
 
 #endif /* __ASSEMBLY__ */
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 7657ab6fc245..333dc1b8b6c6 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -762,7 +762,7 @@ struct clk_hw_onecell_data {
 
 #define CLK_OF_DECLARE(name, compat, fn)				\
 const struct of_device_id __clk_of_table_##name				\
-__attribute__ ((unused,section (".__clk_of_table"))) \
+	__ll_elem(.__clk_of_table) \
 	= { .compatible = compat, .data = fn }
 
 void of_clk_del_provider(struct device_node *np);
diff --git a/include/linux/export.h b/include/linux/export.h
index 90f6ada2d522..8f47742bea99 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -15,21 +15,20 @@ struct kernel_symbol
 };
 
 /* For every exported symbol, place a struct in the __ksymtab section */
-#define __EXPORT_SYMBOL(sym, sec)				\
+#define __EXPORT_SYMBOL(sym)					\
 	extern typeof(sym) sym;					\
 	static const char __ustrtab_##sym[]			\
-	__attribute__((section("__usymtab_strings")))		\
+	__ll_elem(__usymtab_strings)				\
 	= MODULE_SYMBOL_PREFIX #sym;                    	\
 	static const struct kernel_symbol __usymtab_##sym	\
-	__used \
-	__attribute__((section("__usymtab" sec), unused))	\
+	__ll_elem(__usymtab)					\
 	= { (unsigned long)&sym, __ustrtab_##sym }
 
 #define EXPORT_SYMBOL(sym)					\
-	__EXPORT_SYMBOL(sym, "")
+	__EXPORT_SYMBOL(sym)
 
 #define EXPORT_SYMBOL_GPL(sym)					\
-	__EXPORT_SYMBOL(sym, "")
+	__EXPORT_SYMBOL(sym)
 
 #else
 
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 98d056624fd4..b3bbae36e2f4 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -357,8 +357,8 @@ enum pci_fixup_pass {
 /* Anonymous variables would be nice... */
 #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
 				  class_shift, hook)			\
-	static const struct pci_fixup __PASTE(__pci_fixup_##name,__LINE__) __used	\
-	__attribute__((__section__(#section), aligned((sizeof(void *)))))    \
+	static const struct pci_fixup __PASTE(__pci_fixup_##name,__LINE__) \
+	__ll_elem(section) __aligned(sizeof(void *))			\
 		= { vendor, device, class, class_shift, hook };
 
 #define DECLARE_PCI_FIXUP_CLASS_EARLY(vendor, device, class,		\
diff --git a/include/magicvar.h b/include/magicvar.h
index 31292611bb7d..ef8eff798cc8 100644
--- a/include/magicvar.h
+++ b/include/magicvar.h
@@ -3,6 +3,7 @@
 #define __MAGIC_VARS_H
 
 #include <linux/stringify.h>
+#include <linux/compiler_types.h>
 
 struct magicvar {
 	const char *name;
@@ -19,9 +20,9 @@ extern struct magicvar __barebox_magicvar_end;
 #endif
 
 #ifdef CONFIG_CMD_MAGICVAR
-#define __BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)			\
-static const struct magicvar _name							\
-        __attribute__ ((used,section (".barebox_magicvar_" __stringify(_name)))) = {	\
+#define __BAREBOX_MAGICVAR_NAMED(_name, _varname, _description)	\
+static const struct magicvar _name				\
+        __ll_elem(.barebox_magicvar_##_name) = {		\
         .name	= #_varname,					\
 	.description = MAGICVAR_DESCRIPTION(_description),	\
 };
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index b710f99bf9d0..418be6fe7b53 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -3,6 +3,7 @@
 #define __RATP_BB_H
 
 #include <linux/stringify.h>
+#include <linux/compiler_types.h>
 
 #define BB_RATP_TYPE_COMMAND		1
 #define BB_RATP_TYPE_COMMAND_RETURN	2
@@ -66,7 +67,7 @@ __attribute__((aligned(64)))
 #define BAREBOX_RATP_CMD_START(_name)							\
 extern const struct ratp_command __barebox_ratp_cmd_##_name;				\
 const struct ratp_command __barebox_ratp_cmd_##_name					\
-	__attribute__ ((unused,section (".barebox_ratp_cmd_" __stringify(_name)))) = {
+	__ll_elem(.barebox_ratp_cmd_##_name) = {
 
 #define BAREBOX_RATP_CMD_END								\
 };
-- 
2.39.2



