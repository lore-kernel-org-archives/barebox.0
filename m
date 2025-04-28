Delivery-date: Mon, 28 Apr 2025 15:08:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODt-000AkN-2G
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 15:08:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODt-0002Pj-2Y
	for lore@pengutronix.de; Mon, 28 Apr 2025 15:08:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6lRHG3EefdSMCpx4Dj29tL6euIsiTqh0GYLpsu506rQ=; b=DNo+3i9NkHLIACLdZWgALdsqXP
	M0Cu1Do0Cn1raGxuT6LSOfCRfYk6lNxfs9qIks5F/S7rM0NKsVHlYuqN9q1UfKxC9Wi/n3PU4XxmW
	aO/wnu4rDRJxJFC073inlhk3X0rXVDDurvS+JQ7QP6Diksw5CSUk8jil13YnSTqY8swyWN5e/ktrQ
	SXL1pasbDHZttm7UBwlOh70fJ0mxUMSPNptl6HOqVk9PYG6n2ECXXNrX/VakMvu80uPY+EfHMA03B
	/qRkQrx7RJkuuVjj/O1c/OBr4EPKl41u3MWxbyA+QTo/nVMu2+Y28GfMffFDvtZ4AVuHmqZ8e8X7l
	xwyFvzRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ODG-00000006Nlj-1uhQ;
	Mon, 28 Apr 2025 13:07:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Nyf-00000006H8h-0As6
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 12:52:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0003Ue-7C
	for barebox@lists.infradead.org; Mon, 28 Apr 2025 14:52:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-00068W-07
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 14:52:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0087Aw-1L
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 14:52:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 28 Apr 2025 14:52:12 +0200
Message-Id: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_055253_092053_BE2CC57F 
X-CRM114-Status: UNSURE (   8.81  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] fastboot: fix handling of non-existent partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow flashing an image with a partition table followed by an image
for a specific partition, the fastboot implementation was changed to
evaluate partitions on demand.

This introduced issues around handling of non-existent files, which
should be resolved by this series.

I think it's fine for the series to go through next, but would like at
least the first patch to go into master.

Ahmad Fatoum (6):
  fastboot: terminate request for non-file-backed partition properly
  fastboot: introduce fastboot_tx_print_var() helper
  fastboot: don't populate partition variables unconditionally
  fastboot: only populate variables explicitly asked for
  fastboot: factor out fb_file_getsize
  fastboot: check for file existence before flashing/erasing

 common/fastboot.c | 138 ++++++++++++++++++++++++++++++++--------------
 1 file changed, 98 insertions(+), 40 deletions(-)

-- 
2.39.5



