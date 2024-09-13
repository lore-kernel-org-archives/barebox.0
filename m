Delivery-date: Fri, 13 Sep 2024 10:00:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1Ds-00430E-1E
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:00:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1Dq-00075r-QG
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:00:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v8teJ/L16iGdWUq7YI1a8sPLheEvGoDZ8AmilJKoMqI=; b=ghgC+b5O7Hf0iCbQT5usR7SXA9
	mzOihbebsIJA+7m6oxTYHogVelPvMbx+j+Vb7Vye6ZnDATH21uND+OPRpcosD98mba8WU912h3RBk
	nqXsYKxnjCUlGtYZTmrGQyquFKCh2VqEKkgmtflr+JiMSHY0YfFOBz73OxKSVEEudhMjsSMkh5jHd
	EG4e+VGsCXgK/5KBa4cqIb9YiEIhlO2vGasmE6O0HkPf3juUtzrwYJgKnBr35Bdlmrm5WS0Nwkt4r
	MijG1B6qqDNjxMvALOm9pI6qBEA3dxXB/F/Vi4cDR1OcacwPb1QbJM5SKCJKJkDJOEE8JlMZDAEib
	9BQAF0/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1DH-0000000FFoF-2KaP;
	Fri, 13 Sep 2024 07:59:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1DD-0000000FFlO-1cqU
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 07:59:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-0006Xd-6A; Fri, 13 Sep 2024 09:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DB-007Zae-PX; Fri, 13 Sep 2024 09:59:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DB-006w1Z-2E;
	Fri, 13 Sep 2024 09:59:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:09 +0200
Message-Id: <20240913075924.1652866-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_005927_453529_BB53DDD4 
X-CRM114-Status: GOOD (  11.99  )
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
Subject: [PATCH v4 01/16] keytoc: remove ECDSA dts support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Generating dts snippets for ECDSA keys does not work properly,
there are various endianess problems. As we do not need this currently
for barebox drop the support for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/keytoc.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 60e177aeee..3ac42bc6d0 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -470,15 +470,8 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 		return -EINVAL;
 
 	if (dts) {
-		fprintf(outfilep, "\t\tkey-%s {\n", key_name_c);
-		fprintf(outfilep, "\t\t\tecdsa,x-point = <");
-		print_bignum(key_x, bits);
-		fprintf(outfilep, ">;\n");
-		fprintf(outfilep, "\t\t\tecdsa,y-point = <");
-		print_bignum(key_y, bits);
-		fprintf(outfilep, ">;\n");
-		fprintf(outfilep, "\t\t\tecdsa,curve = \"%s\";\n", group);
-		fprintf(outfilep, "\t\t};\n");
+		fprintf(stderr, "ERROR: generating a dts snippet for ECDSA keys is not yet supported\n");
+		return -EOPNOTSUPP;
 	} else {
 		fprintf(outfilep, "\nstatic uint32_t %s_x[] = {", key_name_c);
 		print_bignum(key_x, bits);
@@ -598,6 +591,9 @@ static int gen_key(const char *keyname, const char *path)
 	}
 
 	ret = gen_key_ecdsa(key, keyname, key_name_c);
+	if (ret == -EOPNOTSUPP)
+		return ret;
+
 	if (ret)
 		ret = gen_key_rsa(key, keyname, key_name_c);
 
-- 
2.39.2



