Delivery-date: Fri, 17 May 2024 09:49:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sKy-0014EW-2p
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 09:49:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sKw-0007yf-Lb
	for lore@pengutronix.de; Fri, 17 May 2024 09:49:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OZ5yJoDyP02FUoWQ9Dm0kdVFo/4WLktPMS4geBdr9gg=; b=khou2sRp3dTNbcacZKNTiY0PGq
	ZxbwtxG3/DDTOUkoZC6Y96PV4HsmmpJj6DO22+KfNW1Q0uZeMzTqYdZlhlSeNP+kDuw3irDZTE/2c
	r2LKtSclXHsBT6FXWMD6eZHoVZUn4iX/QeHUoH3t39q1u8ZFkc+Rxg/uBKC6io3lWNvpiZvA26QqV
	zi+HGlJV8un0Q8hsQrS1BjyBqPtFvV9UwWyDtFmvtfamSQbAi74kBAYTJJZFVXJAAWgSXEJTy+uyz
	QmOWm3woSs1+MasziNYuQAYDWmooRE/Pc67lN1ClIUe9jl9E+0fVFewdlOYG4B6MrGAVz/yXbjNQb
	TpK4HxNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKX-000000076ry-3DGb;
	Fri, 17 May 2024 07:48:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKJ-000000076hV-1RYP
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:48:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-0007P1-Ez; Fri, 17 May 2024 09:48:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-001q0X-2A; Fri, 17 May 2024 09:48:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKG-003DkZ-3B;
	Fri, 17 May 2024 09:48:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:48:20 +0200
Message-Id: <20240517074824.767767-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517074824.767767-1-a.fatoum@pengutronix.de>
References: <20240517074824.767767-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004827_505475_BD41B298 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] test: self: digest: don't leak digest buffers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The selftest leaks memory by letting the pointers go out of scope.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/digest.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/test/self/digest.c b/test/self/digest.c
index 4cda5b09637b..32815c85ba70 100644
--- a/test/self/digest.c
+++ b/test/self/digest.c
@@ -47,7 +47,7 @@ static void __test_digest(bool option,
 			  const char *algo, struct digest_test_case *t,
 			  const char *func, int line)
 {
-	unsigned char *output, *digest;
+	unsigned char *output = NULL, *digest = NULL;
 	struct digest *d;
 	int hash_len, digest_len;
 	u64 start;
@@ -103,8 +103,14 @@ static void __test_digest(bool option,
 		goto fail;
 	}
 
+	digest_free(d);
+	free(digest);
+	free(output);
 	return;
 fail:
+	digest_free(d);
+	free(digest);
+	free(output);
 	failed_tests++;
 }
 
-- 
2.39.2



