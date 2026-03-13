Delivery-date: Fri, 13 Mar 2026 14:35:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fY-000DY0-0G
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:12 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fG-0001AQ-0L
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HoMeQJGw8Go2lskDhZ6i3uzdw16mSWsRzuA1MCdAuYU=; b=cSF0rk40a2GLRD36J3jcqfBD7q
	R80Fvy5H9E1H/SVPcaXuddG7RdWFs1Id1GkjJ6H6GK2kL0dTPnihINR6rwPq4oF1TvKsHt2HUhLGe
	LlQlJcuxtN4/SphgfQEVC6TwYnvlP/tTpVcI0KnEpQaRjDDYoFKw79+zJZdn3+lVKILzjnRiFpBds
	NtEHukfbSMz6/OgQoQ1K4EZ+iVuxiDr6qDfwQ1oNJ25iZBBMl89ZJx5GEEJkL18kSOwgAbFoWtq6K
	l22swr21bM7XYes2KN3gTt+CUUxrBqPiVX5kJlYRFn6VTvMUlsjvNLUbV/ft22rfahHIYCmwE0lyf
	uQ9H/0UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12do-00000000GjI-2sTu;
	Fri, 13 Mar 2026 13:33:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Fnw-1m8m
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HoMeQJGw8Go2lskDhZ6i3uzdw16mSWsRzuA1MCdAuYU=; b=dB0YKoJoSern98DC1DdtIWXXgz
	tbBSZY6Qw4lCjedV3FtL/yheziXA/BMGAF4giCxqZsjlgN05nbk8fdOvN+h/MkFuJU8HNwX91oI8i
	8rj2JaaEpZ5ivkC+tUGteZOzzk7R5iL4N7sqWIB1JJN30+x2cAJ7HpWFm/1+Wi6+37K1BWrYHgYMv
	hUYguIzNJe/BZP85CrzQsl0zteyEOU90C0EjHnRUMX0OUHJ9hxHy4eyC4UlHYW6N5ls84IUIMj0EB
	7RdtEH81Cnlroze8Bna8kF5gDlhJuVBrC1Nv8fFrAebrqD0iXRMrwqTat6TyRJxQg/WJ5TvRQbt2L
	7woNcc9Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d4-00000003OSX-17kG
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0006wF-5q; Fri, 13 Mar 2026 14:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005V2-35;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-2g1Y;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:15 +0100
Message-ID: <20260313132631.2257573-32-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133238_515740_6B40794A 
X-CRM114-Status: UNSURE (   8.77  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 31/58] FIT: fix potential underflow of stack array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a bounds check on depth before decrementing to prevent
stack underflow when a malformed FDT has END_NODE before BEGIN_NODE.

(cherry picked from commit 38ee3bd662a87ed0d54d2f8646d90130e2d5d11a)

Reported-by: clang-analyzer 19.1.7
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084142.3546363-2-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 027b268928d3..9748e5f1d8f0 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -153,6 +153,8 @@ static int fit_digest(struct fit_handle *handle, struct digest *digest,
 		case FDT_END_NODE:
 			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
 
+			if (depth < 0)
+				return -ESPIPE;
 			include = want;
 			want = stack[depth--];
 			while (end > path && *--end != '/')
-- 
2.47.3



