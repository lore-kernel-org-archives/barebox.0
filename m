Delivery-date: Fri, 06 Sep 2024 12:41:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWPQ-001qqp-0K
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:41:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWPO-0002wV-TC
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DWCJkaGIHPqtkglEmXDWuxfVA8gpW/p9uHYhUbVqR7w=; b=IWniV6QuKSX4+BQCjzM2SFK0DC
	0i7jBshuh4bRbFr8cnFnlWtqJzQCZZiZcZoCbC3CQw9t8MWLBIS6teDqRQ3JWtvRFLKiQyoFkIGUL
	0W1WVEgyRRy4d+UlHrK71hZTpmmeLvlKnwoVZa6msw3NlLhVEBbGMy72kfugv1wfddpFUwqdts62I
	jC8t99bH1D/wBqfAAizu2vWZ4dVVaRitxiNocJiC1JF0C/hpNUubYyf16j0wao/sHTK0ZY+v1zfUX
	+7wFDLuFkBC8/lZzFxCOylKbwMUk6dcNrhiVbTW8jwlWNOmcaUaq3Fm1XDr/yEsDtGtYiBlsAKcWh
	r8xdV/Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOw-0000000BoSK-34V3;
	Fri, 06 Sep 2024 10:41:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOp-0000000BoMm-06Ts
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:41:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOH-00024d-KD; Fri, 06 Sep 2024 12:40:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-005vJP-R4; Fri, 06 Sep 2024 12:40:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-009BBJ-2N;
	Fri, 06 Sep 2024 12:40:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Sep 2024 12:40:16 +0200
Message-Id: <20240906104028.2187872-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240906104028.2187872-1-s.hauer@pengutronix.de>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034107_992424_8A15C636 
X-CRM114-Status: GOOD (  13.98  )
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
Subject: [PATCH v3 03/15] keytoc: fix ECDSA endianess problems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We print the ECDSA key values out as an uint32_t C array. They are used in
barebox as a uint64_t C array, so when the endianess of the build system
differs from the system barebox runs on we end up with the 32bit words
swapped in the u64 array. Fix this by printing out the key values as
an uint64_t array.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/keytoc.c | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 7e73c786a3..b140160688 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -315,12 +315,12 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
 
 static FILE *outfilep;
 
-static int print_bignum(BIGNUM *num, int num_bits)
+static int print_bignum(BIGNUM *num, int num_bits, int width)
 {
 	BIGNUM *tmp, *big2, *big32, *big2_32;
 	BN_CTX *ctx;
 	int i;
-	uint32_t *arr;
+	uint64_t *arr;
 
 	tmp = BN_new();
 	big2 = BN_new();
@@ -345,34 +345,34 @@ static int print_bignum(BIGNUM *num, int num_bits)
 		return -ENOMEM;
 	}
 	BN_set_word(big2, 2L);
-	BN_set_word(big32, 32L);
-	BN_exp(big2_32, big2, big32, ctx); /* B = 2^32 */
+	BN_set_word(big32, width);
+	BN_exp(big2_32, big2, big32, ctx); /* B = 2^width */
 
-	arr = malloc(num_bits / 32 * sizeof(uint32_t));
+	arr = malloc(num_bits / width * sizeof(*arr));
 
-	for (i = 0; i < num_bits / 32; i++) {
+	for (i = 0; i < num_bits / width; i++) {
 		BN_mod(tmp, num, big2_32, ctx); /* n = N mod B */
 		arr[i] = BN_get_word(tmp);
-		BN_rshift(num, num, 32); /*  N = N/B */
+		BN_rshift(num, num, width); /*  N = N/B */
 	}
 
 	if (dts) {
-		for (i = 0; i < num_bits / 32; i++) {
+		for (i = 0; i < num_bits / width; i++) {
 			if (i % 4)
 				fprintf(outfilep, " ");
 			else
 				fprintf(outfilep, "\n\t\t\t\t");
-			fprintf(outfilep, "0x%08x", arr[num_bits / 32 - 1 - i]);
-			BN_rshift(num, num, 32); /*  N = N/B */
+			fprintf(outfilep, "0x%0*jx", width / 4, arr[num_bits / width - 1 - i]);
+			BN_rshift(num, num, width); /*  N = N/B */
 		}
 	} else {
-		for (i = 0; i < num_bits / 32; i++) {
+		for (i = 0; i < num_bits / width; i++) {
 			if (i % 4)
 				fprintf(outfilep, " ");
 			else
 				fprintf(outfilep, "\n\t");
-			fprintf(outfilep, "0x%08x,", arr[i]);
-			BN_rshift(num, num, 32); /*  N = N/B */
+			fprintf(outfilep, "0x%0*jx,", width / 4, arr[i]);
+			BN_rshift(num, num, width); /*  N = N/B */
 		}
 	}
 
@@ -473,12 +473,12 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 		fprintf(stderr, "ERROR: generating a dts snippet for ECDSA keys is not yet supported\n");
 		return -EOPNOTSUPP;
 	} else {
-		fprintf(outfilep, "\nstatic uint32_t %s_x[] = {", key_name_c);
-		print_bignum(key_x, bits);
+		fprintf(outfilep, "\nstatic uint64_t %s_x[] = {", key_name_c);
+		print_bignum(key_x, bits, 64);
 		fprintf(outfilep, "\n};\n\n");
 
-		fprintf(outfilep, "static uint32_t %s_y[] = {", key_name_c);
-		print_bignum(key_y, bits);
+		fprintf(outfilep, "static uint64_t %s_y[] = {", key_name_c);
+		print_bignum(key_y, bits, 64);
 		fprintf(outfilep, "\n};\n\n");
 
 		fprintf(outfilep, "static struct ecdsa_public_key %s = {\n", key_name_c);
@@ -512,10 +512,10 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 	if (dts) {
 		fprintf(outfilep, "\t\tkey-%s {\n", key_name_c);
 		fprintf(outfilep, "\t\t\trsa,r-squared = <");
-		print_bignum(r_squared, bits);
+		print_bignum(r_squared, bits, 32);
 		fprintf(outfilep, ">;\n");
 		fprintf(outfilep, "\t\t\trsa,modulus= <");
-		print_bignum(modulus, bits);
+		print_bignum(modulus, bits, 32);
 		fprintf(outfilep, ">;\n");
 		fprintf(outfilep, "\t\t\trsa,exponent = <0x%0lx 0x%lx>;\n",
 			(exponent >> 32) & 0xffffffff,
@@ -526,11 +526,11 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 		fprintf(outfilep, "\t\t};\n");
 	} else {
 		fprintf(outfilep, "\nstatic uint32_t %s_modulus[] = {", key_name_c);
-		print_bignum(modulus, bits);
+		print_bignum(modulus, bits, 32);
 		fprintf(outfilep, "\n};\n\n");
 
 		fprintf(outfilep, "static uint32_t %s_rr[] = {", key_name_c);
-		print_bignum(r_squared, bits);
+		print_bignum(r_squared, bits, 32);
 		fprintf(outfilep, "\n};\n\n");
 
 		if (standalone) {
-- 
2.39.2



