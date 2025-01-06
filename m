Delivery-date: Mon, 06 Jan 2025 12:50:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUlcz-00HTUn-06
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 12:50:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUlcy-0002IX-VG
	for lore@pengutronix.de; Mon, 06 Jan 2025 12:50:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C7wh8UcN0zuY9lZ37/Wd3ixnffd+qZGCWd27hxnq3/w=; b=kGu0OjyI+xZ0+SuHZ+lu78Zdy+
	lwXmuYpvFSze+X1FHJjbiGIhT/wmY8J5+zVLpx1qwRQP5jMLDj0pYrTjzdOi4LoU0TL30sKW+uhca
	bFqPVnxh7ri32Xr2sqXaGLa/HpdveZtY8/7iU8ATf4wcBeFnUyJxJOOnEPpYTzJw0b6jDcjZZNNVf
	/WrFkWCVZCdeIyTi5bc+4cIVaNtxQG25ws6ZWvmN1nccaIVwnphWk43uZmhZdHOqDck5GorOpC687
	r8Wa5yzwUQWO7/deYgLDUH4m3lrBZEhTiWIa5Y7WbDWWWAq7KMwnWFATFn62S7MVgckgA2bx3+1BY
	5ZmqgSxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUlcN-0000000161U-2cks;
	Mon, 06 Jan 2025 11:49:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUlcK-0000000160w-0nhI
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 11:49:57 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tUlcI-0002A9-Va; Mon, 06 Jan 2025 12:49:54 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Mon,  6 Jan 2025 12:49:53 +0100
Message-Id: <20250106114953.1278352-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_034956_227472_D297DBFB 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] keytoc: check for memory allocation failures in print_bignum()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These failures are already detected in print_bignum(), so we should pass
them on as well for good measure.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 scripts/keytoc.c | 30 ++++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index c60df8a5f01..cde7f48df03 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -484,11 +484,17 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 		return -EOPNOTSUPP;
 	} else {
 		fprintf(outfilep, "\nstatic uint64_t %s_x[] = {", key_name_c);
-		print_bignum(key_x, bits, 64);
+		ret = print_bignum(key_x, bits, 64);
+		if (ret)
+			return ret;
+
 		fprintf(outfilep, "\n};\n\n");
 
 		fprintf(outfilep, "static uint64_t %s_y[] = {", key_name_c);
-		print_bignum(key_y, bits, 64);
+		ret = print_bignum(key_y, bits, 64);
+		if (ret)
+			return ret;
+
 		fprintf(outfilep, "\n};\n\n");
 
 		fprintf(outfilep, "static struct ecdsa_public_key %s = {\n", key_name_c);
@@ -526,10 +532,16 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 	if (dts) {
 		fprintf(outfilep, "\t\tkey-%s {\n", key_name_c);
 		fprintf(outfilep, "\t\t\trsa,r-squared = <");
-		print_bignum(r_squared, bits, 32);
+		ret = print_bignum(r_squared, bits, 32);
+		if (ret)
+			return ret;
+
 		fprintf(outfilep, ">;\n");
 		fprintf(outfilep, "\t\t\trsa,modulus= <");
-		print_bignum(modulus, bits, 32);
+		ret = print_bignum(modulus, bits, 32);
+		if (ret)
+			return ret;
+
 		fprintf(outfilep, ">;\n");
 		fprintf(outfilep, "\t\t\trsa,exponent = <0x%0lx 0x%lx>;\n",
 			(exponent >> 32) & 0xffffffff,
@@ -540,11 +552,17 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 		fprintf(outfilep, "\t\t};\n");
 	} else {
 		fprintf(outfilep, "\nstatic uint32_t %s_modulus[] = {", key_name_c);
-		print_bignum(modulus, bits, 32);
+		ret = print_bignum(modulus, bits, 32);
+		if (ret)
+			return ret;
+
 		fprintf(outfilep, "\n};\n\n");
 
 		fprintf(outfilep, "static uint32_t %s_rr[] = {", key_name_c);
-		print_bignum(r_squared, bits, 32);
+		ret = print_bignum(r_squared, bits, 32);
+		if (ret)
+			return ret;
+
 		fprintf(outfilep, "\n};\n\n");
 
 		if (standalone) {
-- 
2.39.5



