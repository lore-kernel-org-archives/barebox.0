Delivery-date: Fri, 06 Sep 2024 12:43:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWRT-001qwu-1S
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:43:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWRR-0003nM-7t
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:43:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBk3TgmswelJ4XCE+rLQ1vbSu5aIGya7tAhemxM9lho=; b=s0EI5kuK/ROJ19
	SNFKT/0cCoMjW+1SbnGMns0ukh1fE6KHy9+BId388TwiyTZSQ0yBig7QCfgM5IQngahK9C9825aQK
	mjqV1/8YALV6IEfrC7/iPnVryqOeR9ih7qFT8+WxDlSU0ogsPXeYneBy+o80mJ/aYvhFYvBDx+tWT
	wxh/l8T7RhV0CbMOWuX1aXSy0dFmDRu56B+7G0skQQTncLd0LysRrhmat0lnw1Iz5JPPP/V5UCUFS
	Dfi9OYQeh76vIWnTgUjRLNnVeld8fwRVO79safF3pOdLip4gOJ1AxWs+yuuh7KHMFM7YWu5o14+ev
	UrqCDewqwk3SYUvLAlHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWR1-0000000Bp8N-0S5L;
	Fri, 06 Sep 2024 10:43:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWQs-0000000Bp4I-1mVp
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:43:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWQr-0003NH-0Q; Fri, 06 Sep 2024 12:43:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWQq-005vOO-JA; Fri, 06 Sep 2024 12:43:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOF-009BBJ-1K;
	Fri, 06 Sep 2024 12:40:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Sep 2024 12:40:28 +0200
Message-Id: <20240906104028.2187872-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240906104028.2187872-1-s.hauer@pengutronix.de>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034314_495276_A38C6454 
X-CRM114-Status: GOOD (  10.38  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 15/15] crypto: make RSA a visible option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With ECDSA support RSA is no longer the only option for FIT image
verification. Make CONFIG_CRYPTO_RSA visible so that the user can
choose. CONFIG_CRYPTO_RSA defaults to yes when FITIMAGE_SIGNATURE is
selected so that existing configs continue to work.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20240801055737.3190132-19-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 1 -
 crypto/Kconfig | 3 ++-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4500feb66c..c925b1bd99 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -62,7 +62,6 @@ config FITIMAGE
 	select DIGEST
 
 config FITIMAGE_SIGNATURE
-	select CRYPTO_RSA
 	bool
 
 config LOGBUF
diff --git a/crypto/Kconfig b/crypto/Kconfig
index a90e3e1005..45011802e3 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -116,7 +116,8 @@ config CRYPTO_PBKDF2
 	bool
 
 config CRYPTO_RSA
-	bool
+	bool "RSA support"
+	default y if FITIMAGE_SIGNATURE
 
 config CRYPTO_BUILTIN_KEYS
 	bool "builtin keys"
-- 
2.39.2



