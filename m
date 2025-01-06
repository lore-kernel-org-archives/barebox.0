Delivery-date: Mon, 06 Jan 2025 16:37:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUpAN-00HXuR-2k
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 16:37:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUpAN-0003Gf-PV
	for lore@pengutronix.de; Mon, 06 Jan 2025 16:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Eb0UmmnWyoZSP4qFjR5006pTKfxvIZJzWazd9Nkxedg=; b=epg4aEsQHLIFbiELIzowN6QWoU
	YIwGga3vIU//hbOLSirvY8kX5ooGnhvNrTx00MNh9JTTZVOxUYUlS/cVtYWRhLmWJIOj7kvy+/Qhb
	3rafHM9BrKiDj3MHH1FVNqI5YHmKaUXdcj1YM9xZjIvHLEPxlQsGD1JWMh5NRnaCllVvVmAcq/oAw
	iDP2iwJyhlLCrQjIhMCMLK/gtnsw3eLtNM/wNevi/XRsM896GvIGqavzFMLaTJA9F3GPHCoektODd
	SP7jQj33mVyfW4gEgeBBxB3iBGE+hkpLkRSlCxuoYho0srmtMUUlUpTJftAn/tcaD/TROwogcmHec
	ZQ1r/wPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUp9w-00000001nE7-0gch;
	Mon, 06 Jan 2025 15:36:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUp9q-00000001nBK-3GwX
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 15:36:48 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tUp9p-000304-IM; Mon, 06 Jan 2025 16:36:45 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Mon,  6 Jan 2025 16:36:31 +0100
Message-Id: <20250106153633.1470205-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_073646_817098_49951688 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] keytoc: move __ENV__ resolving to dedicated function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A future commit will also allow the FIT keyname hint to be passed via
an environment variable. So move the resolving to a dedicated function
now and use it for the FIT key name hint in a future commit.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 scripts/keytoc.c | 33 ++++++++++++++++++++++++---------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index c60df8a5f01..9b3522a602f 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -509,6 +509,24 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 	return 0;
 }
 
+static const char *try_resolve_env(const char *input)
+{
+	const char *var;
+
+	if (strncmp(input, "__ENV__", 7))
+		return input;
+
+	var = getenv(input + 7);
+	if (!var || *var == '\0') {
+		fprintf(stderr,
+			"environment variable \"%s\" is not set or empty\n",
+			input + 7);
+		return NULL;
+	}
+
+	return var;
+}
+
 static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name_c)
 {
 	BIGNUM *modulus, *r_squared;
@@ -579,6 +597,7 @@ static int gen_key(const char *keyname, const char *path)
 	EVP_PKEY *key;
 	char *tmp, *key_name_c;
 
+	/* key name handling */
 	tmp = key_name_c = strdup(keyname);
 
 	while (*tmp) {
@@ -587,15 +606,10 @@ static int gen_key(const char *keyname, const char *path)
 		tmp++;
 	}
 
-	if (!strncmp(path, "__ENV__", 7)) {
-		const char *var = getenv(path + 7);
-		if (!var) {
-			fprintf(stderr,
-				"environment variable \"%s\" is empty\n", path + 7);
-			exit(1);
-		}
-		path = var;
-	}
+	/* path/URI handling */
+	path = try_resolve_env(path);
+	if (!path)
+		exit(1);
 
 	if (!strncmp(path, "pkcs11:", 7)) {
 		ret = engine_get_pub_key(path, &key);
@@ -607,6 +621,7 @@ static int gen_key(const char *keyname, const char *path)
 			exit(1);
 	}
 
+	/* generate built-in keys */
 	ret = gen_key_ecdsa(key, keyname, key_name_c);
 	if (ret == -EOPNOTSUPP)
 		return ret;
-- 
2.39.5



