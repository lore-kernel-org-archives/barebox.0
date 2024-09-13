Delivery-date: Fri, 13 Sep 2024 10:28:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1f9-0043XV-1g
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:28:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1f7-0001Cx-Jo
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:28:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hTrau+ngdt4rCBwzxk3gnJUqJf3XDxJe5a3r4y1iB5U=; b=QMkaX4r+BJSTT0IWQEGBrWE5z/
	I14886QQxVLSNSZN728u9zEdIMOIbrMeubI7ETPDQsprqebeo0VfOgL+He3h0BY6+bf+YaKsnihwi
	F9HAU3Y3pwe3gRslFZsMyvYprF7SBxJIVJf3wqZTqNtbMKr8bOtCZgkozgQ5H1sNIkUT1cvNDY52I
	ahyuwQ7dFYkzlKso+VkWNd+kLRkiSpAE9xJj7pIw2M5nwZHStw/cktMqI/uXEJpOG87ryFv/ozWl3
	r3TwBuOBMNQUKcYnocXbIFq0IsArF6k8CgHsHwKXjl0hdeuQStGrbNX8eQ8ld3z01A+sjcGuIiIG0
	2BDqtriw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1ec-0000000FKbz-1Tqc;
	Fri, 13 Sep 2024 08:27:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1eY-0000000FKZd-0Iqd
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 08:27:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-0000oD-O4; Fri, 13 Sep 2024 10:27:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-007ZzN-As; Fri, 13 Sep 2024 10:27:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-006w1Z-0b;
	Fri, 13 Sep 2024 09:59:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:19 +0200
Message-Id: <20240913075924.1652866-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_012742_130881_30CF6717 
X-CRM114-Status: GOOD (  14.15  )
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
Subject: [PATCH v4 11/16] crypto: builtin_keys: Allow to specify multiple keys in CONFIG_CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the missing pieces to make CONFIG_CRYPTO_PUBLIC_KEYS
a list of keys rather than a single key only.

We have to remove the quotes from the key argument in cmd_keys to
pass the keys as multiple arguments to keytoc.

For removing the quotes from CONFIG_CRYPTO_PUBLIC_KEYS "%"=% no longer
matches when the string contains multiple words, so we utilize shell
to remove the quotes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Kconfig       | 11 ++++++-----
 crypto/Makefile      |  2 +-
 scripts/Makefile.lib |  2 +-
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 612e6f33fc..6b2e73c503 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -126,11 +126,12 @@ config CRYPTO_PUBLIC_KEYS
 	depends on CRYPTO_BUILTIN_KEYS
 	string "public keys to compile in"
 	help
-	  This option should be a filename of a PEM-formatted file containing
-	  X.509 certificates to be included into barebox. If the string starts
-	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
-	  If the string starts with a <hint>: prefix, <hint> is used as a key
-	  name hint to find a key without iterating over all keys.
+	  This option should be a space separated list of filenames of
+	  PEM-formatted files containing X.509 certificates to be included into
+	  barebox. If an entry starts with "pkcs11:" it is interpreted as a
+	  PKCS#11 URI rather than a file. If an entry starts with a <hint>:
+	  prefix, <hint> is used as a key name hint to find a key without
+	  iterating over all keys.
 
 	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
 	  at the cost of an openssl build-time dependency.
diff --git a/crypto/Makefile b/crypto/Makefile
index d6ce50b386..1c5709c90a 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -28,7 +28,7 @@ ifdef CONFIG_CRYPTO_BUILTIN_KEYS
 
 $(obj)/public-keys.o: $(obj)/public-keys.h
 
-CONFIG_CRYPTO_PUBLIC_KEYS := $(CONFIG_CRYPTO_PUBLIC_KEYS:"%"=%)
+CONFIG_CRYPTO_PUBLIC_KEYS := $(shell echo $(CONFIG_CRYPTO_PUBLIC_KEYS))
 
 $(obj)/public-keys.h: FORCE
 	$(call cmd,public_keys,$(CONFIG_CRYPTO_PUBLIC_KEYS))
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 1881e3c139..3d0a260804 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -614,7 +614,7 @@ quiet_cmd_b64dec = B64DEC  $@
 # target file.
 quiet_cmd_public_keys = KEY     $@
 cmd_public_keys = \
-	$(objtree)/scripts/keytoc -o $@.tmp "$(2)" $(3) &&		\
+	$(objtree)/scripts/keytoc -o $@.tmp $(2) $(3) &&		\
 	if cmp -s $@.tmp $@; then					\
 		rm $@.tmp;						\
 	else								\
-- 
2.39.2



