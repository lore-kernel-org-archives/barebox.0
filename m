Delivery-date: Thu, 05 Mar 2026 07:57:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2eJ-008FQP-1O
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 07:57:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2eJ-00036P-Mx
	for lore@pengutronix.de; Thu, 05 Mar 2026 07:57:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Aq5PU131s0C4vCeB4Yze1KEafu+GteS/kWng45bsWcI=; b=kSD3Obgu4FQBRN
	v8o4XKXPGaYYVMvQqOzFyYud5flFr5v79Mvzi8Pr6Tgayh/4kPRRZs0CaYGZUJbXJSq1I4fQdRaIg
	+VnGFLBIXa7kqvSjfDB2c+LbF5M7qUYhznloRqKYV4wbjZInEmcjcdwLE2PaROgj0qFep4/18pYzo
	vNfgD+fjrtlEYNkbFPNMh+m6CeF4KljU6RuQ+E8gfne714z4L0n69d4eHmah9pohsM/dXkGD4hAoo
	Qrab8lnyXM5Kp7kE7nEw3cua9jsDogCUlb8kO61tX8ty/85Sg9wsTUW7S35VXB+GEWHZpB7L7OcaX
	3yg/O5B6PvdBlj/06Gdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2dx-000000013LV-1wpD;
	Thu, 05 Mar 2026 06:57:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2du-000000013L5-31cZ
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 06:57:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2ds-00031K-W7; Thu, 05 Mar 2026 07:57:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2dq-003q6w-2O;
	Thu, 05 Mar 2026 07:57:04 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2dr-0000000EKz2-46s0;
	Thu, 05 Mar 2026 07:57:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Mar 2026 07:57:03 +0100
Message-ID: <20260305065703.3417243-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_225706_766221_032C4AA2 
X-CRM114-Status: GOOD (  10.11  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: bareboxtlv-generator: add PKCS#11 engine support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

When a PKCS#11 URI (pkcs11:...) is passed as the signing key, the
openssl pkey and pkeyutl invocations need extra engine arguments to
route key operations through the pkcs11 engine. Detect pkcs11: URIs
and add -engine pkcs11 with the appropriate key format flag (-inform
for pkey, -keyform for pkeyutl).

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bareboxtlv-generator/bareboxtlv-generator.py    | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
index 2eba0aeb23..5b51fb53d8 100755
--- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
+++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
@@ -65,7 +65,14 @@ class PrivateKey:
             sys.exit(127)
 
         self.inkey = path
-        self.public_key = serialization.load_pem_public_key(openssl(["pkey", "-pubout", "-in", self.inkey]));
+        self.is_pkcs11 = path.startswith("pkcs11:")
+        if self.is_pkcs11:
+            pkey_args = ["-engine", "pkcs11", "-inform", "engine"]
+            self.pkeyutl_args = ["-engine", "pkcs11", "-keyform", "engine"]
+        else:
+            pkey_args = []
+            self.pkeyutl_args = []
+        self.public_key = serialization.load_pem_public_key(openssl(["pkey"] + pkey_args + ["-pubout", "-in", self.inkey]));
 
     def sign(self, message: bytes) -> bytes:
         """
@@ -75,8 +82,8 @@ class PrivateKey:
         from cryptography.hazmat.primitives.asymmetric import rsa, ec
         from cryptography.hazmat.primitives.asymmetric.utils import decode_dss_signature
 
-        # Access private keys only via the openssl cli so that any configured provider, such as pkcs11, can be used.
-        sig = openssl(["pkeyutl", "-sign", "-rawin", "-digest", "sha256", "-inkey", self.inkey], stdin = message)
+        # Access private keys only via the openssl cli so that any configured engine/provider, such as pkcs11, can be used.
+        sig = openssl(["pkeyutl"] + self.pkeyutl_args + ["-sign", "-rawin", "-digest", "sha256", "-inkey", self.inkey], stdin = message)
 
         if isinstance(self.public_key, rsa.RSAPublicKey):
             return sig
-- 
2.47.3



