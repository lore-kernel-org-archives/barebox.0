Delivery-date: Thu, 21 Aug 2025 19:52:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T8-0032dc-04
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 19:52:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T6-0005vg-K4
	for lore@pengutronix.de; Thu, 21 Aug 2025 19:52:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mR0Bm7zoJrg4JOd5zTa3JVEcMKMysA0wJgQkAKKqxfI=; b=lxe0uLgkVUknRe/N3VRAp/Pvwn
	CVmtFzBsut3D+1UUMK/Eth+i9uhL3Ru0rWrdt5CXD6IqbZBvPpnbRoGJ/bDhRswz5iRsjwR/cmln3
	3z2c2yGENkfdMWdb10rZOZ2o6jyD2NpOUaXkXmmihnQXFFzLi4mKCbVTXvmP3VSudUuvYMHhrFyym
	OFI67zo69PTZmo3yerUGpjPAfk2K16WKDKFutFiXLzzreCZQvQkiIQUwcdnnJRfRVHyiEN0K6zTg/
	zzltEK+gAnn64K+H2LGmeaeR4NApBZ7uB/AisbDJV6thiYO4V3E2cWNlblA92aFpcIYm+lCcUZnif
	7z67mULw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9SQ-000000006sw-20OY;
	Thu, 21 Aug 2025 17:52:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5Ba-0000000H1aH-3Mde
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 13:18:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-0008Vg-IY; Thu, 21 Aug 2025 15:18:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-001Q3K-0y;
	Thu, 21 Aug 2025 15:18:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-00HHYe-0g;
	Thu, 21 Aug 2025 15:18:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Aug 2025 15:18:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-keynames-v1-6-8144af76d0ab@pengutronix.de>
References: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
In-Reply-To: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755782311; l=3440;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=8v4goGUa9Awy8wUFk5Z0A5ge3WGOPSJz0qwpH913CRY=;
 b=u3ROzhJG7HL4Q10/y8vXhU8b6Gq02gl4JM02rjOsrSVCMTxvjTy75ha5gU9ic5vNsLh+gUo35
 5dSAirsH0cvAmP4aXruN1/v9Y2MOTy+LO1wYJB2bfaACvacuKyfnQv4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_061834_859119_98F00805 
X-CRM114-Status: GOOD (  15.48  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] fit: improve diagnostics
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

FIT image output can become very verbose when a FIT image with multiple
device tree overlays is used. This hides several messages from normal
output and only prints them in verbose mode, (i.e. called via bootm -v)

Also from the output we could not see if all available keys fail to
verify the image or if no key is available at all. This patch improves
this by printing it clearly that no keys are available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c   | 23 +++++++++++++++++------
 crypto/public-keys.c |  4 +++-
 2 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 1fe5aaf9bb186ae2407818b7824deea3f182e3e0..46e687bf91412f6957a8ba61c4b81648a8346b1d 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -258,6 +258,7 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
 static int fit_check_signature(struct fit_handle *handle, struct device_node *sig_node,
 			       enum hash_algo algo, void *hash)
 {
+	const char *fail_reason = "no built-in keys";
 	const struct public_key *key;
 	const char *key_name = NULL;
 	int sig_len;
@@ -275,26 +276,34 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 		key = public_key_get(key_name);
 		if (key) {
 			ret = public_key_verify(key, sig_value, sig_len, hash, algo);
+			if (handle->verbose)
+				pr_info("Key %*phN (%s) -> signature %s\n", key->hashlen,
+					key->hash, key_name, ret ? "BAD" : "OK");
 			if (!ret)
 				goto ok;
 		}
 	}
 
 	for_each_public_key(key) {
+		fail_reason = "verification failed";
+
 		if (key_name && !strcmp(key->key_name_hint, key_name))
 			continue;
 
 		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
+
+		if (handle->verbose)
+			pr_info("Key %*phN -> signature %s\n", key->hashlen, key->hash,
+				ret ? "BAD" : "OK");
+
 		if (!ret)
 			goto ok;
 	}
 
-	pr_err("image signature BAD\n");
+	pr_err("image signature BAD: %s\n", fail_reason);
 
 	return -EBADMSG;
 ok:
-	pr_info("image signature OK\n");
-
 	return 0;
 }
 
@@ -417,10 +426,11 @@ static int fit_verify_hash(struct fit_handle *handle, struct device_node *image,
 	digest_update(d, data, data_len);
 
 	if (digest_verify(d, value_read)) {
-		pr_info("%pOF: hash BAD\n", hash);
+		pr_err("%pOF: hash BAD\n", hash);
 		ret =  -EBADMSG;
 	} else {
-		pr_info("%pOF: hash OK\n", hash);
+		if (handle->verbose)
+			pr_info("%pOF: hash OK\n", hash);
 		ret = 0;
 	}
 
@@ -663,7 +673,8 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		return ret;
 
 	of_property_read_string(image, "description", &desc);
-	pr_info("image '%s': '%s'\n", unit, desc);
+	if (handle->verbose)
+		pr_info("image '%s': '%s'\n", unit, desc);
 
 	of_property_read_string(image, "type", &type);
 	if (!type) {
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index 3b691ffd6aa536084aefca90933b4bb74b724423..05ea6e76d212e9a37a6691647ce9e6350141c18d 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -96,8 +96,10 @@ static int init_public_keys(void)
 	for (iter = __public_keys_start; iter != __public_keys_end; iter++) {
 		struct public_key *key = public_key_dup(iter);
 
-		if (!key)
+		if (!key) {
+			pr_warn("error while adding key\n");
 			continue;
+		}
 
 		public_key_add(key);
 	}

-- 
2.39.5



