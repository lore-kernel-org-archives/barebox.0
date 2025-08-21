Delivery-date: Fri, 22 Aug 2025 04:25:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHSy-003AYf-2M
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 04:25:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHSx-0001UX-H8
	for lore@pengutronix.de; Fri, 22 Aug 2025 04:25:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oR6Sv95CDkgx5v6PxSu80cGUjsSc8jDFAcTl4/kUVAY=; b=JfKWK3OqKgvV4GbiSav36aEA/n
	SHakwMlJE9r5rHWZSU8HKHNOkG0QVjaAKSQvx0PF6h2WC0OB+qqP5fe1lt8QmhuCt6NzJpgBt4HxP
	ZNsYYfAg+e2Ss9VX30sgmF5YRvXIXkuxUu7lEudJipU0dOO6mC/q2O1H/CKdgB0+zs3c0e3aRq8/1
	p5lUujIiFgwTc2Ashp1IPl5alWBQ5NnRoTm1ZlWqYBBsoASiM89JQf5GKPJFDKrK9n9757YDtAsj8
	xiY+dmBLRj2E7H3yY72CJYH+SHPQiSJuAT8lXVnfh9SqLerWGchJtL98dLhfSPPix/8FMuYWB9PZN
	r9cgb4Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upHSY-00000001GwN-1EA4;
	Fri, 22 Aug 2025 02:24:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upCNu-00000000b7u-0fZP
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 20:59:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNs-0000b9-QF; Thu, 21 Aug 2025 22:59:44 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNr-001T4z-2p;
	Thu, 21 Aug 2025 22:59:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNr-0061Uc-2X;
	Thu, 21 Aug 2025 22:59:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Aug 2025 22:59:42 +0200
Message-Id: <20250821205942.1435683-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250821205942.1435683-1-a.fatoum@pengutronix.de>
References: <20250821205942.1435683-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_135946_197665_C072329E 
X-CRM114-Status: GOOD (  11.58  )
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
Subject: [PATCH 3/3] security: jwt: add simple fuzzer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The JWT format does only minimal string parsing before verifying the
signature, but let's add a fuzzer for that initial string parsing
anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.sandbox |  1 +
 security/Kconfig        |  1 +
 security/jwt.c          | 17 +++++++++++++++++
 3 files changed, 19 insertions(+)

diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index b235a1195a7f..d13ffb0124b1 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -4,6 +4,7 @@ SYMLINK_TARGET_barebox = sandbox_main.elf
 symlink-$(CONFIG_SANDBOX) += barebox
 
 fuzzer-$(CONFIG_FILETYPE)	+= filetype
+fuzzer-$(CONFIG_JWT)		+= jwt
 fuzzer-$(CONFIG_FITIMAGE)	+= fit
 fuzzer-$(CONFIG_OFTREE)		+= dtb
 fuzzer-$(CONFIG_OFTREE)		+= fdt-compatible
diff --git a/security/Kconfig b/security/Kconfig
index 372fd275fde9..1902a1f036c4 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -92,6 +92,7 @@ config JWT
 	select JSMN
 	select BASE64
 	select CRYPTO_RSA
+	select TEST_KEY_RSA2048 if FUZZ
 
 menu "OP-TEE loading"
 
diff --git a/security/jwt.c b/security/jwt.c
index a6a7d7f788f8..e4be17dcfac0 100644
--- a/security/jwt.c
+++ b/security/jwt.c
@@ -8,6 +8,7 @@
 #include <linux/printk.h>
 #include <base64.h>
 #include <jsmn.h>
+#include <fuzz.h>
 #include <linux/ctype.h>
 
 #define JP(...)	(const char *[]) { __VA_ARGS__, NULL }
@@ -224,6 +225,22 @@ struct jwt *jwt_decode(const char *token, const struct jwt_key *key)
 	return ERR_PTR(ret);
 }
 
+static int fuzz_jwt(char *data, size_t size)
+{
+	struct jwt_key jwt_key;
+	struct jwt *jwt;
+	extern const struct rsa_public_key __key_development_rsa2048;
+
+	jwt_key.alg = JWT_ALG_RS256;
+	jwt_key.material.rsa_pub = &__key_development_rsa2048;
+
+	jwt = jwt_decode(data, &jwt_key);
+	if (!IS_ERR(jwt))
+		jwt_free(jwt);
+	return 0;
+}
+fuzz_test_str("jwt", fuzz_jwt);
+
 const char *jwt_get_payload(const struct jwt *t)
 {
 	return t->payload.content;
-- 
2.39.5



