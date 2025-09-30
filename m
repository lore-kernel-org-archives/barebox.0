Delivery-date: Tue, 30 Sep 2025 15:47:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3ahV-002nRf-2b
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 15:47:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3ahV-00006g-86
	for lore@pengutronix.de; Tue, 30 Sep 2025 15:47:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hlgVJ5yFiyAc4pFIw/Idz/dwC/rIeKsoUl/V2nAHuH8=; b=jwEW+QwjYXj95WBEurQ78xwkQr
	iPywyLoaRY2qadI5hGhrHws9p3Ltebbq0euVRw6sUUZzyEWHqHcUCziKfyVitokPBRPRH3CftD7t9
	N7WvSoYmDCIj6QO/U03t5Zm+L1vYXmpdtCysGQXNPzan25cFo9jYDwvuvzjiljpVnkaqNVDmE+VbZ
	GLLYkZsnj8kYhqc2jNIjPaNd0kwUukJkx94eX2I/mX5NlB4urUURNyaYFmI1XIpwWHz2SjUHc40/X
	qH23gDMMn3SZfooNTGBJpTXnyzRCirQX0iXpi7XpatBs0OQRy3zhv7NmpLcaeTdfcpUO1D94iPcpj
	w2BsXyvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3agz-00000005Qcp-3XEI;
	Tue, 30 Sep 2025 13:46:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3agx-00000005Qc8-1eGs
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 13:46:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3agv-0008LP-Kp; Tue, 30 Sep 2025 15:46:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3agv-001G05-0x;
	Tue, 30 Sep 2025 15:46:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3agv-0000000CjnJ-0rFS;
	Tue, 30 Sep 2025 15:46:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Sep 2025 15:46:43 +0200
Message-ID: <20250930134652.3035951-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_064655_430344_198A8861 
X-CRM114-Status: GOOD (  11.01  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] scripts: rockchip: rkimage: reinstate OpenSSL 1.1 compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new signing support made the rkimage utility require OpenSSL 3.0.

We will keep that requirement for signing, but for usage without
signing, let's skip the signing bits optional and report an error on
attempting to sign.

Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Michael Tretter <m.tretter@pengutronix.de>
Fixes: 54da6347b273 ("scripts: rockchip: implement image signing")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/rkimage.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 9b3ae8bbfff7..e5b6d61c4a9d 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -13,7 +13,6 @@
 #include <stdbool.h>
 
 #include <openssl/bn.h>
-#include <openssl/core_names.h>
 /*
  * TODO Switch from the OpenSSL ENGINE API to the PKCS#11 provider and the
  * PROVIDER API: https://github.com/latchset/pkcs11-provider
@@ -64,7 +63,7 @@ static void idb_hash(struct newidb *idb)
 		sha512(idbu8, size, idbu8 + size);
 }
 
-static EVP_PKEY *load_key_pkcs11(const char *path)
+static __attribute__((unused)) EVP_PKEY *load_key_pkcs11(const char *path)
 {
 	const char *engine_id = "pkcs11";
 	ENGINE *e;
@@ -95,7 +94,7 @@ static EVP_PKEY *load_key_pkcs11(const char *path)
 	return pkey;
 }
 
-static EVP_PKEY *load_key_file(const char *path)
+static __attribute__((unused)) EVP_PKEY *load_key_file(const char *path)
 {
 	BIO *key;
 	EVP_PKEY *pkey = NULL;
@@ -180,6 +179,9 @@ static int create_newidb(struct newidb *idb)
 	return 0;
 }
 
+#if OPENSSL_VERSION_NUMBER >= 0x30000000L
+#include <openssl/core_names.h>
+
 static int rsa_get_params(EVP_PKEY *key, BIGNUM *e, BIGNUM *n, BIGNUM *np)
 {
 	BN_CTX *ctx = BN_CTX_new();
@@ -356,6 +358,13 @@ static int sign_newidb(struct newidb *idb, const char *path)
 
 	return ret;
 }
+#else
+static int sign_newidb(struct newidb *idb, const char *path)
+{
+       fprintf(stderr, "Signing support requires at least OpenSSL 3.0\n");
+       return -ENOSYS;
+}
+#endif
 
 struct option cbootcmd[] = {
 	{"help", 0, NULL, 'h'},
-- 
2.47.3



