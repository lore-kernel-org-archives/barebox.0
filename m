Delivery-date: Wed, 04 May 2022 15:17:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEsI-001g5m-Fr
	for lore@lore.pengutronix.de; Wed, 04 May 2022 15:17:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEsG-0001fW-No
	for lore@pengutronix.de; Wed, 04 May 2022 15:17:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWWLBmyFPbiKlNBHgFLmeaKQRuwVJGiOleSguUqrmrM=; b=gpboaN/2k1zGP8
	jgcoQ6mKdG+tAeWFZ2QEHZ3sITv9EFkDFNYgUsLN4VwdGVwtWdWZhr+wUlhq7iqQ8rKHysr9CfQPE
	D8W+p+jzp9e4iSX7bPAls6idsVbz7oApgoKIYJ4NdWg0aeOp00N2xdi5wYegn5JUCthbbXAwrmVrU
	1DgvnqRzN9w3S8yFppUOcL9pNoV98nqq+fLPJ/JrUneo28gxR+al1cfymVU/CtTwVT+GzOg/psr4i
	YBEmhX5eQjFPcD1cre7rdHm1RlDiPCTwrpQlzy3WDWNatTltpxlO/Zc5FSD38pDomRW6d8o9c8sbu
	yRsZDZdUzEQhX/mId+YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmEqm-00Az1P-HJ; Wed, 04 May 2022 13:15:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEpl-00AybF-LP
 for barebox@lists.infradead.org; Wed, 04 May 2022 13:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-00010X-34; Wed, 04 May 2022 15:14:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-000JqZ-OZ; Wed, 04 May 2022 15:14:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpd-00GEht-J8; Wed, 04 May 2022 15:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 May 2022 15:14:10 +0200
Message-Id: <20220504131416.3869736-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220504131416.3869736-1-s.hauer@pengutronix.de>
References: <20220504131416.3869736-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_061425_859553_1956B04F 
X-CRM114-Status: GOOD (  15.60  )
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
Subject: [PATCH 2/8] rsatoc: Add option to print dts output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add -d option to generate output in dts format rather than C.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 103 +++++++++++++++++++++++++++++++++++------------
 1 file changed, 78 insertions(+), 25 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index 722c5dba19..d7f6dad7f0 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -18,6 +18,8 @@
 #include <openssl/evp.h>
 #include <openssl/engine.h>
 
