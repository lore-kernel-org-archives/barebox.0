Delivery-date: Thu, 24 Apr 2025 11:43:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7t6n-004qYc-0n
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 11:43:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7t6l-0004J4-0Q
	for lore@pengutronix.de; Thu, 24 Apr 2025 11:43:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1HSwUOy6gOuQWWNjn5r4lSe4hnZkCaq823XJ8pBBg18=; b=n5g6/i4CRXMskz4OafQ+qeJK2s
	vnnMOV8NVE5RsQ9jtsN8Lt+lRf9gHUSdmyyG8R3E8Xd1jJpkHJFNGYUThpMSq1VN3h24rc77Gb3Xv
	Efhz0W9goT2S7Kp/FdGOKPggEPhboOtM+GJuGmGyqPs4k3hZM51E+fPdTgvS1S0lDYzVjiF3ZEl+k
	BJFTgx6Kt45BeMsKIlQMrDERDcsmkGXcCzJ4e3zYlAKWOItpjTlRZd+KDICrGbdPHECGp36riBlwp
	M0HBhT6LxeE38tDnTTServizeIuITiEZOg1RVaKI1JWDAItwEKoNqq3cvBRGN3xeGvJajszsdh8tI
	jAq1ASeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7t6J-0000000DXyk-1ZAV;
	Thu, 24 Apr 2025 09:42:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7sG7-0000000DOyb-0cPQ
	for barebox@bombadil.infradead.org;
	Thu, 24 Apr 2025 08:48:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=1HSwUOy6gOuQWWNjn5r4lSe4hnZkCaq823XJ8pBBg18=; b=C8DZVROIE+RdS5zJP2HPBy2O9h
	/KvHZJmkk7IhTJvCFjTg7wh8Jgl5ol7cnLTSuKrUfhv3mHIXpwIuOAVKNf6+wYZFg92/mYgp9/xQz
	BfGa4g97i9U0Binh56Ehjia4XVesSlYY4hQDmv+rnpjseE9GoYTb8JxDBpYIznDh8xmvz7z00tCVG
	PX34Xa+rPqN+R2r1nXTz6WR9SocDcj7Y6hJE+bM5t96IXVACrD9uWoK7dXp6ZNR2CAwQQXrxFNt+W
	jkkwwKoUBEBWSOdxjlAoR/FrLcZjrCvMV+r6oKh63xlYtz96yv3ngOe4HCImu6P12gLE4CMJV7SKN
	7PncDHyw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7sG4-0000000Bdvh-0UXc
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 08:48:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7sG3-0002Qp-4f; Thu, 24 Apr 2025 10:48:35 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7sG2-001r1b-34;
	Thu, 24 Apr 2025 10:48:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7sG2-00CFqB-2l;
	Thu, 24 Apr 2025 10:48:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Apr 2025 10:48:33 +0200
Message-Id: <20250424084833.2920664-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_094836_282986_3D4478B8 
X-CRM114-Status: UNSURE (   8.85  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clocksource: omit seeding of RNG in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not maintain a PRNG in the PBL, so we should omit the call to
srand_xor in PBL, otherwise it expands to BUG() and breaks the newly
introduced PBL clocksource support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/clock.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/clock.c b/common/clock.c
index 517116e3b9a3..50941fb00822 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -228,7 +228,8 @@ int init_clock(struct clocksource *cs)
 	cs->cycle_last = cs->read() & cs->mask;
 	current_clock = cs;
 
-	srand_xor(cs->cycle_last);
+	if (IN_PROPER)
+		srand_xor(cs->cycle_last);
 
 	return 0;
 }
-- 
2.39.5



