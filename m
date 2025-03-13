Delivery-date: Thu, 13 Mar 2025 08:52:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMo-00DTji-2W
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:52:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMn-00018x-5H
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:52:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qwQ7KFmpk1qPnS/fXy2YBxXHPXk9zfM+LYgRg4au7iE=; b=Xr+E20ds9Xtw0d8Yzh5xmzuMbs
	/swY2xVTmiM9vrpUw3DQAj7/knYnEpbFHfy+/+ED0WfBwhTLsJ2u57ZUfIE/DX4muLmmWdiG7Tfle
	rfqTcVDygSBQkXy07ozLTPTo8rF5W2momphXoT+gNUC4Lxfg0CqOAt3CmcY63H6ygIQCvW5DDOC5N
	ni8EJI0+QYBpomFdyDoIsUucgxbshYsN28+7JFsgbA2A0psox8kkI3NLjfhBdAcA3VqWwfpDBHgTz
	J99mP0QuAQsMT8yPR8BHB7Qis7wgdGP47i+ti4nUnRKXbwe/lx64OunERgZGEYxLSLrCx/oL7t5bj
	6kH08SIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdMJ-0000000ARgF-22NO;
	Thu, 13 Mar 2025 07:52:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd6h-0000000AOm1-10MD
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6g-00060o-11; Thu, 13 Mar 2025 08:35:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6f-005UwY-2e;
	Thu, 13 Mar 2025 08:35:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-1e;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:36 +0100
Message-Id: <20250313073445.764875-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003555_365208_2CDA9EB9 
X-CRM114-Status: UNSURE (   8.43  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/22] crypto: ecc: fix clang-analyzer warning about NULL dereference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clang-analyzer believes that point->x can dereference a NULL pointer.
I suspect that's not possible, because of the arguments the function is
called with, but let's play it safe and assert that point is non-NULL
before dereferencing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/ecc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index a0ab962262ca..d91948bddbde 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -1434,6 +1434,8 @@ void ecc_point_mult_shamir(const struct ecc_point *result,
 	idx |= (!!vli_test_bit(u2, i)) << 1;
 	point = points[idx];
 
+	BUG_ON(!point);
+
 	vli_set(rx, point->x, ndigits);
 	vli_set(ry, point->y, ndigits);
 	vli_clear(z + 1, ndigits - 1);
-- 
2.39.5



