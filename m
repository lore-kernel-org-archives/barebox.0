Delivery-date: Wed, 03 Jul 2024 18:59:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kp-001Eb4-11
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 18:59:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Km-0005Sa-TR
	for lore@pengutronix.de; Wed, 03 Jul 2024 18:59:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AQ4ZRFM2qyUEoFSbtVr3XNJVoBqBWrpacEna/m05y8o=; b=MsIjW5TQmHeVpc
	MUW0Jf2wlA8+n4svNoRqvY7Xgcbm0kivwh2f/V/cjWP6awXtq/Qmr2Rl6TE/KfLaBIVT3/4Hfw017
	wZ7qp80Wah1T8o2R3o5QEkeOinvmEBZkQGr6jGDd15DeP1uTSxSZfz/aaXkHrJrQbqe9mowLO0zIG
	MHRQcEbPWloYNkjlRGMluDCgiFlmLf+gU9y+Mr/fzvKCDDdn7wwNbB6D6ANL5S2ERn0nyYOrxqa5Y
	jzJfCSQNU1ECdOJLEeOp/cLogPdsR8q4P+xVYLPjdlH1Tfxjh6TbPQ9AxXBOolYaUgCwKho6nMlgj
	7ICOFbwOBa+dL+tbSrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3K5-0000000Av7O-0G4U;
	Wed, 03 Jul 2024 16:59:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3Jv-0000000Av21-02zX
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 16:59:08 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3Jr-0004uJ-8Y; Wed, 03 Jul 2024 18:58:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 18:58:28 +0200
Message-Id: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADSDhWYC/x3MTQqAIBBA4avErBuYfkzoKtEidKyByNCQIrp71
 u59m3dD5CAcoS9uCJwkit8ymrIAs0zbzCg2G2qqW9LUYPoKSSHh4Xcx6ORAnzis04W6s6rSnal
 sy5AXe2An578fxud5AWJZouduAAAA
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_095903_241720_063A4EE0 
X-CRM114-Status: UNSURE (   8.74  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/10] Add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

this series add the support to load FIT image supplied devicetree overlays.
The v1 of this series can be found here [1].
                                                                                                                                                       
The overlay loading wasn't coupled to bootm due to the following
reasons:
 - By making use of the common overlay handling we can specifiy a
   different/separate FIT image which provides only overlays.
 - It should be possible to apply FIT image overlay to the barebox
   live-tree (not implemented yet).
 - Loading a single overlay takes ~20ms (depending on the overlay size)
   if the same FIT image is used to supply the kernel, initrd,
   devicetree and devicetree-overlays. This is an improvement compared to
   the v1 of this series which required ~1sec.

Regards,
  Marco

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changes in v3:
- Link to v2: https://lore.barebox.org/barebox/20240613125818.30499-1-m.felsch@pengutronix.de/
- drop of.overlay.fitconfigpattern usage and make use of an match-fn
  instead
- fit_get_handle(): make use of strcmp
- open_fits: make it static
- fit_close(): use free unconditional

Changes in v2:
- Link to v1: https://lore.pengutronix.de/barebox/20240322164953.1772129-1-m.felsch@pengutronix.de/
- add caching

---
Marco Felsch (10):
      FIT: fix missing free in fit_open error path
      FIT: fit_open_configuration: add match function support
      of: overlay: make the pattern match function more generic
      of: overlay: make search dir/path more generic
      FIT: expose useful helpers
      of: overlay: add FIT overlay support
      of: overlay: drop unnecessary empty check in of_overlay_global_fixup_dir
      of: overlay: replace filename with an more unique name
      FIT: save filename during fit_open
      FIT: add support to cache opened fit images

 arch/arm/mach-layerscape/ppa.c |   2 +-
 common/bootm.c                 |  13 ++-
 common/image-fit.c             |  57 +++++++++--
 drivers/of/overlay.c           | 222 +++++++++++++++++++++++++++++++++--------
 include/image-fit.h            |  10 +-
 include/of.h                   |   3 +-
 6 files changed, 255 insertions(+), 52 deletions(-)
---
base-commit: bafdf4b35d777d159ac4058efc86d36622ce5ccf
change-id: 20240703-v2024-05-0-topic-fit-overlay-76d5176c1d4e

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



