Delivery-date: Fri, 12 Jan 2024 16:22:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOJN0-00EdbJ-18
	for lore@lore.pengutronix.de;
	Fri, 12 Jan 2024 16:22:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOJMz-0007FH-PJ
	for lore@pengutronix.de; Fri, 12 Jan 2024 16:22:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MfvOK5bJ9A172ZPl2c0AqDac7N/bif5+LZM4q5LBE1A=; b=TRwZu3lPQuRY/m
	tcE3FjavbnBMbzwDeTP3NOcFJe8qxjSNhRtJBE3pXgEogFRhdDUz0ZzgD4V7stNnyy8sfw11zpg9c
	tZg94WziqVQC8O43Lty//BkwjxiWA9MU3g1gCRaE58qt5b9AHLyGqpY10IUIPNFWRFojeuLotPYOU
	jkPQVh+xZ2JrXdsRxnIJAE6o65vmjeqgoK12JTk47zc87NPWduf9qVQGdWMPZGHJwenWFllsdQIe8
	/GFLGqrC78y8ls+T5hjUWjmelgYFdG0FB82iX1fZ6e4ZO89S8OjO6qi7DSOtedJ/c0wJc9ZAFqwO0
	HgfLYALrq86Xl5g2Nbfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJLc-0038uW-33;
	Fri, 12 Jan 2024 15:21:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJLZ-0038tX-1C
	for barebox@lists.infradead.org;
	Fri, 12 Jan 2024 15:21:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rOJLV-0006rY-Rm; Fri, 12 Jan 2024 16:21:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rOJLV-002BFB-Eg; Fri, 12 Jan 2024 16:21:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rOJLV-00HPMZ-1J;
	Fri, 12 Jan 2024 16:21:21 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Fri, 12 Jan 2024 16:21:06 +0100
Message-Id: <20240112-fix-habv4-event-report-v2-0-1c91bc857935@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOJYoWUC/4WNQQ6DMAwEv4J8rqsYgar01H9UHEIw4EuCnDSiQ
 vy9aT/Q46x2Zw9IrMIJ7s0BykWSxFChvTTgVxcWRpkqQ2vazhARzrLj6sbSIRcOGZW3qBmdI+9
 pHm/e9lDHm3Jt/sTPofIqKUd9/34KfdO/ykJokPrJOmvNbIgfG4fllTUG2a8Tw3Ce5wcltCt/w
 QAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_072125_411398_C1974095 
X-CRM114-Status: UNSURE (   8.40  )
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
Subject: [PATCH v2 0/2] Use HABv4 report_event implementation for imx8mm
 and imx8mn
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
Changes in v2:
- Fixed coding style from review comments
- Added FSL_SIP_HAB_AUTH_IMG_NO_DCD to hab_sip_cmd found in TF-A 2.10
- Added imx8mp to known good targets
- Link to v1: https://lore.kernel.org/r/20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de

---
Stefan Kerkmann (2):
      habv4: correct habv4 rom vector table
      habv4: use hab rom implementation of report_event

 drivers/hab/habv4.c | 102 ++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 72 insertions(+), 30 deletions(-)
---
base-commit: 3840c1cd99768c8755c073f3749829878670b3c5
change-id: 20240111-fix-habv4-event-report-aa1cc1fb7c95

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



