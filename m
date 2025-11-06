Delivery-date: Thu, 06 Nov 2025 16:19:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lT-00Fypw-1R
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lP-0006lY-P6
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GUcudRsu7gxgH4Qmv63TZy3lVpdcp6hjD/tFgEm8LqM=; b=IJMBpADtqUizo3SE8L/bIdZYQp
	lAxBw0pH0geHuYA7Dw6kPg3LNj2s3pxO0nghwo5Q4XE8oh1Cd8XpVgJ7zZvLsPltVJ7bISKQQ5LlN
	sOKv8IVZD6Ds3jGq3QziXbVTVl8p/zvIKRS8yiwxgiTzUQwUcMjIaBi+wvR6OLU7hxQ8zgOMJ2LDe
	tRgUUkjeUGqVimN+0f7omMgOIudUCj/oWaMjaPzJQIw3lIednHbucN1QZiTyZfR0lECArTs6ut8jl
	xdNx4m0SJ3b6KWGCAB7sBp0A+czaD2Qmqx1+9NQAa5POurFroHsDzlTKl/QzGO6jMzG9t9JqqRB24
	4Ouy8D7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kn-0000000FnRZ-35Ts;
	Thu, 06 Nov 2025 15:18:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1ki-0000000FnIE-32XM
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:22 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kZ-0005tl-4X; Thu, 06 Nov 2025 16:18:11 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-12-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1401; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=1tyx1NbZ+VKfZ6AbEioL8By/H/92v/wzZIRbQS6BigI=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aO/8oBa3eGJ/VnBNVJ6rH77faqOnJbj2JzjzWh+e
 o+Zzef8jlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwEQO5zMyTHZNEPfdrCVYfkNz
 Vcu1jE+Ltyxb9zvvONdfialqprnMqQz/tA/ul/0nu2XHbQWdqkoN8b3/zk/rOCa/mEny2LFZV5a
 s5gAA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071820_814199_4B995B32 
X-CRM114-Status: UNSURE (   8.98  )
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
Subject: [PATCH v3 12/17] crypto: Use "development" keys for "fit" and
 "tlv" keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All users of the CONFIG_CRYPTO_PUBLIC_KEYS feature should update to the
new syntax making keyring selection mandatory.

Instead of just making the addition of the builtin snakeoil keys
explicit for the "fit" key, also add them to the "tlv" key to use them
as a testing set for TLV keys too.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index 08b9a46e4c..cbc5f5235a 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -33,10 +33,12 @@ CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,$(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")
 
 ifdef CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS
 ifdef CONFIG_CRYPTO_RSA
-CONFIG_CRYPTO_PUBLIC_KEYS += rsa-devel:$(srctree)/crypto/fit-4096-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=rsa-devel:$(srctree)/crypto/fit-4096-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv-generic:$(srctree)/crypto/fit-4096-development.crt
 endif
 ifdef CONFIG_CRYPTO_ECDSA
-CONFIG_CRYPTO_PUBLIC_KEYS += ecdsa-devel:$(srctree)/crypto/fit-ecdsa-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=ecdsa-devel:$(srctree)/crypto/fit-ecdsa-development.crt
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv-generic:$(srctree)/crypto/fit-ecdsa-development.crt
 endif
 endif
 

-- 
2.51.2.535.g419c72cb8a



