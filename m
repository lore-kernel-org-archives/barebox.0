Delivery-date: Thu, 11 Jan 2024 16:44:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxDt-00D8N4-0a
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 16:44:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxDs-0002dY-KL
	for lore@pengutronix.de; Thu, 11 Jan 2024 16:44:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Iq79l8onYDtK0xZJoNHb1T58KGBgi+0WbdS1jAs5j7M=; b=hfVBGvnTKkWYcU
	I0RY+vInyfWr3TW8LbJWEHVkPBHsCMTh3bNyRiNyJgc4zSNtY64A3hFdVY6UH/rhDhIvfqLHxq7f8
	CJmYLIgxIr40DBarvawwQ09VhC5WSaCLPmh1oJxKGPnOqolJYolvHCaTxRVdNTUnfzdEotsXZr4eN
	H3bU9MdM5wPiRcgJEe4eEQ9ZadZuaJPNtw4rWB4sDGH/OM49C1pWGlPZOrsBEOF0PpEVFCL37htZJ
	kYHnJrLzXym257llQMei1qf6TrwS0kEzD39KohxZ3MuGyhlOdNBQ25xpWSj/dRxZBNJl6Dpk24vnC
	dvnqkgA72oWOtGXl2evA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxCr-000U6c-30;
	Thu, 11 Jan 2024 15:42:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxCo-000U5Z-1b
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 15:42:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-0002JC-Ju; Thu, 11 Jan 2024 16:42:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-001xVH-6j; Thu, 11 Jan 2024 16:42:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-009OBb-0V;
	Thu, 11 Jan 2024 16:42:51 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 11 Jan 2024 16:42:18 +0100
Message-Id: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFoMoGUC/x2MQQqAMAzAvjJ6trAORfQr4mHOqr1s0skQxL87P
 AaSPJBZhTOM5gHlIllSrECNgXD4uDPKWhmcda0lItzkxsMvpUUuHC9UPpNe6D2FQNvSh6GDGp/
 K1fzH0/y+HytRGEloAAAA
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_074254_539607_C97A4060 
X-CRM114-Status: UNSURE (   7.29  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] Use HABv4 report_event implementation for imx8mm and
 imx8mn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series corrects the HABv4 rom vector table and syncs it with the
offical NXP documentation and switches the imx8mm and imx8mn socs from
the `imx8m_read_sram_events` ram parsing implementation to the one found
in the HABv4 rom. Calling the boot rom previously caused hangs which was
the root cause for the ram parsing workaround, with the corrections to
the API these hangs were no longer observed.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (2):
      habv4: correct habv4 rom vector table
      habv4: use hab rom implementation of report_event

 drivers/hab/habv4.c | 93 +++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 68 insertions(+), 25 deletions(-)
---
base-commit: 62748c3bf91d4f91f9f5c12c5fcd590c281d7b7f
change-id: 20240111-fix-habv4-event-report-aa1cc1fb7c95

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



