Delivery-date: Mon, 18 Aug 2025 15:38:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo04a-001tol-2k
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 15:38:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo04Z-0001gy-In
	for lore@pengutronix.de; Mon, 18 Aug 2025 15:38:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tj+QQvnvzd6d1lIghE4/2PIf0IgEfh5Hdq8ODbJnTas=; b=PnKgdywkbwnCk8LDYAStjzdHst
	Fmm/AsksZNXhV4efTHMz5f8tsqnF5X27VL5OeCUZRvp4gSxJTy7WWyW86jYM5p3sM2VUb/KjVOyu6
	9VbTd2SpcenSWCa0DaxC9jCWIOn6LPupw2J2Kfx6j6cMyMabd99ORXm2Q0SqRwRY4xsB6JyZveyg2
	n7cUMdc5rYkwAzMKGKCiX/OOU1zpl5vqRy2gJST+/MPHxFNpZlv1JsIcf7UABlf13Mr9bqAUAM9gU
	pAXslXQdMz605tYGMqLFd4LR0TavUexSPzUtEnBcdbfG8AVruFGYuKGI/mPJRQmYaZC8zC+V2KzdX
	3h94FClA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo03Y-00000007UYI-2eZM;
	Mon, 18 Aug 2025 13:37:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unvOb-00000006xQy-3wFc
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 08:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Tj+QQvnvzd6d1lIghE4/2PIf0IgEfh5Hdq8ODbJnTas=; b=Y4YO028HyUrSr3mBKVpkPtsr+/
	B+Sejerfy1hdLMLWLrK8Nqma+fQ1sHnagDCsQbuM6HoV/hYv1/u/d8KqIy+cdn3wK3c+GpXh0yJha
	J6Ns8dV0GskwsEgUf+mKNV8YrkTYDRxhWrFoja8EKwqnJ0WaZ/eR1WoTn5rpGxLf6duVbXK4I3UHa
	U1kwj2AbKId6ZeRVdEjJdStCfx2Gp+16e9gFeIgPEmuT1bkF4vM2IbxnkZz6b8VYmokssRgGYKnQQ
	UyL68GRbhc7jikPzRwKi5yM897Hh+m34k3Uu0y4C8J1/OjapliOXsLcIecCMRzU752geNG3ZNgM+k
	qvWWrV5A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unvOY-0000000HKaJ-3wk4
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 08:39:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1unvOV-0008QJ-U2; Mon, 18 Aug 2025 10:39:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1unvOV-000s8K-2P;
	Mon, 18 Aug 2025 10:39:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1unvOV-006Sb7-21;
	Mon, 18 Aug 2025 10:39:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 18 Aug 2025 10:39:02 +0200
Message-Id: <20250818083902.1536392-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_093911_093067_8BAA4F6E 
X-CRM114-Status: GOOD (  10.19  )
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
Subject: [PATCH master] partition: Fix wrong check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In region_overlap_end_exclusive() we pass startb - 1 as endb argument to
region_overlap_end_inclusive() which is obviously wrong. Fix this.

Fixes: 768fdb36f3 partition: define new region_overlap_end_exclusive helper
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/range.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/range.h b/include/range.h
index e7819017e4..bb41dc78ac 100644
--- a/include/range.h
+++ b/include/range.h
@@ -38,7 +38,7 @@ static inline bool region_overlap_end_exclusive(u64 starta, u64 enda,
 		return false;
 
 	return region_overlap_end_inclusive(starta, enda - 1,
-					    startb, startb - 1);
+					    startb, endb - 1);
 }
 
 
-- 
2.39.5



