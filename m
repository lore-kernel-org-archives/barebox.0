Delivery-date: Wed, 27 May 2026 12:56:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBvc-004MYv-0f
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 12:56:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBvb-0000Gp-KQ
	for lore@pengutronix.de; Wed, 27 May 2026 12:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/xZRo8clI63jJUUpARU1O4XiqvfBrno+7Nt3XvuKS4c=; b=4VdHna4SyZ53Gyf2CFG8+JaKB/
	XeBLl2IrNCRYzBm41WSKdwyhyK9VsPtZm1PFgSOv9GdshvIF2q6wKWc5KXg57XCEQ77RyTgqbtcpe
	OxcaiN/qp+DjUYawUyVR1DNX1diCoEmFt8mK0I3Y9d3ht+d/2Re15cZlqHap5+j9HttDaT/h8PUcF
	E4QLKbxSISXVLLCicmxKqUFMAIYUdKljBmackIicjEJy0dkIFv/Oyk1luEC5Es7ZEGBU3dT+dUE7Q
	ACJQfV6IEScdzHzjHJQeIIoXyoxcael6JFdLKJ8B90HaS6lDzhxDCqhf3khfGrD46rS/haMrXvAwS
	F4djdxYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuR-00000003yHK-3ddq;
	Wed, 27 May 2026 10:54:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuP-00000003yFU-1xCe
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 10:54:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuN-0008ST-37; Wed, 27 May 2026 12:54:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0025vE-1P;
	Wed, 27 May 2026 12:54:43 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0000000EvQF-3ix5;
	Wed, 27 May 2026 12:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 May 2026 12:54:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260527-public-keys-v1-1-c87a1cc61d1b@pengutronix.de>
References: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
In-Reply-To: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779879282; l=930;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=oQeEqhAQSDW97XXXEVnHvCWhACxD9hk1NM8Ft+k4iKg=;
 b=7c/BnoatKh9+SYIDej2k4fZQ+DcInz4fsRFhW96lO+BAjDeUgtqqjA6PDDHZgIFgFYo9/hW+n
 sx0NM68VehCCvpYcRz03iL7wq2Ln184JvDVQ6NzgdeTF3TJn7uGGgEX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_035445_512203_85E3EF1F 
X-CRM114-Status: UNSURE (   9.44  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] public keys: make error message more informative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When adding a key to a keyring fails because a key with the same name hint
already exists, print which keyring and which hint is duplicate. This also
removes the string "fit" from the error message which seems to be a remnant
of days when only FIT images used keys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/public-keys.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index a2d31f4bc2..ecf255bbb4 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -29,7 +29,8 @@ int public_key_add(struct public_key *key)
 	}
 
 	if (public_key_get(key->key_name_hint, key->keyring)) {
-		pr_warn("Aborting addition of public key: Duplicate fit name hint\n");
+		pr_warn("Cannot add key: key_name_hint %s already exists in keyring %s\n",
+			key->key_name_hint, key->keyring);
 		return -EEXIST;
 	}
 

-- 
2.47.3



