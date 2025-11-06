Delivery-date: Thu, 06 Nov 2025 16:19:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lM-00Fymn-2K
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lI-0006eD-Bf
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3I9w4YC8EhmP5sbJ0QbW0ChLbyn85Y4OZd7phXyAME4=; b=T5OKdWNoxNqhoiuiLVKkH+O6tw
	LH0Fp+TePB3EdKAU/+I0x41A4xMCpDVfPtpRoICELDbVyBzbKovr7z/DX86yjzgqXVwYuFA6Dvt46
	shaWGs8VU1iAeNUYpoIdu+AUPiuAKOcCHSvuEq+O131ksRisUJPifv1D695yvwCXUx401QkHTIefe
	qGac8I+3wCDX7vRvgH5kpQGq2fiCGqRXTj4LWbJ1TL23bkrnQQ6k4k4iY6YL1mcVl18CNLOIs1YmD
	ark3/AF1GdWZhph6GJ099fVRIXNyGHHzs4V2XM+3PjTpwSnm4LVzSA9kZLO1mhXoYZLLVQqlBHqhD
	yOPGcHtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kf-0000000FnFc-0QE5;
	Thu, 06 Nov 2025 15:18:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAX-07sm
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:15 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kY-0005tl-U8; Thu, 06 Nov 2025 16:18:10 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-6-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1430; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=JoMFioXl6w2TStEVRu8QSIh0SzggzGt/59T4PY8sVxE=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aMb6PzcY9b6iTXbtkrnPt8t4jHludzf3NCqFkbPy
 FVbpDofdJSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACbyax/DX7nfch17Hga85Pvv
 zxXaxxpvG5z8ytW1qu2hrakRj95/dkaGzrJ/v+8+v7hb+vWk775NDhet7ig+0bzOEz3hj6aUnIA
 8EwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_071586_DD31EFA1 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 06/17] commands: keys: update output format to include
 keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Also show the algorithm used.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 commands/keys.c             |  8 ++------
 include/crypto/public_key.h | 12 ++++++++++++
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/commands/keys.c b/commands/keys.c
index 616d44c25a..83c3ed533d 100644
--- a/commands/keys.c
+++ b/commands/keys.c
@@ -8,12 +8,8 @@ static int do_keys(int argc, char *argv[])
 	int id;
 
 	for_each_public_key(key, id) {
-		printf("KEY: %*phN", key->hashlen, key->hash);
-
-		if (key->key_name_hint)
-			printf(" (%s)\n", key->key_name_hint);
-		else
-			printf("\n");
+		printf("KEY: %*phN\tTYPE: %s\tKEYRING: %s\tHINT: %s\n", key->hashlen,
+		       key->hash, public_key_type_string(key->type), key->keyring, key->key_name_hint);
 	}
 
 	return 0;
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 4954fab089..0fd8e1e304 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -13,6 +13,18 @@ enum public_key_type {
 	PUBLIC_KEY_TYPE_ECDSA,
 };
 
+static inline const char *public_key_type_string(enum public_key_type type)
+{
+	switch (type) {
+	case PUBLIC_KEY_TYPE_RSA:
+		return "RSA";
+	case PUBLIC_KEY_TYPE_ECDSA:
+		return "ECDSA";
+	default:
+		return "unknown";
+	}
+}
+
 struct public_key {
 	enum public_key_type type;
 	const char *key_name_hint;

-- 
2.51.2.535.g419c72cb8a



