Delivery-date: Fri, 17 Jun 2022 10:07:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o270b-004yzx-0D
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 10:07:14 +0200
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o270a-0004aG-8l
	for lore@pengutronix.de; Fri, 17 Jun 2022 10:07:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jWW2IdyhLjpkNIKRznnkdB4kmZ02idb5XaHQ5pGqHtA=; b=QZeoKyqTg3U9cf1XFgHOHylLuI
	tOHCTt/ztePjMjHVidoKKwp6GccBgpwJOExoViuo7ifUSR44qBHZDD6KnWhfoPEpkNbPYuz0YcLdC
	1y6h/msN0AanmzUuP+qVVNmFbQINBZPpsUcngWg38J9olqVuPHI5Meuuwsge/tobB2IqPtYEZfdBl
	VqRMXNouyhPHkKS1Yjk2yn/EW/5JWfMOKEVEbfPfdT8BbMD/sClCw3brWvY29eJqD0sGmT4ijmQoG
	AtTos4ea0kJe8eWGX3n7r+Jl31ioPmBsz7dl3OUK9vDASh0X8H7nWXHNh2KDAhD4tVZ/Nv7VHbvFR
	yxuNF4zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26zB-006DlN-6S; Fri, 17 Jun 2022 08:05:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26z5-006DjL-L3
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 08:05:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26z1-0004I0-UZ; Fri, 17 Jun 2022 10:05:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o26yz-001173-RA; Fri, 17 Jun 2022 10:05:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o26z0-0050gS-Jt; Fri, 17 Jun 2022 10:05:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 17 Jun 2022 10:05:32 +0200
Message-Id: <20220617080533.1194160-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_010539_762193_6EBDDD82 
X-CRM114-Status: GOOD (  10.97  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] env: let setenv() take printf arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's a common pattern to (ba)sprintf to a string and then call setenv()
with this string. Let setenv() take printf arguments to make that
easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c          | 10 +++++++++-
 include/environment.h |  5 +++--
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/common/env.c b/common/env.c
index 05add63f62..d69c86feab 100644
--- a/common/env.c
+++ b/common/env.c
@@ -251,11 +251,18 @@ static int dev_setenv(const char *name, const char *val)
  * Use unsetenv() to unset.
  */
 
-int setenv(const char *_name, const char *value)
+int setenv(const char *_name, const char *fmt, ...)
 {
+	va_list ap;
 	char *name = strdup(_name);
 	int ret = 0;
 	struct list_head *list;
+	char *value;
+	int len;
+
+	va_start(ap, fmt);
+	len = vasprintf(&value, fmt, ap);
+	va_end(ap);
 
 	if (strchr(name, '.')) {
 		ret = dev_setenv(name, value);
@@ -271,6 +278,7 @@ int setenv(const char *_name, const char *value)
 
 	ret = setenv_raw(list, name, value);
 out:
+	free(value);
 	free(name);
 
 	return ret;
diff --git a/include/environment.h b/include/environment.h
index 19e522cfb6..9e1cb5a929 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -31,7 +31,7 @@ char *var_name(struct variable_d *);
 
 #ifdef CONFIG_ENVIRONMENT_VARIABLES
 const char *getenv(const char *);
-int setenv(const char *, const char *);
+int setenv(const char *, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
 void export_env_ull(const char *name, unsigned long long val);
 int getenv_ull(const char *name, unsigned long long *val);
 int getenv_ul(const char *name, unsigned long *val);
@@ -44,7 +44,8 @@ static inline char *getenv(const char *var)
 	return NULL;
 }
 
-static inline int setenv(const char *var, const char *val)
+static inline __attribute__ ((format(__printf__, 2, 3))) int setenv(
+	const char *var, const char *fmt, ...)
 {
 	return 0;
 }
-- 
2.30.2



