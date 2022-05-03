Delivery-date: Tue, 03 May 2022 11:13:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlobX-000QS1-Hw
	for lore@lore.pengutronix.de; Tue, 03 May 2022 11:13:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlobV-0002c4-RU
	for lore@pengutronix.de; Tue, 03 May 2022 11:13:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlUakCzP9YSyBb1v9A5Hib83b8LPAYI0IaUTFSbHcQo=; b=mCSvVihA7lofnx
	veF/UOKgV/7MIHFq1GgFuNzNtjSfRZTZftd40gbVLxtKn69LqGQ8Jodi8lxHXzq9rUdQkyrWaUl4i
	LHtRE49js+GwhDV+YSOIJzrlVEGeWUekkjGI4/GIbShdpRFPWMVRn2oh4AnO/vG30sKPYT2mge39O
	Kh4SuDgy78/ikv3c43hfi28RFxn9HT875tDITpbq81wE1KZ9bhu72ASDhbt0P3zUSiiGqm/teIrXf
	smIUyjErqxDnHgYZ9GWsVowNa27Dlswf8WGZuWVVhXcyUXsipMkzh49BxJZgcvCVRshL0YDSVuxpT
	vvQJmjhv9ntyqSjxBCDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nloaA-004lpf-Jw; Tue, 03 May 2022 09:12:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nloa0-004ll5-Lo
 for barebox@lists.infradead.org; Tue, 03 May 2022 09:12:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nloZz-00027x-DU; Tue, 03 May 2022 11:12:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nloZz-0005FN-9t; Tue, 03 May 2022 11:12:21 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nloZx-00GFCk-1q; Tue, 03 May 2022 11:12:21 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  3 May 2022 11:12:18 +0200
Message-Id: <20220503091220.3871612-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220503091220.3871612-1-o.rempel@pengutronix.de>
References: <20220503091220.3871612-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_021224_804618_9B07B265 
X-CRM114-Status: GOOD (  13.76  )
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
Subject: [PATCH v6 3/5] of: add generic of_prepend_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add generic function to extend/fixup machine compatible.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/misc.c    | 23 +++++++++++++++++++++++
 common/oftree.c  | 36 ++++++++++++++++++++++++++++++++++++
 include/common.h |  3 +++
 include/of.h     |  6 ++++++
 4 files changed, 68 insertions(+)

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
index 51f825c3f3..91b3fcc9fa 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -207,11 +207,16 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	int instance = reset_source_get_instance();
 	struct device_d *dev;
 	const char *serialno;
+	const char *compat;
 
 	serialno = barebox_get_serial_number();
 	if (serialno)
 		of_property_write_string(root, "serial-number", serialno);
 
+	compat = barebox_get_of_machine_compatible();
+	if (compat)
+		of_prepend_machine_compatible(root, compat);
+
 	node = of_create_node(root, "/chosen");
 	if (!node)
 		return -ENOMEM;
@@ -483,3 +488,34 @@ int of_autoenable_i2c_by_component(char *path)
 
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
+	if (of_device_is_compatible(root, compat))
+		return 0;
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
index cf9950e9b3..3a8e32f69c 100644
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
+					 const char *compat)
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

