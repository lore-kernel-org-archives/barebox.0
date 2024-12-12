Delivery-date: Thu, 12 Dec 2024 09:36:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegI-0077Pt-0H
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:36:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegG-00045E-Oy
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:36:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F8bN9y0GZdR9HbBJTNPld55u16ZzA89porz6kDrBSac=; b=j2aK0F5Zzyo/KHeoeFRNNXhOv9
	r8hQZPKTSgX5KgSl+AtpM4qN5dlsmteBQ4+qjJI9lW2CR9lc/1eBESQsyJidbSz/w/5qFPUL9ajmp
	OFMHyCZcHFmhsKIfW3+kTLjtlLv/Dopv9YvVp1dscKBleS1Cd7xuny8H9QbDxI5UoV0x0ZXHLXk9+
	D6sBmDyYlWWpL8kOWHIIjgOv5LwfyqTNXfc8KURePrhaQJlo4hLLqOr55UZovXq/zeVK9JMVODNLq
	4aJYt+J4Oq2bJiD3GP9G4tSIctP7yXhZ6i9+jhY72E9b1Q4iR2lJU1u1Cewh1RxSjDsS/fbco8ZyT
	OvF09jkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLefp-0000000HKFy-1yy9;
	Thu, 12 Dec 2024 08:35:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeai-0000000HJDA-0xTr
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:30:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeah-00034Y-4U
	for barebox@lists.infradead.org; Thu, 12 Dec 2024 09:30:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeag-0030Ej-0Z
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 09:30:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeag-00AkAx-2n
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 09:30:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 12 Dec 2024 09:30:28 +0100
Message-Id: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_003036_270073_6EA05755 
X-CRM114-Status: UNSURE (   6.35  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/5] images: fix issues around misuse of FORCE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

v1 was here: https://lore.barebox.org/barebox/20241202124404.1814203-1-a.fatoum@pengutronix.de/

This series only adapts the commit message titles compared to v1.
Since v1 however, changes to scripts/Kbuild.include have been merged,
which are required to avoid a build error when no BAREBOX_MAX_IMAGE_SIZE
is specified.

Ahmad Fatoum (5):
  images: don't compare filesizes if file didn't change
  images: don't check for missing FW if file didn't change
  images: fix missing FORCE prerequisite
  images: don't prelink if input file didn't change
  images: don't compute size if input file didn't change

 images/Makefile      | 23 ++++++++++++-----------
 scripts/Makefile.lib | 12 +++++++++---
 2 files changed, 21 insertions(+), 14 deletions(-)

-- 
2.39.5



