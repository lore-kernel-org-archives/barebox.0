Delivery-date: Fri, 06 Sep 2024 12:41:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWP0-001qok-11
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:41:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWOz-0002Xb-56
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:41:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v8teJ/L16iGdWUq7YI1a8sPLheEvGoDZ8AmilJKoMqI=; b=QViDb9FHS5ezIjgeEj+a6BocNE
	UWsNkMQAzC5GQHP+teyy+dXFJeTwX927vBfQzSt1TKrop4HlPokihP1Ynz8FVqsLivSoRYC3oDCQW
	luil448L1Tk7PARk2npK/U/txbRObDXTmJa+Kg6BA4Z0DR6FPmB+xI9ZVqONLDT9eJueAfnSeS8ub
	jGSdUdLA3LRhVavlPBfMiFLUIGaoQ4mKQ4z8VYbKNj5F4+yuktawi0Rda/Dg9f3ii0Ls6/TcWY+6S
	vtAK3zyKoyMByKJ3SwMnEvC0h8wlRW0xbd5oMHrQDO23OhfnO1IzIfdMYS8DTCiNoq0jRnClsBFYs
	k1fGBLfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOO-0000000Bo1w-0yHs;
	Fri, 06 Sep 2024 10:40:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOJ-0000000Bnyz-024a
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:40:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOH-00024Y-KD; Fri, 06 Sep 2024 12:40:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-005vJJ-Np; Fri, 06 Sep 2024 12:40:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-009BBJ-24;
	Fri, 06 Sep 2024 12:40:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Sep 2024 12:40:14 +0200
Message-Id: <20240906104028.2187872-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240906104028.2187872-1-s.hauer@pengutronix.de>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034035_141907_CEF48304 
X-CRM114-Status: GOOD (  12.02  )
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
Subject: [PATCH v3 01/15] keytoc: remove ECDSA dts support
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



