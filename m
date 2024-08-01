Delivery-date: Thu, 01 Aug 2024 08:03:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOub-0052I6-2S
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 08:03:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOua-0001iY-Mx
	for lore@pengutronix.de; Thu, 01 Aug 2024 08:03:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PH3Nwr1a/TfBEVT1jpDfoEiGh5XGVL1u+G23Ccv8KtU=; b=ksS0EW08ZgSj4opek8weY4L579
	uCinTmnzQVJbyvISdEv3OoxdkZNZziiFHNDhejMlimV3XHC6mTDfx2N6xRaEY2iaQaN5j0TCEiEC7
	yeDiquX26amHf6E2aSvdMWMSz8TcMpCMuJuu/iKAEj0qt04SXc+U/eik3vGpfWQBTdj0/aokXzYZV
	K4HLz2KaTZIU31i3/6JTsuxbedzH4nJgtG2ZqW9iz5JPlAyCCVJtUHoh//YXHy2D2mn/P3eGfWB7O
	tVpbJ54IsWUNWYmcCdGT6BvfiwpQbT8Ox16gm8UcVDk3u14SJB2Uek0CKBoRhL1j2VQl82yGfgeEC
	d882l3Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu4-00000003qT6-0Own;
	Thu, 01 Aug 2024 06:03:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu0-00000003qPt-2j0e
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 06:03:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-0001Gn-CR; Thu, 01 Aug 2024 08:03:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOty-003hWm-Ve; Thu, 01 Aug 2024 08:03:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-00DNum-0L;
	Thu, 01 Aug 2024 07:57:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:32 +0200
Message-Id: <20240801055737.3190132-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_230304_705912_2C78FCE7 
X-CRM114-Status: GOOD (  12.27  )
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
Subject: [PATCH v2 14/19] keytoc: clarify error messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When we can't open the given path as certificate, we try reading it
as a public key. Clarify the error message accordingly and add a
comment about this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/keytoc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index aa36ba02e1..6c5ff9403d 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -57,7 +57,7 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
 	*pkey = NULL;
 	f = fopen(path, "r");
 	if (!f) {
-		fprintf(stderr, "Couldn't open certificate: '%s': %s\n",
+		fprintf(stderr, "Couldn't open certificate '%s': %s\n",
 			path, strerror(errno));
 		return -EACCES;
 	}
@@ -65,10 +65,11 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
 	/* Read the certificate */
 	cert = NULL;
 	if (!PEM_read_X509(f, &cert, NULL, NULL)) {
+		/* Can't open certificate, maybe it's a pubkey */
 		rewind(f);
 		key = PEM_read_PUBKEY(f, NULL, NULL, NULL);
 		if (!key) {
-			openssl_error("Couldn't read certificate");
+			openssl_error("Couldn't read certificate/pubkey %s\n", path);
 			ret = -EINVAL;
 			goto err_cert;
 		}
@@ -76,7 +77,7 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
 		/* Get the public key from the certificate. */
 		key = X509_get_pubkey(cert);
 		if (!key) {
-			openssl_error("Couldn't read public key\n");
+			openssl_error("Couldn't read public key from certificate\n");
 			ret = -EINVAL;
 			goto err_pubkey;
 		}
-- 
2.39.2



