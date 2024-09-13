Delivery-date: Fri, 13 Sep 2024 10:00:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1Dy-0043DA-1i
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:00:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1Dx-0007CG-Be
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:00:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FSfSf65Fr16cTsVnaRTtNK5CL6dH0QsGy8i8peRQcc0=; b=wA+mRexu1fZWY/rxa1FjdlogR2
	OJ5JMkdSL/Sn3vDvx8G3VDRTICLOuAPKPqRIZnHc558eHnbYQjvWyMpZjILBwBdiGff+pbmhP3Trf
	1W2boVijymqBkkP7i04FmCyFct5XvEwmyMDlH9DnQxAgZ4jAdX4VmvAsnbMCcgHYLKvlJCiJhvX8m
	oKNTNDDevtmofm2Y0V062ct4YZcdjT4Ct3NjFfAaJhzZ7iZMHvaRy1KL5WRFrXL05+UolOqL0GhfF
	NHYVfExfjzCyZdQxcJQne0s48Kp/LWn3/7wpm0cchlKwWCLBH/0HymSmdzP5fAVvhEf09gZYaMGkj
	rIx6ja8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1DR-0000000FFus-2brC;
	Fri, 13 Sep 2024 07:59:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1DD-0000000FFlS-2XNj
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 07:59:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-0006Yb-Em; Fri, 13 Sep 2024 09:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-007Zat-0y; Fri, 13 Sep 2024 09:59:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DB-006w1Z-31;
	Fri, 13 Sep 2024 09:59:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:14 +0200
Message-Id: <20240913075924.1652866-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_005927_687479_C588585F 
X-CRM114-Status: GOOD (  10.22  )
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
Subject: [PATCH v4 06/16] crypto/Makefile: Drop unnecessary dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Having rsa-keys.h depend on the input key files is unnecessary. They
were introduced to avoid unnecessary rebuilds when the files didn't
change. This is unnecessary because the public_keys cmd won't produce
output when it wouldn't change the existing file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Makefile | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index d7a06a721d..5a484355f3 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -29,10 +29,6 @@ $(obj)/rsa.o: $(obj)/rsa-keys.h
 
 CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
 
-ifneq ($(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY)),)
-RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
-endif
-
-$(obj)/rsa-keys.h: $(RSA_DEP) FORCE
+$(obj)/rsa-keys.h: FORCE
 	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CONFIG_CRYPTO_RSA_KEY))
 endif
-- 
2.39.2



