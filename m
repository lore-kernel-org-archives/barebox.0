Delivery-date: Mon, 13 Apr 2026 09:46:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzk-00Bdsg-02
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:46:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzj-0007EA-ED
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:46:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FLUpL7gRQc1Ji33rgpq+nb1iWsVX1HooU92lLqdLV8Q=; b=cGptAqL9dyrrkxFgjHGxePY1nS
	52L28WZbYadmW8Wp/TRjDQnSEjjQRii4kDO+SSBYPuyuWEJIQMW+822oVUzS/NVQCWhRJ6uVMQKf3
	IbThOk5AnIMm1vB06DrnQ/HQXIl9ofRunOfAInN5+kNblGq5bkSQzoJXdWx9wY/njFf9Wr0uV9wUL
	yFc6tmGd8GHFceOsJijQWHsQvH2jgGUYI2G9VMIAV9PBqr1TA4hK3v5Z+6He5BbSg47OtVoO2xG9Z
	V1GAijUVjZ6yJUdt5CGAwgLwkO96+dhaTAXXmryxqTSdFimaOFilMgnoVqYIi0t0blozx7dQ8PVK5
	pWopiOUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz7-0000000FB3H-47iN;
	Mon, 13 Apr 2026 07:45:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz5-0000000FB1t-2FF8
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:45:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCBz2-0006tX-Ce
	for barebox@lists.infradead.org; Mon, 13 Apr 2026 09:45:24 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon, 13 Apr 2026 09:44:43 +0200
Message-ID: <20260413074522.1410710-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_004527_569969_AFB0C9A2 
X-CRM114-Status: UNSURE (   5.78  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] test: Add framebuffer test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QEMU allows taking screenshots of screen. Make use of this to enable
doing some rudimentary graphic tests.

Ahmad Fatoum (7):
  ARM: multi_v8_defconfig: enable QEMU ramfb driver
  test: enable VirtIO keyboard
  commands: fbtest: add flush for single pattern
  test: conftest: don't call .startswith on int
  test: conftest: set -display none when non-interactive
  test: conftest: add qemu feature
  test: add framebuffer screenshot testing via QMP screendump

 arch/arm/configs/multi_v8_defconfig   |  1 +
 commands/fbtest.c                     |  1 +
 conftest.py                           | 37 +++++++-------
 test/arm/virt@multi_v8_defconfig.yaml |  2 +
 test/py/helper.py                     | 53 +++++++++++++++++++
 test/py/test_fbtest.py                | 74 +++++++++++++++++++++++++++
 6 files changed, 149 insertions(+), 19 deletions(-)
 create mode 100644 test/py/test_fbtest.py

-- 
2.47.3



