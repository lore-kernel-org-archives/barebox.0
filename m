Delivery-date: Wed, 28 Feb 2024 18:52:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfO6C-00Dn9Y-1R
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 18:52:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfO6B-0003kl-Qa
	for lore@pengutronix.de; Wed, 28 Feb 2024 18:52:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wcJJ8gmH/0zwK6A98t1ad5bibLbv4nwop6deN1ImgGc=; b=2jQLj5WKsQ8asmhfoopi5Lrsk0
	4woYdqORFWJew4dhy06aynrHzw3MwP7jP/wjRvlnYunBYhvAeyvjhnNdd08CIeBypNQxZe5xlxbPO
	nmUAGNMJNp823yTTup1dbxoKpkKUguEyitMhWWc2SmNOgPXoc9aowla/Hu+NoJAB9Zpazba5l/TAL
	X9/ET2CzfBHM2ZvK/9JLdqbCjVXGaF9gVpquVE/VuzfmsMtzT9M4icSYYlvXMU2HD0LYby/+l8MOL
	zusqZHufwKBxVSbtfur1TNzW244Sfzoa0T75HwT+0Ft8xY0REFD5ZZoiNDj5dm5OgGlkoCQboC780
	3Va/WraA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfO5e-0000000AMJd-2iFc;
	Wed, 28 Feb 2024 17:51:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfO5b-0000000AMIH-1PHF
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 17:51:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfO5a-0003Ub-25; Wed, 28 Feb 2024 18:51:30 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfO5Z-003RFi-Ll; Wed, 28 Feb 2024 18:51:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfO5Z-00BTJK-0F;
	Wed, 28 Feb 2024 18:51:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 18:51:28 +0100
Message-Id: <20240228175128.2734265-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240228175128.2734265-1-a.fatoum@pengutronix.de>
References: <20240228175128.2734265-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_095131_399517_34A9B870 
X-CRM114-Status: GOOD (  11.63  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] env: export getenv_ullx() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

getenv_ull() will parse values according to prefix:

  - If it starts with 0x, it's hexadecimal
  - If it's just 0, it's octal
  - otherwise, it's decimal

Some variables like i.MX8M soc0.soc_uid are hexadecimal without leading
0x. Therefore add a getenv_ullx helper, so code that used to do:

  uid = imx8m_uid();

can be replaced with

  getenv_ullx("soc0.soc_uid", &uid);

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/env.c          | 15 +++++++++++++--
 include/environment.h |  6 ++++++
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/common/env.c b/common/env.c
index d673b061ab7a..b68e998e46b1 100644
--- a/common/env.c
+++ b/common/env.c
@@ -343,17 +343,28 @@ const char *getenv_nonempty(const char *var)
 }
 EXPORT_SYMBOL(getenv_nonempty);
 
-int getenv_ull(const char *var , unsigned long long *val)
+static int getenv_ull_base(const char *var, int base, unsigned long long *val)
 {
 	const char *valstr = getenv(var);
 
 	if (!valstr || !*valstr)
 		return -EINVAL;
 
-	*val = simple_strtoull(valstr, NULL, 0);
+	*val = simple_strtoull(valstr, NULL, base);
 
 	return 0;
 }
+
+int getenv_ull(const char *var , unsigned long long *val)
+{
+	return getenv_ull_base(var, 0, val);
+}
+EXPORT_SYMBOL(getenv_ull);
+
+int getenv_ullx(const char *var , unsigned long long *val)
+{
+	return getenv_ull_base(var, 16, val);
+}
 EXPORT_SYMBOL(getenv_ull);
 
 int getenv_ul(const char *var , unsigned long *val)
diff --git a/include/environment.h b/include/environment.h
index 1557c3a1d730..8b143c16b7ad 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -35,6 +35,7 @@ int setenv(const char *, const char *);
 int pr_setenv(const char *, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
 void export_env_ull(const char *name, unsigned long long val);
 int getenv_ull(const char *name, unsigned long long *val);
+int getenv_ullx(const char *name, unsigned long long *val);
 int getenv_ul(const char *name, unsigned long *val);
 int getenv_uint(const char *name, unsigned int *val);
 int getenv_bool(const char *var, int *val);
@@ -63,6 +64,11 @@ static inline int getenv_ull(const char *name, unsigned long long *val)
 	return -EINVAL;
 }
 
+static inline int getenv_ullx(const char *name, unsigned long long *val)
+{
+	return -EINVAL;
+}
+
 static inline int getenv_ul(const char *name, unsigned long *val)
 {
 	return -EINVAL;
-- 
2.39.2



