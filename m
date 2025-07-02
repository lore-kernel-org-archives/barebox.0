Delivery-date: Wed, 02 Jul 2025 14:05:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwD0-00DHx1-0U
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:05:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwCy-0006a8-2R
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:05:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Raw9t19RtZ2tQwv3wYrCLuJdI20q8m+ZT0yDErubaak=; b=JNfUK9UvBJ71DcYfr8xrBUjiHy
	Prh0OVehUIrhCDfoXw+NS/fTcwW26wNzoe4/oEeE7fu8jQtNsnOjXvlcuULljWOP88zNFJ++Su68a
	mrW2GWBPb/Ykv0VQGtgdHVold82KkKvoUeXx6jzoILlD9P+nmlRDWJ5o44MJdWX1aT6xlo9bzEIzS
	ZH6qjDKmfoPO2gTbp/nbwbYWPa6W0ZvfxFW0odMM/j8aNR5aMY7/8dFqddCplFNOdDQ2xXNuLrlVe
	B4BPFxUgWk9v1kQ7bJBwfvUtCzNSjkfpjDEO4BWL4MA9PrDMg6Gn9Pv0/6bSvYb80dOI/QuQhICP9
	iwjcfEAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwCY-00000008Ezm-493A;
	Wed, 02 Jul 2025 12:04:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvDh-000000083TB-40YG
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 11:01:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-0005t5-Qf
	for barebox@lists.infradead.org; Wed, 02 Jul 2025 13:01:40 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-006QSV-22
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 13:01:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-009NqZ-03
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 13:01:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  2 Jul 2025 13:01:35 +0200
Message-Id: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_040141_989699_B2BB1B65 
X-CRM114-Status: UNSURE (   7.05  )
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
Subject: [PATCH 0/4] mci: clean up MCI idle delay handling a bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Stuff I noticed while looking into actual issues that have been
submitted separately as fixes for master.

Nothing critical in this series, so can go into next. 

Ahmad Fatoum (4):
  include: linux/iopoll.h: evaluate timeout_us argument only once
  mci: bcm2835: allow core to request timeouts longer than 100ms
  mci: sdhci: use sdhci_compute_timeout in sdhci_wait_idle[_data]
  mci: sdhci: reduce duplication in sdhci_wait_idle[_data]

 drivers/mci/mci-bcm2835.c |  2 +-
 drivers/mci/sdhci.c       | 44 +++++++++++++--------------------------
 include/linux/iopoll.h    |  9 ++++----
 3 files changed, 20 insertions(+), 35 deletions(-)

-- 
2.39.5



