Delivery-date: Mon, 20 Jun 2022 11:41:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Duu-007wtz-Ak
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 11:41:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Duu-0007Oh-0E
	for lore@pengutronix.de; Mon, 20 Jun 2022 11:41:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aJ6rwkg/cJtErvJd8NPGfqWGAeVM6ZS9nEQv7jmAZ74=; b=IHITESX9fGIBnWGbSkxdLX/IHO
	QW1X/TiHpnqDSk07UPLLp2vicBC4e4lxsWg3eqil6pFA6yxWcumiuNvVC/vMgO9/m6baR9rrkAIXQ
	7flsaFwB+gAXXxFGjDAWXUcAVx1gObvfVmqvlcMKp5l4mKwOhZyiqJsIS2eCTJ8BSWaM1d7/AX/vV
	NFU/st9k/a0CK49RoJot3/xxikPLt/kQviIaCV0jVaJ0KsbUerE4WLUd1aVF4qw1+cN5OBLoLwwrn
	1LIsrSQqTaqwpQFJDq044lFH95bHrHu80orI+U3whVL03Z/IgmRQ1dPnGcDybzViD/pI7lPIeLt6x
	QKyflIjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3DtS-00HGfl-6u; Mon, 20 Jun 2022 09:40:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Dt8-00HGcv-UD
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 09:40:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Dt7-0006xM-KE; Mon, 20 Jun 2022 11:40:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Dt5-001cCa-G9; Mon, 20 Jun 2022 11:40:04 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Dt6-0007V7-A0; Mon, 20 Jun 2022 11:40:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Jun 2022 11:39:52 +0200
Message-Id: <20220620093953.24822-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220620093953.24822-1-s.hauer@pengutronix.de>
References: <20220620093953.24822-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_024007_047035_D6E9B937 
X-CRM114-Status: GOOD (  14.51  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] env: let setenv() take printf arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's a common pattern to (ba)sprintf to a string and then call setenv()
with this string. Introduce pr_setenv() as a shortcut to simplify this
pattern.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c          | 32 ++++++++++++++++++++++++++++++--
 include/environment.h |  7 +++++++
 2 files changed, 37 insertions(+), 2 deletions(-)

diff --git a/common/env.c b/common/env.c
index 05add63f62..141cd66046 100644
--- a/common/env.c
+++ b/common/env.c
@@ -244,13 +244,12 @@ static int dev_setenv(const char *name, const char *val)
 
 /**
  * setenv - set environment variables
- * @_name - Variable name
+ * @name - Variable name
  * @value - the value to set, empty string not handled specially
  *
  * Returns 0 for success and a negative error code otherwise
  * Use unsetenv() to unset.
  */
-
 int setenv(const char *_name, const char *value)
 {
 	char *name = strdup(_name);
@@ -277,6 +276,35 @@ out:
 }
 EXPORT_SYMBOL(setenv);
 
+/**
+ * pr_setenv - set environment variables
+ * @name - Variable name
+ * @fmt - the format string to use
+ *
+ * Returns 0 for success and a negative error code otherwise
+ * Use unsetenv() to unset.
+ */
+int pr_setenv(const char *name, const char *fmt, ...)
+{
+	va_list ap;
+	int ret = 0;
+	char *value;
+	int len;
+
+	va_start(ap, fmt);
+	len = vasprintf(&value, fmt, ap);
+	va_end(ap);
+
+	if (len < 0)
+		return -ENOMEM;
+
+	ret = setenv(name, value);
+	free(value);
+
+	return ret;
+}
+EXPORT_SYMBOL(setenv);
+
 int export(const char *varname)
 {
 	const char *val = getenv_raw(&context->local, varname);
diff --git a/include/environment.h b/include/environment.h
index 19e522cfb6..1557c3a1d7 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -32,6 +32,7 @@ char *var_name(struct variable_d *);
 #ifdef CONFIG_ENVIRONMENT_VARIABLES
 const char *getenv(const char *);
 int setenv(const char *, const char *);
+int pr_setenv(const char *, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
 void export_env_ull(const char *name, unsigned long long val);
 int getenv_ull(const char *name, unsigned long long *val);
 int getenv_ul(const char *name, unsigned long *val);
@@ -49,6 +50,12 @@ static inline int setenv(const char *var, const char *val)
 	return 0;
 }
 
+static inline __attribute__ ((format(__printf__, 2, 3))) int pr_setenv(
+	const char *var, const char *fmt, ...)
+{
+	return 0;
+}
+
 static inline void export_env_ull(const char *name, unsigned long long val) {}
 
 static inline int getenv_ull(const char *name, unsigned long long *val)
-- 
2.30.2



