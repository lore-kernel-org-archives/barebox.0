Delivery-date: Wed, 04 May 2022 15:17:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEt7-001g84-Cz
	for lore@lore.pengutronix.de; Wed, 04 May 2022 15:17:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEt4-00020i-TN
	for lore@pengutronix.de; Wed, 04 May 2022 15:17:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjorRcIWuta49x2mJr+q2qiGMHlklguvlYrHs4lu21M=; b=G1fnN/u8/a95Oe
	7jg0ENdn3/I7W43aIjt1b/RUeK/wC1gQsqLesL2g9akmqUKKENpJ8ee+eDUoUV8am4Ol6uOwerzAt
	lNdJSyAwV6N4WjwepYAD1VBH493+G6kbJYb0IRmneRB+zPzklD0jy3qy7rZEEY7NwPrXKJA4EJ5Ep
	3ijveMZK8VdBEkAAMLDSSVdiBdduA2jbg614Aq4dET9FxRkgkQnD44bEgGLU+CEI/mFjgr2BjebPR
	773xcBmj0Lzgq95suJx3y4TxeuIO0ynVGiqsuTnxuz6UhdA2FzENN8Wt8Z1+g+hPGfVDO+BQFiFl8
	3lzI0XEmkAnz4OCIZC9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmErb-00AzUQ-0S; Wed, 04 May 2022 13:16:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEpx-00Ayj4-Gf
 for barebox@lists.infradead.org; Wed, 04 May 2022 13:14:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-000104-4D; Wed, 04 May 2022 15:14:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpf-000JqP-Vc; Wed, 04 May 2022 15:14:18 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpd-00GEiB-MY; Wed, 04 May 2022 15:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 May 2022 15:14:16 +0200
Message-Id: <20220504131416.3869736-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220504131416.3869736-1-s.hauer@pengutronix.de>
References: <20220504131416.3869736-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_061437_607667_4062322C 
X-CRM114-Status: GOOD (  13.45  )
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
Subject: [PATCH 8/8] fit: try other keys as fallback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far the rsa key and the image signature must have a matching
key-name-hint. Relax that by trying other available keys when
the key-name-hints don't match or when the matching key can't verify
the signature.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 36 ++++++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 152d066f47..a410632d70 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -256,7 +256,7 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 				   enum hash_algo algo, void *hash)
 {
 	const struct rsa_public_key *key;
-	const char *key_name;
+	const char *key_name = NULL;
 	int sig_len;
 	const char *sig_value;
 	int ret;
@@ -267,24 +267,32 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 		return -EINVAL;
 	}
 
-	if (of_property_read_string(sig_node, "key-name-hint", &key_name)) {
-		pr_err("key name not found in %s\n", sig_node->full_name);
-		return -EINVAL;
+	of_property_read_string(sig_node, "key-name-hint", &key_name);
+	if (key_name) {
+		key = rsa_get_key(key_name);
+		if (key) {
+			ret = rsa_verify(key, sig_value, sig_len, hash, algo);
+			if (!ret)
+				goto ok;
+		}
 	}
 
-	key = rsa_get_key(key_name);
-	if (!key) {
-		pr_err("No such key: %s\n", key_name);
-		return -ENOENT;
+	for_each_rsa_key(key) {
+		if (key_name && !strcmp(key->key_name_hint, key_name))
+			continue;
+
+		ret = rsa_verify(key, sig_value, sig_len, hash, algo);
+		if (!ret)
+			goto ok;
 	}
 
-	ret = rsa_verify(key, sig_value, sig_len, hash, algo);
-	if (ret)
-		pr_err("image signature BAD\n");
-	else
-		pr_info("image signature OK\n");
+	pr_err("image signature BAD\n");
 
-	return ret;
+	return -EBADMSG;
+ok:
+	pr_info("image signature OK\n");
+
+	return 0;
 }
 
 /*
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

