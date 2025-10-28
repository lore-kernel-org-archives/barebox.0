Delivery-date: Tue, 28 Oct 2025 19:04:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3Z-00Clj6-1w
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3V-0001A3-Pm
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3I9w4YC8EhmP5sbJ0QbW0ChLbyn85Y4OZd7phXyAME4=; b=rJhGNPWdVTtgdwOKyc0XYYLr2c
	RwD9zWSBEvzNUWNFdn+mHfn/3YrYyQDPofcKF4aIBeaaRJX3J0HP5c1n1Ssv5dWuM18Wj6NoY0m9N
	vgdYKcwj0AdikQVX3kgX2MD09dHmPeI8bYNKIXxXjASoIPVIbdvA/Ccio2etM474ct1NEYILmeeCp
	5zPUgC8Ckm7sIEeEA9RFdHeT9AOxnjRow03poE2c9iPpEJ/igE2KG5uHGe0+W6oxOP+d88QrWZQJk
	wriUQbm89kZN8NH/OowCmuAGphKEi9qWpI9cGdhz5P+Fw9qSngdjxjk3Pb0Jrw0RlnxUr0vL4R/2g
	fh+6yUXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2m-0000000GS9l-1JGi;
	Tue, 28 Oct 2025 18:03:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2j-0000000GS7l-0Tqe
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 18:03:38 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-4Z; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-6-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1430; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=JoMFioXl6w2TStEVRu8QSIh0SzggzGt/59T4PY8sVxE=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC3Utnwk0GVr3LHh4T/xtzuPGeRkn8jr3lt+yVvob
 0Xh9S03O0pZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABNZlMXw319o5saUmg1hLSLm
 /s291g9FwnevZdoQw8QgLbyve87t+4wMp28cWmjWqdGlclr5mPPL6OTMY0YX7xyon+oce7t3wW0
 jFgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_110337_159674_ED7681E0 
X-CRM114-Status: UNSURE (   9.06  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/17] commands: keys: update output format to include
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



