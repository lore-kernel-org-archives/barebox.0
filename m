Delivery-date: Thu, 21 Sep 2023 12:24:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrH-005lAP-82
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrF-0002Ey-BO
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:24:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZWN6MTlE5H0iqJ/dit401xc8ooh/rPOIYwiRA+gi51w=; b=xq+NmGJceoAyAS8ec203KkEvZL
	LWA6l2JfWFADSMnzT0cDeYOoeafmAXwiGJau57lSojUPTdHp8ovItyl9RC2slKivDQ4wkpEfSF9Ye
	VXGhyNIGzhZivYEdSvsH+IGp0m4ieIpvtoSnCvZv+VqLdfdZ0EPHEcm7V8IXCB90L/qFZy5lHmNiZ
	y1oS3MqOg6gwp6w3SErWv5BpYCJ6ol5FiqYGknEwuJn8VlHZALr6FgFEMIfy1zbhBilgcwfs1gJTv
	NtNTs9dk8AHW0WtuA2+Zb2EZb0AHbnOwy5rwWwTL9oG5Q9ktgtY0N2aqxTDq31CMBtPehoyZRhMNa
	6Ys6zSxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGqA-005hbs-0l;
	Thu, 21 Sep 2023 10:23:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGq4-005hZG-0R
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:23:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-0001lA-TQ; Thu, 21 Sep 2023 12:23:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-007u1l-DX; Thu, 21 Sep 2023 12:23:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-004eRH-19;
	Thu, 21 Sep 2023 12:23:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 12:23:08 +0200
Message-Id: <20230921102310.1108543-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
References: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032316_179932_510C015C 
X-CRM114-Status: GOOD (  13.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] rsatoc: support extracting RSA public key from X.509 SPKI format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In addition to PKCS#11 URIs, rsatoc supports extracting RSA public keys
out of x.509 PEM certificats, which is a base64-encoded format that begins
with the header `-----BEGIN CERTIFICATE-----'.

Another popular format for RSA public keys is the X.509 SPKI format,
which starts with the header `-----BEGIN PUBLIC KEY-----'. As public
keys are the only thing rsatoc is interested in, add support for the latter
as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/rsatoc.c | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index d7f6dad7f01e..f5b0ba27f9bc 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -58,17 +58,21 @@ static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
 	/* Read the certificate */
 	cert = NULL;
 	if (!PEM_read_X509(f, &cert, NULL, NULL)) {
-		rsa_err("Couldn't read certificate");
-		ret = -EINVAL;
-		goto err_cert;
-	}
-
-	/* Get the public key from the certificate. */
-	key = X509_get_pubkey(cert);
-	if (!key) {
-		rsa_err("Couldn't read public key\n");
-		ret = -EINVAL;
-		goto err_pubkey;
+		rewind(f);
+		key = PEM_read_PUBKEY(f, NULL, NULL, NULL);
+		if (!key) {
+			rsa_err("Couldn't read certificate");
+			ret = -EINVAL;
+			goto err_cert;
+		}
+	} else {
+		/* Get the public key from the certificate. */
+		key = X509_get_pubkey(cert);
+		if (!key) {
+			rsa_err("Couldn't read public key\n");
+			ret = -EINVAL;
+			goto err_pubkey;
+		}
 	}
 
 	/* Convert to a RSA_style key. */
-- 
2.39.2



