Delivery-date: Thu, 02 Apr 2026 10:25:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8DNC-007mhD-0n
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 10:25:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8DNB-00058L-Lu
	for lore@pengutronix.de; Thu, 02 Apr 2026 10:25:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3KxIbVyOmIRwJ2L9Zh1VoqJVC4Mdwx/VdgLeDuXf7Tc=; b=FZnX/jP/SR+ZZH
	GXlJRkO4mTPaPTvETQK75Wa4ORCamPZf+NFvbOuy1V+lobNq1ge9m+aYxjnDCaNXpuLpWpBI2/HUp
	OszNHtvG7HzrwzL3OCvLnSZVNlphYzQ2sdXCN/JqiCSm0bf9U2Hu1MZV1b1qs+YDWuTns0WU8hacE
	giKQLTryFXAlixG2w4L5YOEckhHelha3ouJJJXDiK4SX2jOR2C/vfTILsVZ+U3gwqliMpyQk/mmMF
	EHevSbuZIOOy4oATr1bdhvoUqsJZGeGYDn9EdRMPvCnYLgOq86qcfjoUTEFCpQ/s5FHR9vIGYqZcJ
	tJKFXkcMUcZavvB/pR+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8DMn-0000000HB48-2qSu;
	Thu, 02 Apr 2026 08:25:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8DMm-0000000HB3Y-077H
	for barebox@bombadil.infradead.org;
	Thu, 02 Apr 2026 08:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=3KxIbVyOmIRwJ2L9Zh1VoqJVC4Mdwx/VdgLeDuXf7Tc=; b=QxEKRb0A/yFxZC24hD/LOG6bnK
	c4hGAkiiBqMAClLH0yhbvaici3qjnLK4oASwW/7lkyxqmRzHcDSYdL6NOmPr4d1PzWR0s3YlnzbBu
	q/c/OQjAD5jxiIRouJeVR5X1hw77wkZQiZ3Wcve3oekIlMnU3yLNO4/UM5YdhjJy1fs/xxdyaxa5k
	nX3H5Z0yFsLGQNQtrOLQ50USWjE9iixWDl9sLWhM5rvdpGU/d5hihZFk5tlF+yAHu5oPGqNmRl9Yc
	rKi7s/XTRcM2YB1lNrwK2IWXpdiyX8F/IhxdZpmf+FoYe8ta52ena3rSN9e5jebXYSI3iqC7pnHsO
	iVZaCWJg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8DMe-0000000219h-0Wuq
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 08:25:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-0004sE-Nj; Thu, 02 Apr 2026 10:25:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-003LOF-1f;
	Thu, 02 Apr 2026 10:25:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-00000003hKJ-1tM7;
	Thu, 02 Apr 2026 10:25:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 10:25:08 +0200
Message-Id: <20260402-net-dns-buffer-overflows-v1-0-30621fe8c6b7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOQnzmkC/x3MQQqDMBBA0avIrB2IMYj0KqULTSY6UJIyU6MQv
 HtDl2/xfwUlYVJ4dBWECivn1DD0Hfh9SRshh2awxk7GGYuJvhiS4nrESIK5kMR3PhXNOi5umIM
 P3kLLP0KRr//6+brvH2CTRk1qAAAA
X-Change-ID: 20260402-net-dns-buffer-overflows-0b3a418dcdc2
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775118310; l=557;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sFjQsN/428k6XW9J3yymYRIxdT9/zS2yNknFn14Cjhk=;
 b=AuGGmWAPlZvBLCQvyj+pkalhPpgzm/01aH1O+XwvWdNG76k9a6vIRLchqChPK9GIfNWTVi1So
 DIXIqq28x1uBbaRMwdDXsD/EEgnikSimU07a5LEwjMxfOk/WVSEEWYf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_092522_011397_016A0909 
X-CRM114-Status: UNSURE (   6.19  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
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
Subject: [PATCH 0/2] dns: Protect against too long hostnames and malicious
 packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This fixes some problems in the DNS code with wrong/malicious incoming
data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      net: dns: fix packet buffer overflow from long hostnames
      net: dns: fix OOB read in dns_recv query type check

 net/dns.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)
---
base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
change-id: 20260402-net-dns-buffer-overflows-0b3a418dcdc2

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



