Delivery-date: Thu, 11 Dec 2025 22:01:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnn3-00AQn2-1L
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 22:01:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnn1-0004LH-19
	for lore@pengutronix.de; Thu, 11 Dec 2025 22:01:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tmND1D97W4prpf6uCtXeG9uMGgdZji/H/42JbeK0lLE=; b=AeKqMZQSmJHh54QA2vBSXzgsee
	OjmKLn0MdhMB+1907iQ8vuFRJj6s7kJI8Get3bxk5Y5iK/IB3O8+sudJlAgLgGGQ92AiAlXu4F+Ov
	lbg73egv2xnkKFNMQ60WVn9OE8836pHUCTdtL5ncXKhaIOOZ6HGBeuIdoJVL7JCetlEqRkF+eFLN8
	aCUi8kUGocrE8G2fmayFnRnVNT6ZmydyAArV5eE8OiOyeSQ3C+97maxLKJpdjubw78EiJpoPBwPHg
	ecfus0d8P+rC6zEo0y742UbGnGc/1gWK11jcl6aH0tU31+4vDOJMbQkbfNInRAUuJ3hSjfnoMS/XS
	CR8IeUmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnmQ-0000000HIvv-46g6;
	Thu, 11 Dec 2025 21:00:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnmO-0000000HIu0-0S6M
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 21:00:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-0003vD-9O; Thu, 11 Dec 2025 22:00:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-005BZs-0I;
	Thu, 11 Dec 2025 22:00:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmL-0000000DJ5q-4Anq;
	Thu, 11 Dec 2025 22:00:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 22:00:43 +0100
Message-ID: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_130052_170470_52A06B37 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] cdev-alias: support referencing diskuuid without child partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is already the case with other cdev aliases, so support this for
symmetry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/cdev-alias.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/cdev-alias.c b/common/cdev-alias.c
index e5a059ad7f4d..1878553615d2 100644
--- a/common/cdev-alias.c
+++ b/common/cdev-alias.c
@@ -57,9 +57,11 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
 		if (strcasecmp(cdev->diskuuid, uuid))
 			continue;
 
-		cdev = cdev_find_partition(cdev, arg);
-		if (!cdev)
-			return -ENODEV;
+		if (arg) {
+			cdev = cdev_find_partition(cdev, arg);
+			if (!cdev)
+				return -ENODEV;
+		}
 
 		return fn(cdev, data);
 	}
-- 
2.47.3



