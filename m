Delivery-date: Thu, 15 Aug 2024 08:57:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seUQP-009n9h-1s
	for lore@lore.pengutronix.de;
	Thu, 15 Aug 2024 08:57:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seUQO-00032T-WC
	for lore@pengutronix.de; Thu, 15 Aug 2024 08:57:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g9ln2kkP/EYrdShBTHdZ4Xn/etjshPR3WercbjNWe24=; b=oTArf96bPqEle9Gi8hvFDZ7HsU
	7cEIYK/cx0GsVkngLy2GJL3QZJXupHVKShnESGMR4q2wDNQiXLRvoSoBgJUC2cMMipGczxF38PKOn
	JVB4cF5ed7HFiinpyGzXqqeT1ZncU2CYua58+BC0rc8xftJbg4P25SmHtBChzSxYBnjstadhDWdHn
	sz6NzcqtyOboWQwWRIFwQoKxV1DPx12mkokI/T3asiZ1EKRBcAfVpG1B48bzq0KmLTJfQGm3FjnOa
	JR3vPghhEOjhNLC9pVwbtPssibB7bLXfZXYylDM750KTCQFijG8kc33jAI/KZ2w4whqaRAsiLovuu
	WBtQAdRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUPn-00000009D1i-2dVc;
	Thu, 15 Aug 2024 06:56:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUPk-00000009D0g-24CS
	for barebox@lists.infradead.org;
	Thu, 15 Aug 2024 06:56:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seUPh-0002vU-KK; Thu, 15 Aug 2024 08:56:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seUPh-000XMF-4Q; Thu, 15 Aug 2024 08:56:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seUPh-004qwZ-09;
	Thu, 15 Aug 2024 08:56:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Aug 2024 08:56:45 +0200
Message-Id: <20240815065646.1156788-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_235652_556505_A8280871 
X-CRM114-Status: UNSURE (   9.96  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] include: linux/math.h: promote DIV_ROUND_UP_ULL args to 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DIV_ROUND_DOWN_ULL promotes division arguments to 64-bit, but
DIV_ROUND_UP_ULL did so only for the division, not the addition for the
round up. This would lead to a wrong result when the 32-bit addition
wraps around.

Linux has an explicit cast to fix this, so do likewise in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/math.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/math.h b/include/linux/math.h
index acbffa96e6eb..f5d5cc714c4e 100644
--- a/include/linux/math.h
+++ b/include/linux/math.h
@@ -23,7 +23,8 @@
 #define DIV_ROUND_DOWN_ULL(ll, d) \
 	({ unsigned long long _tmp = (ll); do_div(_tmp, d); _tmp; })
 
-#define DIV_ROUND_UP_ULL(ll, d)		DIV_ROUND_DOWN_ULL((ll) + (d) - 1, (d))
+#define DIV_ROUND_UP_ULL(ll, d) \
+	DIV_ROUND_DOWN_ULL((unsigned long long)(ll) + (d) - 1, (d))
 
 #define DIV_ROUND_CLOSEST(x, divisor)(			\
 {							\
-- 
2.39.2