+static int dts;
+
 static int rsa_err(const char *msg)
 {
 	unsigned long sslErr = ERR_get_error();
@@ -311,6 +313,7 @@ static int print_bignum(BIGNUM *num, int num_bits)
 	BIGNUM *tmp, *big2, *big32, *big2_32;
 	BN_CTX *ctx;
 	int i;
+	uint32_t *arr;
 
 	tmp = BN_new();
 	big2 = BN_new();
@@ -338,16 +341,35 @@ static int print_bignum(BIGNUM *num, int num_bits)
 	BN_set_word(big32, 32L);
 	BN_exp(big2_32, big2, big32, ctx); /* B = 2^32 */
 
+	arr = malloc(num_bits / 32 * sizeof(uint32_t));
+
 	for (i = 0; i < num_bits / 32; i++) {
 		BN_mod(tmp, num, big2_32, ctx); /* n = N mod B */
-		if (i % 4)
-			fprintf(outfilep, " ");
-		else
-			fprintf(outfilep, "\n\t");
-		fprintf(outfilep, "0x%08lx,", BN_get_word(tmp));
+		arr[i] = BN_get_word(tmp);
 		BN_rshift(num, num, 32); /*  N = N/B */
 	}
 
+	if (dts) {
+		for (i = 0; i < num_bits / 32; i++) {
+			if (i % 4)
+				fprintf(outfilep, " ");
+			else
+				fprintf(outfilep, "\n\t\t\t\t");
+			fprintf(outfilep, "0x%08x", arr[num_bits / 32 - 1 - i]);
+			BN_rshift(num, num, 32); /*  N = N/B */
+		}
+	} else {
+		for (i = 0; i < num_bits / 32; i++) {
+			if (i % 4)
+				fprintf(outfilep, " ");
+			else
+				fprintf(outfilep, "\n\t");
+			fprintf(outfilep, "0x%08x,", arr[i]);
+			BN_rshift(num, num, 32); /*  N = N/B */
+		}
+	}
+
+	free(arr);
 	BN_free(tmp);
 	BN_free(big2);
 	BN_free(big32);
@@ -404,25 +426,42 @@ static int gen_key(const char *keyname, const char *path)
 
 	bits = BN_num_bits(modulus);
 
-	fprintf(outfilep, "\nstatic uint32_t %s_modulus[] = {", key_name_c);
-	print_bignum(modulus, bits);
-	fprintf(outfilep, "\n};\n\n");
-
-	fprintf(outfilep, "static uint32_t %s_rr[] = {", key_name_c);
-	print_bignum(r_squared, bits);
-	fprintf(outfilep, "\n};\n\n");
-
-	fprintf(outfilep, "static struct rsa_public_key %s = {\n", key_name_c);
-	fprintf(outfilep, "\t.len = %d,\n", bits / 32);
-	fprintf(outfilep, "\t.n0inv = 0x%0x,\n", n0_inv);
-	fprintf(outfilep, "\t.modulus = %s_modulus,\n", key_name_c);
-	fprintf(outfilep, "\t.rr = %s_rr,\n", key_name_c);
-	fprintf(outfilep, "\t.exponent = 0x%0lx,\n", exponent);
-	fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", keyname);
-	fprintf(outfilep, "};\n\n");
-
-	fprintf(outfilep, "struct rsa_public_key *%sp __attribute__((section(\".rsa_keys.rodata.%s\"))) = &%s;\n",
-	       key_name_c, key_name_c, key_name_c);
+	if (dts) {
+		fprintf(outfilep, "\t\tkey-%s {\n", key_name_c);
+		fprintf(outfilep, "\t\t\trsa,r-squared = <");
+		print_bignum(r_squared, bits);
+		fprintf(outfilep, ">;\n");
+		fprintf(outfilep, "\t\t\trsa,modulus= <");
+		print_bignum(modulus, bits);
+		fprintf(outfilep, ">;\n");
+		fprintf(outfilep, "\t\t\trsa,exponent = <0x%0lx 0x%lx>;\n",
+			(exponent >> 32) & 0xffffffff,
+			exponent & 0xffffffff);
+		fprintf(outfilep, "\t\t\trsa,n0-inverse = <0x%0x>;\n", n0_inv);
+		fprintf(outfilep, "\t\t\trsa,num-bits = <0x%0x>;\n", bits);
+		fprintf(outfilep, "\t\t\tkey-name-hint = \"%s\";\n", key_name_c);
+		fprintf(outfilep, "\t\t};\n");
+	} else {
+		fprintf(outfilep, "\nstatic uint32_t %s_modulus[] = {", key_name_c);
+		print_bignum(modulus, bits);
+		fprintf(outfilep, "\n};\n\n");
+
+		fprintf(outfilep, "static uint32_t %s_rr[] = {", key_name_c);
+		print_bignum(r_squared, bits);
+		fprintf(outfilep, "\n};\n\n");
+
+		fprintf(outfilep, "static struct rsa_public_key %s = {\n", key_name_c);
+		fprintf(outfilep, "\t.len = %d,\n", bits / 32);
+		fprintf(outfilep, "\t.n0inv = 0x%0x,\n", n0_inv);
+		fprintf(outfilep, "\t.modulus = %s_modulus,\n", key_name_c);
+		fprintf(outfilep, "\t.rr = %s_rr,\n", key_name_c);
+		fprintf(outfilep, "\t.exponent = 0x%0lx,\n", exponent);
+		fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", keyname);
+		fprintf(outfilep, "};\n\n");
+
+		fprintf(outfilep, "struct rsa_public_key *%sp __attribute__((section(\".rsa_keys.rodata.%s\"))) = &%s;\n",
+			key_name_c, key_name_c, key_name_c);
+	}
 
 	return 0;
 }
@@ -435,11 +474,14 @@ int main(int argc, char *argv[])
 
 	outfilep = stdout;
 
-	while ((opt = getopt(argc, argv, "o:")) > 0) {
+	while ((opt = getopt(argc, argv, "o:d")) > 0) {
 		switch (opt) {
 		case 'o':
 			outfile = optarg;
 			break;
+		case 'd':
+			dts = 1;
+			break;
 		}
 	}
 
@@ -457,6 +499,12 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
+	if (dts) {
+		fprintf(outfilep, "/dts-v1/;\n");
+		fprintf(outfilep, "/ {\n");
+		fprintf(outfilep, "\tsignature {\n");
+	}
+
 	for (i = optind; i < argc; i++) {
 		keyname = argv[i];
 
@@ -484,5 +532,10 @@ int main(int argc, char *argv[])
 		gen_key(keyname, path);
 	}
 
+	if (dts) {
+		fprintf(outfilep, "\t};\n");
+		fprintf(outfilep, "};\n");
+	}
+
 	exit(0);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

