Delivery-date: Mon, 17 Nov 2025 22:30:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6nb-0026bV-1a
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 22:30:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6na-0001fE-Un
	for lore@pengutronix.de; Mon, 17 Nov 2025 22:30:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lSMCljiFecDsVYjXjYMZNlrdFrscMaxj11T1Ao4uMvI=; b=1mWBj78OWPuqFTSrSqPD3fiscS
	5LSZsYdkhoMfr02wl9lljujNLYcOI+TsmqgIu6dDwMPg2Suelj6zWIRzY+k1dt+RoMOQF2vZtDlIk
	IcMSZP7Erkong5drC2JfiulfI082WJY1biwzGT5i85l6CRCMmi0J2QhzFjmLF0J405ybsmapQzqrD
	DSDuBgwDG8j4M77qltwzqF1EDgyBZ9S0qAAbvGz/8wVdjyLFiaGI4yrq8DOnIqIHc10uqeGXsxctU
	NvdUfjaXYjYDVrZPaA8G6UiprBDwhRi16Bp1tWJY55UG8hu9Et2eEi68/HzSEqngpXYo+RAPlRSe5
	d2oI38ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6n2-0000000Gsnr-4AFD;
	Mon, 17 Nov 2025 21:29:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6my-0000000GsmE-25PR
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 21:29:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mv-0001Sc-3H; Mon, 17 Nov 2025 22:29:29 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mu-000ybi-2t;
	Mon, 17 Nov 2025 22:29:28 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mu-00000000iB2-3TPp;
	Mon, 17 Nov 2025 22:29:28 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Nov 2025 22:29:25 +0100
Message-Id: <20251117-simplefb-fixup-v1-0-7824d99b3fb3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALWTG2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0Nz3eLM3IKc1LQk3bTMitICXeOktJTEFENLY1OLZCWgpoKiVKAE2MD
 o2NpaAM3TYhZgAAAA
X-Change-ID: 20251117-simplefb-fixup-3bfdad19358c
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=769;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=2SlBFeXF929wFqJ4yquJtG2H8JSHLrqonKnWYl6TuRU=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpG5O3RoF0JtoVuGek7kMl1tCm3Ynhs0SfS9PIO
 w21U+lXt9yJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaRuTtwAKCRC/aVhE+XH0
 qzD0EAC/scGo9ebGOclDpYlRoc01Q7c/sRwqNuCix4Zd9lajK6s7ij87l2oAnGAlGvxCkN7kPiO
 NgQKG5pTla3uhJQFi9ZwPh6pYyGSvCimRqseGvbvc1dl3N0gTRwGnJKMmVknMjWN2vqxiIkA3/u
 Z6okwEBU1nvY+F9qqWV6GLvVvgtdWi7KqK9yaXq8K35LM4Mw9Iav9EvgievrH/uvf8yZd86byCp
 vTYqBIktXqwbYwUjvY/kxM0l5ZRh0knqj77qJ0ArVh58Qd/tx3EeP4Pt0b3BP2bzZHMP6um1PKl
 6YJy3RMPpUegxqq2jqJpt8pjmQrqyf8VisOVZQnr3zEVgaFproUXpTFu9X6WUXCsQ8yf7TXIbl/
 CNuz+5pK51z+9eFy3QTxuFZSVshyCKlwD1Wa5grXMyVkpsr2BtRhY1R3kzgnuW/fegb+UP3jQPc
 ZRwuAi/dmQFjkVuKUhgwqw3styDB3bsGOrbLvn1LUsx2jyaaAEZAiKZkF3vt2g4RO4NQ+YWVI7X
 7jrg+6yDeRaFnl5tO+McrjOkt9dqqRNVkM68u8czikeYU5KXAgmYC8nwYvj5jw/Wvg9DoSgtZb7
 Q6SnrLkflzGoTVO+gMsewA7T3BaEZrxk7a43csaBHCy+CWlrqG3sffxJ5N97M/zyvkCzXO6RgIP
 oN4ILcx8axE2a0g==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_132932_543395_BBB3D22A 
X-CRM114-Status: UNSURE (   6.43  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] simplefb-fixup: fixes for 64bit systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series is containing fixes to hand over the simplefb to 64bit
systems.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
Michael Grzeschik (3):
      include: linux: ioport.h: port resource_set_range from linux
      simplefb-fixup: depend res fields on root size-cells and addr-cells
      simplefb-fixup: add reserved memory-region entry for the simple-framebuffer

 drivers/video/simplefb-fixup.c | 29 ++++++++++++++++++++---------
 include/linux/ioport.h         | 31 +++++++++++++++++++++++++++++++
 2 files changed, 51 insertions(+), 9 deletions(-)
---
base-commit: 6c85c9d60dd32b42a866aed522ff7e19211ef7d2
change-id: 20251117-simplefb-fixup-3bfdad19358c

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



