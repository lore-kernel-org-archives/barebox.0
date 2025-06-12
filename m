Delivery-date: Thu, 12 Jun 2025 12:08:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqn-006TZG-1c
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:08:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqm-0007E8-SI
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:08:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HuOG81vGPOppryOky3u8BADzLiBhEGLO68DaTu1mOjk=; b=1XG8bDhHMOosiX+2K/u3VaECcM
	JrPI48lv7hBYbrsei4o2U6dPzIYW7ZY4pYaEvWEByQbmiyYHM9pE3glajmuHLoS4r25z9ninqYaNC
	SFn37iUrwtRtjhXgogsQgoCKmJDL8bkcuD+0eZGZL31YGz4xkRViHBCwl0mvFEqJs0fVNpE5CaZ9+
	hYTuSsfEtPVpmV4wMfB1DBaeScs+70Tppdhz8tZTA/iNEWehIsfKhfqhMZQ3OkOpAVxDuHK+G8G1N
	mJxc1acztvkH8bOFY0GpxZukEaScusy2BRKYTen+8Da1kvZQp3iTEClyV3CCELRPxRbqaYjBi5f5P
	a9EuQHMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPeqL-0000000CvB4-1YIE;
	Thu, 12 Jun 2025 10:07:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdt0-0000000ClUs-01am
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 09:06:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uPdsy-0005kn-DY; Thu, 12 Jun 2025 11:06:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 12 Jun 2025 11:06:10 +0200
Message-Id: <20250612090611.3682-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_020614_049087_0ABD770B 
X-CRM114-Status: UNSURE (   8.77  )
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
Subject: [PATCH 1/2] test: self: jwt: rename jwt_test key to development_rsa2048
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are going to expand use of this key in testing, so give it a more
generic name.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
Will be used in test_fit.py
---
 test/self/Makefile                                   |  4 ++--
 test/self/{jwt_test.pem => development_rsa2048.pem}  |  0
 ...m.c_shipped => development_rsa2048.pem.c_shipped} | 12 ++++++------
 test/self/jwt.c                                      |  4 ++--
 4 files changed, 10 insertions(+), 10 deletions(-)
 rename test/self/{jwt_test.pem => development_rsa2048.pem} (100%)
 rename test/self/{jwt_test.pem.c_shipped => development_rsa2048.pem.c_shipped} (86%)

diff --git a/test/self/Makefile b/test/self/Makefile
index 8cd2a4c526c8..6cf857ee98ff 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_DIRFD) += dirfd.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
-obj-$(CONFIG_SELFTEST_JWT) += jwt.o jwt_test.pem.o
+obj-$(CONFIG_SELFTEST_JWT) += jwt.o development_rsa2048.pem.o
 obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
 obj-$(CONFIG_SELFTEST_MMU) += mmu.o
 obj-$(CONFIG_SELFTEST_STRING) += string.o
@@ -22,7 +22,7 @@ obj-$(CONFIG_SELFTEST_TLV) += tlv.o tlv.dtb.o
 
 ifdef REGENERATE_KEYTOC
 
-$(obj)/jwt_test.pem.c_shipped: $(src)/jwt_test.pem FORCE
+$(obj)/development_rsa2048.pem.c_shipped: $(src)/development_rsa2048.pem FORCE
 	$(call if_changed,public_keys,$(basename $(target-stem)):$<,-s)
 
 endif
diff --git a/test/self/jwt_test.pem b/test/self/development_rsa2048.pem
similarity index 100%
rename from test/self/jwt_test.pem
rename to test/self/development_rsa2048.pem
diff --git a/test/self/jwt_test.pem.c_shipped b/test/self/development_rsa2048.pem.c_shipped
similarity index 86%
rename from test/self/jwt_test.pem.c_shipped
rename to test/self/development_rsa2048.pem.c_shipped
index 5d4df1107cf5..d25b075cbdf7 100644
--- a/test/self/jwt_test.pem.c_shipped
+++ b/test/self/development_rsa2048.pem.c_shipped
@@ -1,7 +1,7 @@
 #include <crypto/ecdsa.h>
 #include <crypto/rsa.h>
 
-static uint32_t jwt_test_modulus[] = {
+static uint32_t development_rsa2048_modulus[] = {
 	0x5df6dc9b, 0xdc2256e3, 0xa786531a, 0x00012002,
 	0x231a85db, 0xe95fe2b1, 0xd68d022d, 0x5df86ca7,
 	0x2fbd6865, 0x559e1658, 0x4fd9d3f0, 0xa5938e90,
@@ -20,7 +20,7 @@ static uint32_t jwt_test_modulus[] = {
 	0x1f6328e2, 0xc2a33331, 0xb7d52cf1, 0xbb5494d4,
 };
 
-static uint32_t jwt_test_rr[] = {
+static uint32_t development_rsa2048_rr[] = {
 	0xec4954b7, 0x61f69199, 0x9e489481, 0x14f25ec8,
 	0x712de1ab, 0x9c4ed93b, 0xcff16ec3, 0xb6e0c808,
 	0x56551022, 0x1206f0dc, 0x72051e96, 0x6ab07919,
@@ -39,11 +39,11 @@ static uint32_t jwt_test_rr[] = {
 	0x303732ed, 0x6660f318, 0xe3a7df4c, 0x6a784bd5,
 };
 
-struct rsa_public_key __key_jwt_test;
-struct rsa_public_key __key_jwt_test = {
+struct rsa_public_key __key_development_rsa2048;
+struct rsa_public_key __key_development_rsa2048 = {
 	.len = 64,
 	.n0inv = 0x17d8566d,
-	.modulus = jwt_test_modulus,
-	.rr = jwt_test_rr,
+	.modulus = development_rsa2048_modulus,
+	.rr = development_rsa2048_rr,
 	.exponent = 0x10001,
 };
diff --git a/test/self/jwt.c b/test/self/jwt.c
index 1d58bb22da7a..2ef32d8cad06 100644
--- a/test/self/jwt.c
+++ b/test/self/jwt.c
@@ -72,11 +72,11 @@ static void test_jwt(void)
 	char *jwt_rs256_mangled, *ch;
 	struct jwt_key jwt_key;
 	struct jwt *jwt;
-	extern const struct rsa_public_key __key_jwt_test;
+	extern const struct rsa_public_key __key_development_rsa2048;
 	int old_loglevel;
 
 	jwt_key.alg = JWT_ALG_RS256;
-	jwt_key.material.rsa_pub = &__key_jwt_test;
+	jwt_key.material.rsa_pub = &__key_development_rsa2048;
 	total_tests++;
 
 	jwt = jwt_decode(jwt_rs256, &jwt_key);
-- 
2.39.5



