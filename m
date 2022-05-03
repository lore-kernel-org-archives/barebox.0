Delivery-date: Tue, 03 May 2022 06:44:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlkOI-000DCl-H0
	for lore@lore.pengutronix.de; Tue, 03 May 2022 06:44:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlkOG-00006G-6h
	for lore@pengutronix.de; Tue, 03 May 2022 06:44:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvU8z5kBb9hEVSlfeWcYl80EE85Wn3zGUWmhOn7jap0=; b=wENQHtTWELHLDd
	jN1XUsCe8P8qUtgfBa5+T6kqrOOw8Azapxk7kGbsZCylkm97FuEceKzbelB77okftTYd79h8pAFV3
	Kzf4GS2nSI6phQ4q9RxFZOCh2GPtz6TQ7wCthr48ynwzqAMObZy0GTn82H0vfm4TLIBaOCieSKC4y
	UluRe/UxU8t5ADvbtfyCgjm5wipPdH40DhZK3MWThRx6960UJlZLcN9KKyNrI6wJrn97sK3ItPCNi
	nQ6EIGfFI8RX4A9L+9/Or9Wu1MUJ0WDRGkFSoRdMp5HAAd8HAbU/u8PJCL3P69qOyFqbJH2WuI3dQ
	6lfkN8fMnh8eZiou7WHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlkMg-003fns-4b; Tue, 03 May 2022 04:42:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlkMZ-003flL-0F
 for barebox@lists.infradead.org; Tue, 03 May 2022 04:42:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nlkMT-00086E-It; Tue, 03 May 2022 06:42:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nlkMU-0002qU-7y; Tue, 03 May 2022 06:42:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nlkMR-00DYzX-GS; Tue, 03 May 2022 06:42:07 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  3 May 2022 06:42:04 +0200
Message-Id: <20220503044206.3232712-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220503044206.3232712-1-o.rempel@pengutronix.de>
References: <20220503044206.3232712-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_214215_086793_6D09C4FD 
X-CRM114-Status: GOOD (  15.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 3/5] of: add generic of_fixup_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add generic function to extend/fixup machine compatible.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/Kconfig   |  5 +++++
 common/misc.c    | 23 +++++++++++++++++++++++
 common/oftree.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
 include/common.h |  3 +++
 include/of.h     |  6 ++++++
 5 files changed, 80 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index f7a6a96e87..7385848dfc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1066,6 +1066,11 @@ config MACHINE_ID
 	  Note: if no hashable information is available no machine id will be passed
 	  to the kernel.
 
+config MACHINE_FIXUP
+	bool "fix up machine compatible"
+	help
+	  fixup machine compatible supplied by board code info device tree
+
 config SYSTEMD_OF_WATCHDOG
 	bool "inform devicetree-enabled kernel of used watchdog"
 	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
diff --git a/common/misc.c b/common/misc.c
index 3b3bc05bfd..0f6de3e9e5 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -150,6 +150,7 @@ BAREBOX_MAGICVAR(global.model, "Product name of this hardware");
 
 static char *hostname;
 static char *serial_number;
+static char *of_machine_compatible;
 
 /*
  * The hostname is supposed to be the shortname of a board. It should
@@ -195,6 +196,28 @@ const char *barebox_get_serial_number(void)
 
 BAREBOX_MAGICVAR(global.serial_number, "Board serial number");
 
+void barebox_set_of_machine_compatible(const char *__compatible)
+{
+	free(of_machine_compatible);
+	of_machine_compatible = xstrdup(__compatible);
+}
+
+const char *barebox_get_of_machine_compatible(void)
+{
+	return of_machine_compatible;
+}
+
+static int of_kernel_init(void)
+{
+	globalvar_add_simple_string("of.kernel.add_machine_compatible",
+				    &of_machine_compatible);
+
+	return 0;
+}
+device_initcall(of_kernel_init);
+
+BAREBOX_MAGICVAR(global.of.kernel.add_machine_compatible, "Additional machine/board compatible");
+
 void __noreturn panic(const char *fmt, ...)
 {
 	va_list args;
diff --git a/common/oftree.c b/common/oftree.c
index 995e7201bf..5b183192bc 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -212,6 +212,15 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	if (serialno)
 		of_property_write_string(root, "serial-number", serialno);
 
+	if (IS_ENABLED(CONFIG_MACHINE_FIXUP)) {
+		const char *compat;
+
+		compat = getenv("global.of.kernel.add_machine_compatible");
+		if (compat)
+			of_prepend_machine_compatible(root, compat);
+
+	}
+
 	node = of_create_node(root, "/chosen");
 	if (!node)
 		return -ENOMEM;
@@ -483,3 +492,37 @@ int of_autoenable_i2c_by_component(char *path)
 
 	return ret;
 }
+
+int of_prepend_machine_compatible(struct device_node *root, const char *compat)
+{
+	int cclen = 0, clen = strlen(compat) + 1;
+	const char *curcompat;
+	void *buf;
+
+	if (!root) {
+		root = of_get_root_node();
+		if (!root)
+			return -ENODEV;
+	}
+
+	if (of_machine_is_compatible(compat)) {
+		pr_warn("Machine is already compatible to %s. Skip compatible modification\n",
+			compat);
+		return 0;
+	}
+
+	curcompat = of_get_property(root, "compatible", &cclen);
+
+	buf = xzalloc(cclen + clen);
+
+	memcpy(buf, compat, clen);
+
+	if (curcompat)
+		memcpy(buf + clen, curcompat, cclen);
+
+	of_set_property(root, "compatible", buf, cclen + clen, true);
+
+	free(buf);
+
+	return 0;
+}
diff --git a/include/common.h b/include/common.h
index 967502a7ab..bd12035688 100644
--- a/include/common.h
+++ b/include/common.h
@@ -129,4 +129,7 @@ void barebox_set_hostname_no_overwrite(const char *);
 const char *barebox_get_serial_number(void);
 void barebox_set_serial_number(const char *);
 
+void barebox_set_of_machine_compatible(const char *);
+const char *barebox_get_of_machine_compatible(void);
+
 #endif	/* __COMMON_H_ */
diff --git a/include/of.h b/include/of.h
index cf9950e9b3..cf1087f661 100644
--- a/include/of.h
+++ b/include/of.h
@@ -316,6 +316,7 @@ struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
 		const char *str);
 int of_autoenable_device_by_path(char *path);
 int of_autoenable_i2c_by_component(char *path);
+int of_prepend_machine_compatible(struct device_node *root, const char *compat);
 #else
 static inline bool of_node_name_eq(const struct device_node *np, const char *name)
 {
@@ -834,6 +835,11 @@ static inline int of_autoenable_i2c_by_component(char *path)
 	return -ENODEV;
 }
 
+static int of_prepend_machine_compatible(struct device_node *root,
+				       const char *compat)
+{
+	return -ENODEV;
+}
 
 #endif
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

