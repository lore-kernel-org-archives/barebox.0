Delivery-date: Mon, 23 Oct 2023 16:33:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quvzH-001H2g-KX
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 16:33:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quvzG-0001Ld-0b
	for lore@pengutronix.de; Mon, 23 Oct 2023 16:32:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SYpa1z10G/OK5iXpXMdrGiGlOKnrEzT9PE0OSoy+B+s=; b=ly5foLqoSHv9ZSUkpk4zcm63mE
	ZOohfSsb5JiqySQuq5uYPlNQaqjM8iQliAU6Je0YxixvX58Zgf/Vnj8Z3JerNhDSJYsV+MP01jVlp
	SZPi7mAwtRdOXqBdW0VMkEMkEGysbfi7aBz4KV0wxtCBnuid8qJrUVDD4H3XagqlvPCGCuxd3+Hnm
	PILbM11OqgJl5iNFWfiJETgVErKDZ+Fw9tk3zabbjiCs4x0Mu3Fss6Vo6XYjc2RCIQSYYBdOz/kms
	Nzx0ZgVMjryKC1XSujfN6Ci6SGOqN0szEsRmfwVA7q0P71S74wn1Y38jzksUrIDfRwd1r9ZMFol8M
	KL7napKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quvy2-007YDB-1E;
	Mon, 23 Oct 2023 14:31:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quvxy-007YBd-1o
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 14:31:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxx-00014S-El; Mon, 23 Oct 2023 16:31:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxx-003jWw-2J; Mon, 23 Oct 2023 16:31:37 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxx-007PfS-06;
	Mon, 23 Oct 2023 16:31:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Oct 2023 16:31:23 +0200
Message-Id: <20231023143122.1760217-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
References: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_073138_924828_B19AC75C 
X-CRM114-Status: GOOD (  18.03  )
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
Subject: [PATCH 3/3] test: self: add JSON Web Token tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This simple test decodes a JSON Web token after verifying it and asserts
that the claim contained inside are as expected.

The RSA public key is the one used by https://jwt.io/ by default and
thus allowing easy experimentation. For future extensibility of the
tests, the private key is appended, but is not currently used.

As rsatoc has a build-time openssl dependency, which we would complicate
running the test suite everywhere, we ship a precompiled C file.

To regenerate, REGENERATE_RSATOC can be specified as build argument.
The reason, we don't use the standard make mechanism of file timestamps
is that after a git checkout, we aren't guaranteed that the shipped file
will be newer than the pem file, which renders the mechanism useless for
allowing users to build all unit tests without OpenSSL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig                |   7 ++
 test/self/Makefile               |  11 ++-
 test/self/jwt.c                  | 157 +++++++++++++++++++++++++++++++
 test/self/jwt_test.pem           |  37 ++++++++
 test/self/jwt_test.pem.c_shipped |  49 ++++++++++
 5 files changed, 260 insertions(+), 1 deletion(-)
 create mode 100644 test/self/jwt.c
 create mode 100644 test/self/jwt_test.pem
 create mode 100644 test/self/jwt_test.pem.c_shipped

diff --git a/test/self/Kconfig b/test/self/Kconfig
index e7da07491a91..5850dc95973b 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -36,12 +36,15 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_FS_RAMFS if FS_RAMFS
 	select SELFTEST_TFTP if FS_TFTP
 	select SELFTEST_JSON if JSMN
+	select SELFTEST_JWT if JWT
 	select SELFTEST_DIGEST if DIGEST
 	select SELFTEST_MMU if MMU
 	select SELFTEST_STRING
 	select SELFTEST_SETJMP if ARCH_HAS_SJLJ
 	select SELFTEST_REGULATOR if REGULATOR && OFDEVICE
 	select SELFTEST_TEST_COMMAND if CMD_TEST
+	help
+	  Selects all self-tests compatible with current configuration
 
 config SELFTEST_MALLOC
 	bool "malloc() selftest"
@@ -73,6 +76,10 @@ config SELFTEST_JSON
 	bool "JSON selftest"
 	depends on JSMN
 
