Delivery-date: Fri, 06 Sep 2024 12:41:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWPQ-001qrA-27
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:41:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWPP-0002wm-Fe
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:41:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YG3Z0w6T2hxALRT8rf73jv20wSH802x/q+FXcTXPU1I=; b=guxrm+EaF0FP5hYuolV9R3TBev
	5ARFBD9pirPomsOsegBtC8l0Pi10O79tJM7KkBM4zzbY7y1LGS8vP61DU8OWswVM5n/38u7RjQ4rY
	Nee8ZBPZ3hma/IZSsFtGRVAEKRsvQWWrhgZI2+Mmffj9pf1XBINQWrRjfhtiOwhI/Ud1Ps9pjz8dQ
	gbrzSB525l9pChYYOQwJ4jwOwiWQwbuPFKtKtSr/Xl5d1+yM8qrqz8JrY3D230RoxcMLITjQbSjFI
	39Yi04fqqRPXOvnf6y+s3JbVFJQOUS1/iQff8p4ufsUqRLxQYIl+CDCjnicIGCbcWB7oS3z/JELva
	4kneS2og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOs-0000000BoOK-2pbE;
	Fri, 06 Sep 2024 10:41:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOg-0000000BoFg-41JS
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:41:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOH-000257-KD; Fri, 06 Sep 2024 12:40:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOF-005vJb-1D; Fri, 06 Sep 2024 12:40:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-009BBJ-32;
	Fri, 06 Sep 2024 12:40:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Sep 2024 12:40:20 +0200
Message-Id: <20240906104028.2187872-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240906104028.2187872-1-s.hauer@pengutronix.de>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034059_110084_ACFB37F3 
X-CRM114-Status: GOOD (  11.97  )
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
Subject: [PATCH v3 07/15] crypto: rsa: include key name hint into CONFIG_CRYPTO_RSA_KEY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Set the key name hint in CONFIG_CRYPTO_RSA_KEY. CONFIG_CRYPTO_RSA_KEY
now has the form:

<key_name_hint>:<filename/uri>

This is done in preparation to make CONFIG_CRYPTO_RSA_KEY a list of
keys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Kconfig  | 9 ++-------
 crypto/Makefile | 7 +++----
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 78b499f646..64a016eb2c 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -130,17 +130,12 @@ config CRYPTO_RSA_KEY
 	  This option should be a filename of a PEM-formatted file containing
 	  X.509 certificates to be included into barebox. If the string starts
 	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
+	  If the string starts with a <hint>: prefix, <hint> is used as a key
+	  name hint to find a key without iterating over all keys.
 
 	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
 	  at the cost of an openssl build-time dependency.
 
-config CRYPTO_RSA_KEY_NAME_HINT
-	depends on CRYPTO_RSA
-	string "FIT image key name hint"
-	help
-	  In FIT images keys are identified by a key name hint string. Provide
-	  the key name hint here.
-
 config CRYPTO_KEYSTORE
 	bool "Keystore"
 	help
diff --git a/crypto/Makefile b/crypto/Makefile
index d7a06a721d..f3e49ab7ba 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -29,10 +29,9 @@ $(obj)/rsa.o: $(obj)/rsa-keys.h
 
 CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
 
-ifneq ($(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY)),)
-RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
-endif
+RSA_DEP := $(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY))
+RSA_DEP := $(shell echo $(RSA_DEP) | sed -e "s/[[:alnum:]]*://g")
 
 $(obj)/rsa-keys.h: $(RSA_DEP) FORCE
-	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CONFIG_CRYPTO_RSA_KEY))
+	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY))
 endif
-- 
2.39.2



