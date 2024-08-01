Delivery-date: Thu, 01 Aug 2024 07:58:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpZ-00529c-33
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 07:58:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpY-0008Ju-Up
	for lore@pengutronix.de; Thu, 01 Aug 2024 07:58:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bNzOwXjNUnl7xzEF/vCm5XJF/TwDJv634NtW9lvcfu0=; b=BijrBCSdHGyEGoGeNDDoRaZQwS
	epXuBfG+nhI2Jqea/aNN9Ow29r3M3SQ41Uf2+YnVmGbh/FTa3Ppd1zhYSvTgetxYRzOYguLWcepAD
	QkMr5d9Ec1c/lqCL+csbPmig0dl936UwQ9t9v29e71gdc7BZd0T0nv6ofhfcwEVR4EUcX1gfoNMhQ
	iyOP3PA94fWQdfQ3FdhhDIAuhtu5LjlY6cnCgAhwLMSMKtkvXjI1cftIvRJkwMcI2p1Rsrwa7BMkr
	cnXMeL8v3FLjDmcMbmw4iYRDotWeSNBqt5DLOnRORwCvBUyjfBZG1OsemJvh8TG036A7YE4fF1Rap
	P9eylRsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOoz-00000003pYI-3eoR;
	Thu, 01 Aug 2024 05:57:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOoo-00000003pS4-1KH1
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 05:57:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-0007uO-6F; Thu, 01 Aug 2024 07:57:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-003hVs-PC; Thu, 01 Aug 2024 07:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-00DNum-2A;
	Thu, 01 Aug 2024 07:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:23 +0200
Message-Id: <20240801055737.3190132-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_225742_503847_58F25AFD 
X-CRM114-Status: GOOD (  13.52  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/19] rsatoc: rename rsa_err() to openssl_error()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's nothing rsa_err() specific in this function, rename to
openssl_error().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index 462963424a..1d2eb48d08 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -21,7 +21,7 @@
 
 static int dts, standalone;
 
-static int rsa_err(const char *msg)
+static int openssl_error(const char *msg)
 {
 	unsigned long sslErr = ERR_get_error();
 
@@ -61,7 +61,7 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
 		rewind(f);
 		key = PEM_read_PUBKEY(f, NULL, NULL, NULL);
 		if (!key) {
-			rsa_err("Couldn't read certificate");
+			openssl_error("Couldn't read certificate");
 			ret = -EINVAL;
 			goto err_cert;
 		}
@@ -69,7 +69,7 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
 		/* Get the public key from the certificate. */
 		key = X509_get_pubkey(cert);
 		if (!key) {
-			rsa_err("Couldn't read public key\n");
+			openssl_error("Couldn't read public key\n");
 			ret = -EINVAL;
 			goto err_pubkey;
 		}
@@ -103,7 +103,7 @@ static int engine_get_pub_key(const char *key_id,
 {
 	*key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
 	if (!*key)
-		return rsa_err("Failure loading public key from engine");
+		return openssl_error("Failure loading public key from engine");
 
 	return 0;
 }
@@ -173,7 +173,7 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
 	/* Convert to a RSA_style key. */
 	rsa = EVP_PKEY_get1_RSA(key);
 	if (!rsa) {
-		rsa_err("Couldn't convert to a RSA style key");
+		openssl_error("Couldn't convert to a RSA style key");
 		return -EINVAL;
 	}
 
-- 
2.39.2



