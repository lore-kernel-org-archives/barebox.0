Delivery-date: Wed, 13 Sep 2023 14:09:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOgP-00DjzT-6u
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:09:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOgN-0001Eq-1T
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:09:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MCQOAQmAFzPVlLo3KpEKPPxvCRodC6PmlCHsIEgSVxE=; b=L9O18AkUJ8J6fMpFz5inDi0v18
	OwdkkH7btpzAxMFSDiP0iwVdNcaGoJhgpHt84iqt9cnk9zAq8nFWarsD31P7Ml2CEhpQlfzVzGh9k
	bhgcRVQicOJ0rC+D2bX9q5pD3nKmK7P4VCGs5fK3nJnMpHkfjD/fOBPG2MOY0/k0WUMfPI2LkXUVz
	WEsbW6dEpD3peCzUAwckr3ZQnOtSgcnL2zR9oYHT0hRNkS1oBuAanWaaatuHCKN5960qpCHQfXXXS
	oGPOY3/JM7RGQ+EkzsUfXcdxfo0Vy1+qc7coodEcpCMZdgLwVRe46IQpmFxW4omsm933R7duFilOj
	2mVaN+fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOfL-005oaG-2R;
	Wed, 13 Sep 2023 12:08:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOfI-005oZX-0B
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:08:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-0000zq-Pa
	for barebox@lists.infradead.org; Wed, 13 Sep 2023 14:08:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-0063bX-6Y
	for barebox@lists.infradead.org; Wed, 13 Sep 2023 14:08:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-007qPY-0U
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 14:08:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Sep 2023 14:08:05 +0200
Message-Id: <20230913120807.1869600-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_050816_121141_7D517D9D 
X-CRM114-Status: UNSURE (   8.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] watchdog: add Cadence watchdog support for Xilinx SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the Cadence watchdog IP available in Zynq-7000
and ZynqMP SoCs.

The driver has been ported from Linux v6.4 and tested on the ZynqMP.
Keep in mind that changes to the XSA may be necessary for the watchdog
to actually be able to reset the system.

Ahmad Fatoum (2):
  clk: implement clk_get_enabled helper
  watchdog: add Cadence watchdog support for Xilinx SoCs

 drivers/watchdog/Kconfig       |   6 +
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/cadence_wdt.c | 278 +++++++++++++++++++++++++++++++++
 include/linux/clk.h            |  29 ++++
 4 files changed, 314 insertions(+)
 create mode 100644 drivers/watchdog/cadence_wdt.c

-- 
2.39.2



