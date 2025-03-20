Delivery-date: Thu, 20 Mar 2025 06:21:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8LQ-001l7n-1k
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:21:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8LP-00047o-BX
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:21:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qwSd9uJZEvVsS8AUDyd14wJVXwMLRkdOmHjkSgCiKuw=; b=luJXPP/4tvAQVq6nKr/3rJZXIf
	cqf3HnhxoPrKBPWXDFzTKUyrkCk7XNEtvcql/MvXyUlKIp+y2Wlq5GZN6225ogtmfEtKd0Fm8yAZS
	ZUNQXT+zeG0X1lNoF8R+Tc/uwX6e28POSMFIWWce0yGnIZmt65Mhrb1KTNL5HY8xJeNIvrqYWsipr
	sbQUZQSeIKpuCG/MsaxhsO/6aDY/8yD61QgRRWhePPXvhxSXgpmNOIVbQOs6JbGxTHQyansmWZBpG
	rkDryqgbEe6oLsjjPS95QyzuIkA0viPVG5oNRmfr+Je4uP5jbyYFCWbLidMUOGnOXCeKTaN5qUs5q
	QaKCVKNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8L1-0000000BCui-40W2;
	Thu, 20 Mar 2025 05:21:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8Kz-0000000BCtK-3nVV
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:21:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-0003mX-MY; Thu, 20 Mar 2025 06:21:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-000hvo-0G;
	Thu, 20 Mar 2025 06:21:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Ky-007GdX-1K;
	Thu, 20 Mar 2025 06:21:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:58 +0100
Message-Id: <20250320052059.1732184-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052059.1732184-1-a.fatoum@pengutronix.de>
References: <20250320052059.1732184-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222101_949582_96EC40A0 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] env: add envvar_for_each helper for variable iteration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of opencoding the iteration where needed, implement a helper
invokes a callback on every variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/env.c          | 37 +++++++++++++++++++++++++++++++++++++
 include/environment.h |  7 +++++++
 2 files changed, 44 insertions(+)

diff --git a/common/env.c b/common/env.c
index e34e3ac078d6..fd01178aee54 100644
--- a/common/env.c
+++ b/common/env.c
@@ -123,6 +123,21 @@ static const char *getenv_raw(struct list_head *l, const char *name)
 	return NULL;
 }
 
+static int getenv_raw_call(int (*fn)(struct variable_d *v, void *data),
+			   struct list_head *l, void *data)
+{
+	struct variable_d *v;
+	int ret;
+
+	list_for_each_entry(v, l, list) {
+		ret = fn(v, data);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static const char *dev_getenv(const char *name)
 {
 	const char *pos, *val, *dot, *varname;
@@ -179,6 +194,28 @@ const char *getenv(const char *name)
 }
 EXPORT_SYMBOL(getenv);
 
+int envvar_for_each(int (*fn)(struct variable_d *v, void *data), void *data)
+{
+	struct env_context *c;
+	int ret;
+
+	c = context;
+
+	ret = getenv_raw_call(fn, &c->local, data);
+	if (ret)
+		return ret;
+
+	while (c) {
+		ret = getenv_raw_call(fn, &c->global, data);
+		if (ret)
+			return ret;
+		c = c->parent;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(envvar_for_each);
+
 static int setenv_raw(struct list_head *l, const char *name, const char *value)
 {
 	struct variable_d *v;
diff --git a/include/environment.h b/include/environment.h
index f26c68ba3e34..c24796427675 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -31,6 +31,7 @@ const char *var_name(struct variable_d *);
 
 #if IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES) && IN_PROPER
 const char *getenv(const char *);
+int envvar_for_each(int (*fn)(struct variable_d *v, void *data), void *data);
 int setenv(const char *, const char *);
 int pr_setenv(const char *, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
 void export_env_ull(const char *name, unsigned long long val);
@@ -46,6 +47,12 @@ static inline char *getenv(const char *var)
 	return NULL;
 }
 
+static inline int envvar_for_each(int (*fn)(struct list_head *l, void *data),
+				  void *data)
+{
+	return 0;
+}
+
 static inline int setenv(const char *var, const char *val)
 {
 	return 0;
-- 
2.39.5



