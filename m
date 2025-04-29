Delivery-date: Tue, 29 Apr 2025 09:56:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9fpo-000Qfx-2k
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 09:56:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9fpo-0005NX-Al
	for lore@pengutronix.de; Tue, 29 Apr 2025 09:56:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pdSD33L7T/My8fa+hx+e0JAMa8FghRCXMLTtSBpAHzg=; b=nVP0ibA1vroiGZhoEsdEykuNC7
	kYlFZ1C7DvSiMoFUmJkRaryC3s5fF/TExp3Fyk1PL1/cMuDubQEvbBERHVpc67AAu6G8fd30sKVXD
	O9na6l8E+9HXxRpO7h9V16i5+XanBu9VhQd4x6v+NbP1AyT0RLN7j2BgniCv2kMvqhza5m2OPRnYj
	xaEuNIOuaDAPpmUdz/VRIWBC/peqyi3pWyoKAs8fwfE8Kiv8O7FcjuEsHiLQtxW9lVxX7hGzvVdlA
	C9HZU4olFMxVqDIxihyEyt91wsdJ6e2zQJtCEcy2EclgqpAS5UDOjetPeZ6Pt8l4G6uaslGLnRwmB
	BYFGcIUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9fp7-00000008prU-2vUP;
	Tue, 29 Apr 2025 07:56:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9fp5-00000008pp5-0cct
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 07:56:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9fp1-000502-0A; Tue, 29 Apr 2025 09:56:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9fp0-000E4b-2e;
	Tue, 29 Apr 2025 09:56:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9fp1-00CfhX-0d;
	Tue, 29 Apr 2025 09:56:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 29 Apr 2025 09:56:05 +0200
Message-Id: <20250429075605.3012311-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_005611_184771_3CEF4EFF 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: random: make srand_xor a no-op in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are going to add srand_xor calls at more places in future, so do not
trigger a BUG() for it on use in PBL. There is still a BUG() call in
random32 and friends, so use of unseeded PRNG won't get unnoticed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This replaces
https://lore.barebox.org/barebox/174555956247.545067.10905121643082274040.b4-ty@pengutronix.de/T/#t

But there is no breakage if both are applied at the same time.
---
 include/stdlib.h | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/include/stdlib.h b/include/stdlib.h
index f0f7cfd2ed28..18f58abad988 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -21,10 +21,7 @@ static inline void randbuf_r(u64 *x, void *buf, size_t len)
 {
 	BUG();
 }
-static inline void srand_xor(u64 entropy)
-{
-	BUG();
-}
+static inline void srand_xor(u64 entropy) { }
 static inline u32 random32(void)
 {
 	BUG();
-- 
2.39.5



