Delivery-date: Tue, 17 Oct 2023 23:37:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrkq-00CDJQ-QK
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 23:37:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrkp-0008Ir-JH
	for lore@pengutronix.de; Tue, 17 Oct 2023 23:37:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7Hw7fjpm7xUbp4r6bhWvA6tg/fRgpXvNMZ3HWSwy03s=; b=Cs7Nty+oZ7D30Oe1+5TegrPOzX
	mRiaZuEcCKypFgYxbNe8WXlltCnifrGT7F5mHa7O4uIQvDO0CMpI/OiMOiJP+/3yh4SSFT8brwcVN
	WiUBGmYhvIUUlbali9WzX8eWnRR7X5kAihFYOT2DAxb0N13XMvCd7pK7VmlSJjQnZnjF+xIJvTvau
	xwWxzFfc1ecHjNVYN2O8kYHeM4X97xFqQmQqdogy7NBZy1gSgTiA3EFT7U95IAgFMY2xPTAi3jfh2
	68TX/U+arOv+2FPtACiypke9ywgvS9ukR0POC4yvd/Z+rhkYZYWOqEXXbiFaErLfL5S+HgbFXaYSx
	tHNKzEbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrjf-00DJCB-1w;
	Tue, 17 Oct 2023 21:36:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrja-00DJA2-0c
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 21:36:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-0007wN-Sa
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-002PIV-Fe
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-00Ef1f-1M
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 23:36:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 23:36:04 +0200
Message-Id: <20231017213608.3494255-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_143614_237552_468CBA4C 
X-CRM114-Status: UNSURE (   6.15  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] i.MX USB Loader Windows Fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi all,

this small series enable our imx-usb-loader and barebox-pbl
implementation to get loaded via Windows.

Regards,
  Marco

Marco Felsch (4):
  scripts: common: fix read_file_2 for windows
  scripts: common: fix buffer freeing
  usb: gadget: fsl_udc: lower state_complete constraints
  imx-usb-loader: fix windows usage

 drivers/usb/gadget/udc/fsl_udc_pbl.c | 2 +-
 scripts/common.c                     | 5 +++--
 scripts/imx/imx-usb-loader.c         | 8 ++++++--
 3 files changed, 10 insertions(+), 5 deletions(-)

-- 
2.41.0