+config SELFTEST_JWT
+	bool "JSON Web Token selftest"
+	depends on JWT
+
 config SELFTEST_MMU
 	bool "MMU remapping selftest"
 	select MEMTEST
diff --git a/test/self/Makefile b/test/self/Makefile
index 8168abf26278..24e78a186513 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
+obj-$(CONFIG_SELFTEST_JWT) += jwt.o jwt_test.pem.o
 obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
 obj-$(CONFIG_SELFTEST_MMU) += mmu.o
 obj-$(CONFIG_SELFTEST_STRING) += string.o
@@ -16,5 +17,13 @@ obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
 obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
 obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
 
-clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+ifdef REGENERATE_RSATOC
+
+$(obj)/jwt_test.pem.c_shipped: $(src)/jwt_test.pem FORCE
+	$(call if_changed,rsa_keys,$(basename $(target-stem)):$<,-s)
+
+endif
+
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z *
 clean-files += *.dtbo *.dtbo.S .*.dtso
+clean-files += *.pem.c
diff --git a/test/self/jwt.c b/test/self/jwt.c
new file mode 100644
index 000000000000..f37b44be22b8
--- /dev/null
+++ b/test/self/jwt.c
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <rsa.h>
+#include <bselftest.h>
+#include <crypto/jwt.h>
+#include <console.h>
+
+BSELFTEST_GLOBALS();
+
+static const jsmntok_t *check_token(const jsmntok_t *token,
+				    const char *claim,
+				    const char *payload,
+				    jsmntype_t expected_type,
+				    const char *expected_value)
+{
+	total_tests++;
+
+	if (token->type != expected_type) {
+		failed_tests++;
+		printf("claim %s has type mismatch: got %d, but %d expected\n",
+		       claim, token->type, expected_type);
+		return NULL;
+	}
+
+	total_tests++;
+
+	if (!jsmn_eq(expected_value, payload, token)) {
+		failed_tests++;
+		printf("claim %s: value has mismatch: got %.*s, but %s expected\n",
+		       claim, (int)(token->end - token->start),
+		       &payload[token->start], expected_value);
+		return NULL;
+	}
+
+	return token;
+}
+
+static const jsmntok_t *jwt_check_claim(const struct jwt *jwt,
+					const char *claim,
+					jsmntype_t expected_type,
+					const char *expected_value)
+{
+	const jsmntok_t *token;
+
+	total_tests++;
+
+	token = jwt_get_claim(jwt, claim);
+	if (!token) {
+		failed_tests++;
+		printf("claim %s couldn't be located\n", claim);
+		return NULL;
+	}
+
+	return check_token(token, claim, jwt_get_payload(jwt),
+			   expected_type, expected_value);
+}
+
+static const char jwt_rs256[] =
+	"  eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9."
+	"eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTUxNjIzOTAyMn0."
+	"NHVaYe26MbtOYhSKkoKYdFVomg4i8ZJd8_-RU8VNbftc4TSMb4bXP3l3YlNWACwyXPGf"
+	"fz5aXHc6lty1Y2t4SWRqGteragsVdZufDn5BlnJl9pdR_kdVFUsra2rWKEofkZeIC4yW"
+	"ytE58sMIihvo9H1ScmmVwBcQP6XETqYd0aSHp1gOa9RdUPDvoXQ5oqygTqVtxaDr6wUF"
+	"KrKItgBMzWIdNZ6y7O9E0DhEPTbE9rfBo6KTFsHAZnMg4k68CDp2woYIaXbmYTWcvbzI"
+	"uHO7_37GT79XdIwkm95QJ7hYC9RiwrV7mesbY4PAahERJawntho0my942XheVLmGwLMBkQ\n \n";
+
+static void test_jwt(void)
+{
+	char *jwt_rs256_mangled, *ch;
+	struct jwt_key jwt_key;
+	struct jwt *jwt;
+	extern const struct rsa_public_key __key_jwt_test;
+	int old_loglevel;
+
+	jwt_key.alg = JWT_ALG_RS256;
+	jwt_key.material.rsa_pub = &__key_jwt_test;
+	total_tests++;
+
+	jwt = jwt_decode(jwt_rs256, &jwt_key);
+	if (IS_ERR(jwt)) {
+		printf("failed to parse jwt\n");
+		failed_tests++;
+	} else {
+		jwt_check_claim(jwt, "sub", JSMN_STRING, "1234567890");
+		jwt_check_claim(jwt, "name", JSMN_STRING, "John Doe");
+		jwt_check_claim(jwt, "admin", JSMN_PRIMITIVE, "true");
+		jwt_check_claim(jwt, "iat", JSMN_PRIMITIVE, "1516239022");
+
+		jwt_free(jwt);
+	}
+
+	/*
+	 * Following tests intentionally fail and JWT failures are intentionally
+	 * noisy, so we decrease logging a bit during their run
+	 */
+
+	old_loglevel = barebox_loglevel;
+	barebox_loglevel = MSG_CRIT;
+
+	jwt_rs256_mangled = strdup(jwt_rs256);
+	ch = &jwt_rs256_mangled[strlen(jwt_rs256_mangled) - 1];
+	*ch = *ch == '_' ? '-' : '_';
+
+	total_tests++;
+
+	jwt = jwt_decode(jwt_rs256_mangled, &jwt_key);
+	if (!IS_ERR(jwt)) {
+		printf("%s:%d expected JWT verification to fail\n", __func__, __LINE__);
+		failed_tests++;
+		jwt_free(jwt);
+	}
+
+	free(jwt_rs256_mangled);
+
+	jwt_rs256_mangled = strdup(jwt_rs256);
+	ch = &jwt_rs256_mangled[0];
+	*ch = *ch == '_' ? '-' : '_';
+
+	total_tests++;
+
+	jwt = jwt_decode(jwt_rs256_mangled, &jwt_key);
+	if (!IS_ERR(jwt)) {
+		printf("%s:%d expected JWT verification to fail\n", __func__, __LINE__);
+		failed_tests++;
+		jwt_free(jwt);
+	}
+
+	free(jwt_rs256_mangled);
+
+	total_tests++;
+
+	jwt_key.alg = JWT_ALG_RS384;
+
+	jwt = jwt_decode(jwt_rs256, &jwt_key);
+	if (!IS_ERR(jwt)) {
+		printf("%s:%d expected JWT verification to fail\n", __func__, __LINE__);
+		failed_tests++;
+		jwt_free(jwt);
+	}
+
+	total_tests++;
+
+	jwt_key.alg = JWT_ALG_NONE;
+
+	jwt = jwt_decode(jwt_rs256, &jwt_key);
+	if (!IS_ERR(jwt)) {
+		printf("%s:%d expected JWT verification to fail\n", __func__, __LINE__);
+		failed_tests++;
+		jwt_free(jwt);
+	}
+
+	barebox_loglevel = old_loglevel;
+}
+bselftest(parser, test_jwt);
diff --git a/test/self/jwt_test.pem b/test/self/jwt_test.pem
new file mode 100644
index 000000000000..349a5b6a47f0
--- /dev/null
+++ b/test/self/jwt_test.pem
@@ -0,0 +1,37 @@
+-----BEGIN PUBLIC KEY-----
+MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAu1SU1LfVLPHCozMxH2Mo
+4lgOEePzNm0tRgeLezV6ffAt0gunVTLw7onLRnrq0/IzW7yWR7QkrmBL7jTKEn5u
++qKhbwKfBstIs+bMY2Zkp18gnTxKLxoS2tFczGkPLPgizskuemMghRniWaoLcyeh
+kd3qqGElvW/VDL5AaWTg0nLVkjRo9z+40RQzuVaE8AkAFmxZzow3x+VJYKdjykkJ
+0iT9wCS0DRTXu269V264Vf/3jvredZiKRkgwlL9xNAwxXFg0x/XFw005UWVRIkdg
+cKWTjpBP2dPwVZ4WWC+9aGVd+Gyn1o0CLelf4rEjGoXbAAEgAqeGUxrcIlbjXfbc
+mwIDAQAB
+-----END PUBLIC KEY-----
+-----BEGIN PRIVATE KEY-----
+MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC7VJTUt9Us8cKj
+MzEfYyjiWA4R4/M2bS1GB4t7NXp98C3SC6dVMvDuictGeurT8jNbvJZHtCSuYEvu
+NMoSfm76oqFvAp8Gy0iz5sxjZmSnXyCdPEovGhLa0VzMaQ8s+CLOyS56YyCFGeJZ
+qgtzJ6GR3eqoYSW9b9UMvkBpZODSctWSNGj3P7jRFDO5VoTwCQAWbFnOjDfH5Ulg
+p2PKSQnSJP3AJLQNFNe7br1XbrhV//eO+t51mIpGSDCUv3E0DDFcWDTH9cXDTTlR
+ZVEiR2BwpZOOkE/Z0/BVnhZYL71oZV34bKfWjQIt6V/isSMahdsAASACp4ZTGtwi
+VuNd9tybAgMBAAECggEBAKTmjaS6tkK8BlPXClTQ2vpz/N6uxDeS35mXpqasqskV
+laAidgg/sWqpjXDbXr93otIMLlWsM+X0CqMDgSXKejLS2jx4GDjI1ZTXg++0AMJ8
+sJ74pWzVDOfmCEQ/7wXs3+cbnXhKriO8Z036q92Qc1+N87SI38nkGa0ABH9CN83H
+mQqt4fB7UdHzuIRe/me2PGhIq5ZBzj6h3BpoPGzEP+x3l9YmK8t/1cN0pqI+dQwY
+dgfGjackLu/2qH80MCF7IyQaseZUOJyKrCLtSD/Iixv/hzDEUPfOCjFDgTpzf3cw
+ta8+oE4wHCo1iI1/4TlPkwmXx4qSXtmw4aQPz7IDQvECgYEA8KNThCO2gsC2I9PQ
+DM/8Cw0O983WCDY+oi+7JPiNAJwv5DYBqEZB1QYdj06YD16XlC/HAZMsMku1na2T
+N0driwenQQWzoev3g2S7gRDoS/FCJSI3jJ+kjgtaA7Qmzlgk1TxODN+G1H91HW7t
+0l7VnL27IWyYo2qRRK3jzxqUiPUCgYEAx0oQs2reBQGMVZnApD1jeq7n4MvNLcPv
+t8b/eU9iUv6Y4Mj0Suo/AU8lYZXm8ubbqAlwz2VSVunD2tOplHyMUrtCtObAfVDU
+AhCndKaA9gApgfb3xw1IKbuQ1u4IF1FJl3VtumfQn//LiH1B3rXhcdyo3/vIttEk
+48RakUKClU8CgYEAzV7W3COOlDDcQd935DdtKBFRAPRPAlspQUnzMi5eSHMD/ISL
+DY5IiQHbIH83D4bvXq0X7qQoSBSNP7Dvv3HYuqMhf0DaegrlBuJllFVVq9qPVRnK
+xt1Il2HgxOBvbhOT+9in1BzA+YJ99UzC85O0Qz06A+CmtHEy4aZ2kj5hHjECgYEA
+mNS4+A8Fkss8Js1RieK2LniBxMgmYml3pfVLKGnzmng7H2+cwPLhPIzIuwytXywh
+2bzbsYEfYx3EoEVgMEpPhoarQnYPukrJO4gwE2o5Te6T5mJSZGlQJQj9q4ZB2Dfz
+et6INsK0oG8XVGXSpQvQh3RUYekCZQkBBFcpqWpbIEsCgYAnM3DQf3FJoSnXaMhr
+VBIovic5l0xFkEHskAjFTevO86Fsz1C2aSeRKSqGFoOQ0tmJzBEs1R6KqnHInicD
+TQrKhArgLXX4v3CddjfTRJkFWDbE/CkvKZNOrcf1nhaGCPspRJj2KUkj1Fhl9Cnc
+dn/RsYEONbwQSjIfMPkvxF+8HQ==
+-----END PRIVATE KEY-----
diff --git a/test/self/jwt_test.pem.c_shipped b/test/self/jwt_test.pem.c_shipped
new file mode 100644
index 000000000000..2142ae15dfb6
--- /dev/null
+++ b/test/self/jwt_test.pem.c_shipped
@@ -0,0 +1,49 @@
+#include <rsa.h>
+
+static uint32_t jwt_test_modulus[] = {
+	0x5df6dc9b, 0xdc2256e3, 0xa786531a, 0x00012002,
+	0x231a85db, 0xe95fe2b1, 0xd68d022d, 0x5df86ca7,
+	0x2fbd6865, 0x559e1658, 0x4fd9d3f0, 0xa5938e90,
+	0x22476070, 0x39516551, 0xf5c5c34d, 0x5c5834c7,
+	0x71340c31, 0x483094bf, 0x75988a46, 0xf78efade,
+	0x6eb855ff, 0xbb6ebd57, 0xb40d14d7, 0x24fdc024,
+	0xca4909d2, 0x4960a763, 0x8c37c7e5, 0x166c59ce,
+	0x84f00900, 0x1433b956, 0xf73fb8d1, 0xd5923468,
+	0x64e0d272, 0x0cbe4069, 0x25bd6fd5, 0xddeaa861,
+	0x7327a191, 0xe259aa0b, 0x63208519, 0xcec92e7a,
+	0x0f2cf822, 0xd15ccc69, 0x2f1a12da, 0x209d3c4a,
+	0x6664a75f, 0xb3e6cc63, 0x9f06cb48, 0xa2a16f02,
+	0x127e6efa, 0x4bee34ca, 0xb424ae60, 0x5bbc9647,
+	0xead3f233, 0x89cb467a, 0x5532f0ee, 0x2dd20ba7,
+	0x357a7df0, 0x46078b7b, 0xf3366d2d, 0x580e11e3,
+	0x1f6328e2, 0xc2a33331, 0xb7d52cf1, 0xbb5494d4,
+};
+
+static uint32_t jwt_test_rr[] = {
+	0xec4954b7, 0x61f69199, 0x9e489481, 0x14f25ec8,
+	0x712de1ab, 0x9c4ed93b, 0xcff16ec3, 0xb6e0c808,
+	0x56551022, 0x1206f0dc, 0x72051e96, 0x6ab07919,
+	0x8d29bea3, 0xa2a79109, 0x18a5e53d, 0x0a1ed2ae,
+	0xae6544f4, 0x5fb16424, 0x5253250c, 0x3fc04654,
+	0x9b9a3028, 0xf7219ed8, 0x8f9a7d60, 0x1020027e,
+	0xa7bb0182, 0xca68b839, 0x86a507ca, 0x725d9efb,
+	0xf43e09cd, 0xd373027e, 0x6c22f55c, 0x074bee70,
+	0x49525052, 0x0506900e, 0xf51bde0d, 0xc8f82c0e,
+	0x4a00d71e, 0x0a517ae2, 0x616e76fb, 0xb17b75d0,
+	0x4bfcbb90, 0x3efd07cf, 0xaf30c7cb, 0xa18dee7f,
+	0x02ed9615, 0x9185d985, 0x630a209e, 0xef23435c,
+	0x46277653, 0x57d47ec5, 0x86e58fcf, 0x8f0ebe09,
+	0x3b26c77e, 0xa3ef370d, 0xf83df63e, 0xa30a742e,
+	0x49c2fb64, 0xea9fbed9, 0xb7471da7, 0x7a411345,
+	0x303732ed, 0x6660f318, 0xe3a7df4c, 0x6a784bd5,
+};
+
+struct rsa_public_key __key_jwt_test;
+struct rsa_public_key __key_jwt_test = {
+	.len = 64,
+	.n0inv = 0x17d8566d,
+	.modulus = jwt_test_modulus,
+	.rr = jwt_test_rr,
+	.exponent = 0x10001,
+	.key_name_hint = "jwt_test",
+};
-- 
2.39.2



