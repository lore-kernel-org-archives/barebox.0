Delivery-date: Wed, 04 May 2022 15:16:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmErt-001g41-1N
	for lore@lore.pengutronix.de; Wed, 04 May 2022 15:16:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmErq-0001Xx-Qx
	for lore@pengutronix.de; Wed, 04 May 2022 15:16:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiQ+ZTtF36uap5BoGj36Wtl7/Yw9JEfjo2xf7YoLv5I=; b=WxfGYlF2N1GJWT
	wShtz+DzQcoFV8RY8O6N/LoHZoNJlFr4jDeJvKoyw4lJ8YqOMALbe5DGA0FnNjE4/FL9UXP5SGPbh
	4a5GX0+/h8kQs25dwBcuM0ROyfGZ+Bgdk5Cq+vNsiwi9r2BOwqTGMLgtkVfklAUkE7V/0wphaHWNg
	ZawNFVGHRqKCpt5emtl7M+e3ebhFbU97H98m6hept4gCk1l6fyPc9BHIUGr+mTdQSauX+AB/gzpyc
	+VaMKC1hzPA1aoZ5GIWgP+TA6WLTMHGH+SUiv20G971JIm8Qk25WJEnIbnJJYB4eHmWQZge5IAgz3
	HbqTWxyFK0wOB7466ZNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmEq8-00Ayls-SU; Wed, 04 May 2022 13:14:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEpl-00Ayb1-LT
 for barebox@lists.infradead.org; Wed, 04 May 2022 13:14:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpf-000105-Ci; Wed, 04 May 2022 15:14:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-000JqR-0C; Wed, 04 May 2022 15:14:18 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpd-00GEi2-L2; Wed, 04 May 2022 15:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 May 2022 15:14:13 +0200
Message-Id: <20220504131416.3869736-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220504131416.3869736-1-s.hauer@pengutronix.de>
References: <20220504131416.3869736-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_061425_767166_F8FEA23A 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH 5/8] rsa: Add iterator for rsa keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/rsa.c  | 9 +++++++++
 include/rsa.h | 4 ++++
 2 files changed, 13 insertions(+)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index 4e2d463b54..2eeb9984b1 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -446,6 +446,15 @@ void rsa_key_free(struct rsa_public_key *key)
 
 static LIST_HEAD(rsa_keys);
 
+const struct rsa_public_key *rsa_key_next(const struct rsa_public_key *prev)
+{
+	prev = list_prepare_entry(prev, &rsa_keys, list);
+	list_for_each_entry_continue(prev, &rsa_keys, list)
+		return prev;
+
+	return NULL;
+}
+
 const struct rsa_public_key *rsa_get_key(const char *name)
 {
 	const struct rsa_public_key *key;
diff --git a/include/rsa.h b/include/rsa.h
index 4ef16ea5a8..650fb234f2 100644
--- a/include/rsa.h
+++ b/include/rsa.h
@@ -55,4 +55,8 @@ struct rsa_public_key *rsa_of_read_key(struct device_node *node);
 void rsa_key_free(struct rsa_public_key *key);
 const struct rsa_public_key *rsa_get_key(const char *name);
 
+const struct rsa_public_key *rsa_key_next(const struct rsa_public_key *prev);
+
+#define for_each_rsa_key(key) \
+		for (key = rsa_key_next(NULL); key; key = rsa_key_next(key))
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

