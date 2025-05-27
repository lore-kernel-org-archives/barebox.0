Delivery-date: Tue, 27 May 2025 22:14:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0gz-000xKC-0a
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 22:14:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0gy-0002tM-L4
	for lore@pengutronix.de; Tue, 27 May 2025 22:14:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=brHs4pCR47a+8uWvk4v97AmyXkTZANIVe0SNfwn3R1o=; b=aCWc0MTDGhcbm2HqHD/B4CSKRr
	fK9PX6VrKP96vT/ebIMju+LZk0bWlFR8q65ocHOyi4H/6i2dMvCd83/it3aQZ7X+wuMhWNoFIlNbw
	cVzzhRRE/ZnpNOVwb0Sf4aKlMFfJrrd8/ljfYdS3US839k7PEGELwc+icjE27hmM3shGLB66NESLa
	Lvp+7SaaSVdQ24bCYqDNPiHh4ArGPfBIepLd8bXvnGQ41v95+gW9zyJIN7XwOBUnm2EbjDOR8uDNa
	d6dZ2pCzxqagZs3vM5kfszY7E1+Hdy60cB1Rh2jAmaX53NpOHE0pgatw/XYwDDiXBbBCcsX0hapqM
	PRXqQv5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0ga-0000000BUSd-1Pui;
	Tue, 27 May 2025 20:14:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gU-0000000BUMt-0EJa
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 20:14:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-0002IU-Rv; Tue, 27 May 2025 22:14:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-000TVg-24;
	Tue, 27 May 2025 22:14:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-003jQO-1k;
	Tue, 27 May 2025 22:14:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 May 2025 22:13:59 +0200
Message-Id: <20250527201359.889550-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527201359.889550-1-a.fatoum@pengutronix.de>
References: <20250527201359.889550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_131402_090361_956B4DB7 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] lib: random: print get_crypto_bytes caller when no HWRNG is registered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When stack protector is enabled without a HWRNG, warning or error
messages are printed, but it's not directly evident why.

Improve this by printing the caller of the function leading to message
like this:

  ERROR: stackprot_randomize_guard: no HWRNG available!

Reported-by: Roland Hieber <r.hieber@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/random.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/random.c b/lib/random.c
index 889d314e0fad..0fbcf87ac0d3 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -135,11 +135,11 @@ int get_crypto_bytes(void *buf, int len)
 	}
 
 	if (!IS_ENABLED(CONFIG_ALLOW_PRNG_FALLBACK)) {
-		pr_err("no HWRNG available!\n");
+		pr_err("%ps: no HWRNG available!\n", (void *)_RET_IP_);
 		return err;
 	}
 
-	pr_warn("falling back to Pseudo RNG source!\n");
+	pr_warn("%ps: falling back to Pseudo RNG source!\n", (void *)_RET_IP_);
 
 	get_noncrypto_bytes(buf, len);
 
-- 
2.39.5



