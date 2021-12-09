Delivery-date: Thu, 09 Dec 2021 11:58:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8Y-0010gY-NN
	for lore@lore.pengutronix.de; Thu, 09 Dec 2021 11:58:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8X-0000qm-11
	for lore@pengutronix.de; Thu, 09 Dec 2021 11:58:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GtLslP/guow31FpuqyymqwkEfyQMNlBvXUQnw4t5Mw=; b=SCDIwAIsJXj4Fn
	TvQxXmAJuYARwGOzA57uFlP5haAkRz8we+x9CcwacG87IC/cdFXCEfUK983CPHP2twujClTqde4we
	B/OEApvM8+T7FLcI7T9faW2n1qgW6r03MGKJTE19HrRr0hkgmFYZjVhVkUftDSlthk0Tetrz3vFtk
	t/qfMSDJC0hPqgGLkvGF7ilAPnnbPPOYssrwiEyigarCS/e/A+r+cytqXzWINrAmOYL1JuiEhhGiH
	N/M9XAKoqRvWx8+7DDP/neDjCtqM6jxIgXiU669zg0lF/yWen9NY6M3tRRWZAA6KmROm443RNYj7q
	AoXfbSpCwsi17YK+hevg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvH72-00FgtF-B2; Thu, 09 Dec 2021 10:57:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvH6v-00Fgrv-2g
 for barebox@lists.infradead.org; Thu, 09 Dec 2021 10:57:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH6r-0000Xc-Ag; Thu, 09 Dec 2021 11:57:09 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH6q-00El7l-Rg; Thu, 09 Dec 2021 11:57:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Dec 2021 11:57:08 +0100
Message-Id: <20211209105708.3517684-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
References: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_025713_148136_1D904F82 
X-CRM114-Status: GOOD (  12.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] of: implement new of_property_sprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Board code may compute values for device tree properties and write them
as strings. Make this easier by adding a of_property_write_string
variant that does formatted output. This also saves an allocation,
because asprintf buffer is reused.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 57 ++++++++++++++++++++++++++++++++++++++---------
 include/of.h      |  2 ++
 2 files changed, 49 insertions(+), 10 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 065265ec9756..321022f2b391 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2157,6 +2157,21 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 	return node;
 }
 
+static struct property *__of_new_property(struct device_node *node, const char *name,
+		void *data, int len)
+{
+	struct property *prop;
+
+	prop = xzalloc(sizeof(*prop));
+	prop->name = xstrdup(name);
+	prop->length = len;
+	prop->value = data;
+
+	list_add_tail(&prop->list, &node->properties);
+
+	return prop;
+}
+
 /**
  * of_new_property - Add a new property to a node
  * @node:	device node to which the property is added
@@ -2172,19 +2187,13 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 struct property *of_new_property(struct device_node *node, const char *name,
 		const void *data, int len)
 {
-	struct property *prop;
-
-	prop = xzalloc(sizeof(*prop));
-	prop->name = xstrdup(name);
-	prop->length = len;
-	prop->value = xzalloc(len);
+	char *buf;
 
+	buf = xzalloc(len);
 	if (data)
-		memcpy(prop->value, data, len);
+		memcpy(buf, data, len);
 
-	list_add_tail(&prop->list, &node->properties);
-
-	return prop;
+	return __of_new_property(node, name, buf, len);
 }
 
 /**
@@ -2256,6 +2265,34 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
 	return 0;
 }
 
+int of_property_sprintf(struct device_node *np,
+			const char *propname, const char *fmt, ...)
+{
+	struct property *pp;
+	struct va_format vaf;
+	char *buf = NULL;
+	va_list args;
+	int len;
+
+	if (!np)
+		return -ENOENT;
+
+	va_start(args, fmt);
+	vaf.fmt = fmt;
+	vaf.va = &args;
+	len = asprintf(&buf, "%pV", &vaf);
+	va_end(args);
+
+	if (len < 0)
+		return -ENOMEM;
+
+	pp = of_find_property(np, propname, NULL);
+	of_delete_property(pp);
+
+	__of_new_property(np, propname, buf, len);
+	return len;
+}
+
 static int mem_bank_num;
 
 int of_add_memory(struct device_node *node, bool dump)
diff --git a/include/of.h b/include/of.h
index 1b7392cdb3b9..e5df4cab4afc 100644
--- a/include/of.h
+++ b/include/of.h
@@ -241,6 +241,8 @@ extern int of_property_write_string(struct device_node *np, const char *propname
 				    const char *value);
 extern int of_property_write_strings(struct device_node *np, const char *propname,
 				    ...) __attribute__((__sentinel__));
+int of_property_sprintf(struct device_node *np, const char *propname, const char *fmt, ...)
+	__attribute__ ((format(__printf__, 3, 4)));
 
 extern struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

