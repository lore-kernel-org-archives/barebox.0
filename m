Delivery-date: Thu, 23 May 2024 16:41:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9dB-00FH8n-0t
	for lore@lore.pengutronix.de;
	Thu, 23 May 2024 16:41:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9dA-0006Qb-Nb
	for lore@pengutronix.de; Thu, 23 May 2024 16:41:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lzHYa2kj4lv1/+3I/KBM0+VpLzdaFqr4taNKt6jH9Uo=; b=ayyNeFzKQ/29Hy
	HhUDo2rJKbVRTymnTlQ+pnt9JN/vbPnkCvQvX8eWA39MshYdDvkWGG+c+mLvrRSVbD2KgN9nE7EVL
	UqR6MUVUFSikhwgJNigT+o8S+CcHl1cf8mevwIiLGrpSSkzkPb3XHBKg5QVK1NlJUS3WbqBKnkA+l
	8hghwBvl5rXtmEOCAub7QGeT9VC6k7JrTnNJ9JoXZILdbKiB7CiTrKElL4myZQn6Af0158Amup85e
	I8kNpib6BEg++GyXX2LbQ9wfosy5xobNSzugZU9w4nJc5x/XR833r4CVVGf1/9fJ3N6KuRg7tewVQ
	vhhDj69GitmkAnheKovg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9cl-00000006WPQ-29Bg;
	Thu, 23 May 2024 14:40:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9ci-00000006WO7-0rZX
	for barebox@lists.infradead.org;
	Thu, 23 May 2024 14:40:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-00065F-U4; Thu, 23 May 2024 16:40:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-002fq2-Go; Thu, 23 May 2024 16:40:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-0078ww-1X;
	Thu, 23 May 2024 16:40:34 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 May 2024 16:40:27 +0200
Message-Id: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFtVT2YC/x3MQQqDMBAF0KvIrDsQE6u2VykuJPlpZ6MyE4sg3
 r2hy7d5JxlUYPRsTlJ8xWRdKtpbQ/EzL2+wpGryznfu7gNnzGVXcNrGMPYD25oLKwyF0yPFPnj
 XDrGjGmyKLMc/f03X9QMo/hSUbAAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_074052_282137_E44BA908 
X-CRM114-Status: UNSURE (   7.91  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] net: phy: dp83867: sync dp83867_phy_reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I ran into the same problem as Roland with this Phy driver and missed
the fix that landed in 095cd32961aab64cfe72941ce43d99876852e12b ("net:
phy: dp83867: reset PHY on probe"). I'm still submitting this series as
a refactoring of the fix - with the goal of being closer to the upstream
Linux implementation.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (3):
      net: phy: allow PHY drivers to implement their own software reset
      net: phy: document core PHY structures
      net: phy: dp83867: sync dp83867_phy_rest

 drivers/net/phy/dp83867.c | 28 ++++++++++++++++++++++------
 drivers/net/phy/phy.c     | 16 ++++++++++++++--
 include/linux/phy.h       | 25 ++++++++++++++++---------
 3 files changed, 52 insertions(+), 17 deletions(-)
---
base-commit: 8ad1b68cf755873866945f77e2e635a2c47e4c5e
change-id: 20240523-feature-dp83867-soft-reset-d9dc632017c4

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



