Delivery-date: Wed, 09 Oct 2024 16:11:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPn-002FrN-21
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 16:11:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPm-0004BW-Tz
	for lore@pengutronix.de; Wed, 09 Oct 2024 16:11:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O960djevMyR/RMDXpVuBd34hOa17g5a5ZHhQFY04D2c=; b=V5X/4TAgRRSz0P7yNpaGDCOBOt
	SH2QMOLqTS/T7WQwN7KRySTcyHAHSlML4Si/zUR47W+sUcf+fyNA91PtjW24cs7S+aMF9EmfF30v4
	4at0BvzRTQeY2x51bxrT/fouxiw8MBvNNtfDnXHmGyrjcnWfr+RIT3LL8fMQ/NmsYTBG+h0dxXSnt
	tNpLR8AVkHPw8E36l3SYblxJxqICzuQppBbxqH4eCP3jDc1Y12E03Ook6Uz5B6JbYDSxbv2q/hof+
	FHvP0rl5M8kRUnh7HuITYsubRF24DzAx2HfAO+O/9yVCDlKyYkJE3wPD4sU5b82KZWhYzyrm8eama
	e30XPM5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syXPE-00000009XOP-2inX;
	Wed, 09 Oct 2024 14:11:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syXGI-00000009VfY-31rs
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 14:02:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGH-0002qq-8w; Wed, 09 Oct 2024 16:01:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-000cNe-Ro; Wed, 09 Oct 2024 16:01:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-008Mdc-2V;
	Wed, 09 Oct 2024 16:01:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 16:01:54 +0200
Message-Id: <20241009140155.1990882-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
References: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_070158_967649_67E6C460 
X-CRM114-Status: GOOD (  11.38  )
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
Subject: [PATCH 5/6] test: self: jwt: regenerate jwt_test.pem.c_shipped
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As not to require OpenSSL for normal selftest builds, a pregenerated C
file for the JWT PEM is being shipped in the source code.

This got outdated with recent changes, so let's regenerate it.

Fixes: 54caa724c737 ("crypto: add public_key functions")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/jwt_test.pem.c_shipped | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/self/jwt_test.pem.c_shipped b/test/self/jwt_test.pem.c_shipped
index 16248f0ddb1e..5d4df1107cf5 100644
--- a/test/self/jwt_test.pem.c_shipped
+++ b/test/self/jwt_test.pem.c_shipped
@@ -1,3 +1,4 @@
+#include <crypto/ecdsa.h>
 #include <crypto/rsa.h>
 
 static uint32_t jwt_test_modulus[] = {
@@ -45,5 +46,4 @@ struct rsa_public_key __key_jwt_test = {
 	.modulus = jwt_test_modulus,
 	.rr = jwt_test_rr,
 	.exponent = 0x10001,
-	.key_name_hint = "jwt_test",
 };
-- 
2.39.5



