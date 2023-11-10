Delivery-date: Fri, 10 Nov 2023 23:05:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd9-006VIU-1e
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 23:05:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd9-0008KW-Ft
	for lore@pengutronix.de; Fri, 10 Nov 2023 23:05:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YCwtRx8kw63QclfBMtXSZn3p1fM0BGmNBvliFghbgis=; b=viYo2nbvh8FEXDWo9qlDT0TbwX
	89WeZJWuJoIrIAj6vMKLnelxcDsVpw7UE0Emd3kDV98o1sp5WmgF4CpIbugXyF67t2WVCuXn6pJa0
	GqRUkhEG8GwOxzDk+8Wss3Xdik2BuSef5/ou1bQm7uVofhK8QWSEIg71wosxh2j0wwplc1rSFZ72q
	o+cy4ksd5NBB966SD9T5ujuECWIgU1IQQqM1jf1TiZL3fiiKNMLR6RnJlxsSp25tFCfDceMmPZySE
	+sdzX7R/hfEyUM19qJWWIhaIXiAc02+ArW15/PJecPNcll0KpwjrurqGt5gn8qWvu74ZH1p3VOy9k
	FWgy130A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc6-009WSq-2u;
	Fri, 10 Nov 2023 22:04:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc0-009WPE-1L
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 22:04:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-0007n5-9S; Fri, 10 Nov 2023 23:04:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zby-00872o-Sy; Fri, 10 Nov 2023 23:04:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-1o;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:14 +0100
Message-Id: <20231110214421.2726093-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_140424_550186_B211C36E 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/18] include: asm-generic/atomic.h: define atomic_cmpxchg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already define a generic cmpxchg implementation, so add one that
operates on atomic_t as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/atomic.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/asm-generic/atomic.h b/include/asm-generic/atomic.h
index 27b0f73b487b..74429e1c373f 100644
--- a/include/asm-generic/atomic.h
+++ b/include/asm-generic/atomic.h
@@ -116,6 +116,8 @@ static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
 	*addr &= ~mask;
 }
 
+#define atomic_cmpxchg(v, o, n)	cmpxchg(&((v)->counter), o, n)
+
 /* Atomic operations are already serializing on ARM */
 #define smp_mb__before_atomic_dec()	barrier()
 #define smp_mb__after_atomic_dec()	barrier()
-- 
2.39.2



