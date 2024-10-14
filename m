Delivery-date: Mon, 14 Oct 2024 15:27:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L77-004Gtt-1o
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:27:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L76-0002Tm-Sw
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:27:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vxftbhyMGpsPB3EHIDCrgHMm1bZog9qHOImHOBAXrfY=; b=jCkJmVqN1im1ZLrwc/UIdw3BX+
	KrbR01ojU4jdBMoLItzuP48Jm/7qPu1vtE0eLW54W5FGxf3+PRcUzd/QmsoC5e0inY9ED4Clh6IkC
	JJaXvr0u6KwEDWg6AaylFQJWSugo+OATjcwJUm+xnO0qaA2w4CUXe3uY/cR2Sfdp7eVwO/Ay2jG7m
	lc4BlKmGDMWVNChpQbDJkYh7DeiSdPUgRDJ6c/qQ64HWn6SyuqNGGJ7ttBUwM8nkVfWcKyBIEtOwd
	BCS/HLtlzZdW2KWNoep0E1/6s5WhZt92Di0tnLbHL9SimD9RA8ia9bXMP6x4AO3pCjy0+iJerH1QI
	zXvtqq4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L6c-00000005Gga-3IEm;
	Mon, 14 Oct 2024 13:27:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JPv-00000004xfe-1svt
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:39:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-0000gU-5P
	for barebox@lists.infradead.org; Mon, 14 Oct 2024 13:39:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPt-001mRn-Op
	for barebox@lists.infradead.org; Mon, 14 Oct 2024 13:39:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPt-00BrES-2C
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 13:39:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 14 Oct 2024 13:38:59 +0200
Message-Id: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_043915_541413_E280A3BE 
X-CRM114-Status: GOOD (  10.99  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 00/13] Misc compile test fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I compile tested with ARCH=sandbox make allyesconfig and these are fixes
for the errors I ran into.

Given that a number of them may also affect other architectures and that
the changes are quite limited in scope, I suggest this is taken directly
to master.

Ahmad Fatoum (13):
  clk: add stub definition for of_clk_get_from_provider
  tee: add missing header for BIT macro definition
  tee: shm: include missing header for basprintf
  net: dsa: realtek: fix CONFIG_SANDBOX build
  pmdomain: imx8mp-blk-ctrl: add missing definition of ARRAY_SIZE
  PWM: rockchip: fix compile testing with CONFIG_SANDBOX
  watchdog: imxulp: drop unused include of asm/system.h
  include: import uapi/linux/kernel.h header from Linux
  usb: typec: fix compile test with CONFIG_SANDBOX
  bitops: fix missing defintion for DIV_ROUND_UP definitions
  mci: am654-sdhci: drop dummy redefinition of MMC_CAP2_HS200/400
  hw_random: fix compilation with 64-bit size_t
  optee: make OP-TEE OF fixup ARM-specific

 drivers/hw_random/omap-rng.c           |  2 +-
 drivers/mci/am654-sdhci.c              |  2 --
 drivers/net/realtek-dsa/realtek-mdio.c |  1 +
 drivers/net/realtek-dsa/rtl8365mb.c    |  2 ++
 drivers/net/realtek-dsa/rtl8366rb.c    |  1 +
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c |  1 +
 drivers/pwm/pwm-rockchip.c             |  1 +
 drivers/tee/optee/Kconfig              |  4 +++
 drivers/tee/optee/Makefile             |  2 +-
 drivers/tee/tee_shm.c                  |  1 +
 drivers/usb/typec/class.c              |  3 ++-
 drivers/watchdog/imxulp-wdt.c          |  1 -
 include/linux/align.h                  |  8 +++---
 include/linux/bitops.h                 | 10 ++++---
 include/linux/clk.h                    |  6 +++++
 include/linux/const.h                  | 24 +----------------
 include/linux/math.h                   |  2 +-
 include/linux/tee_drv.h                |  1 +
 include/uapi/linux/const.h             | 36 ++++++++++++++++++++++++++
 include/uapi/linux/kernel.h            |  7 +++++
 20 files changed, 78 insertions(+), 37 deletions(-)
 create mode 100644 include/uapi/linux/const.h
 create mode 100644 include/uapi/linux/kernel.h

-- 
2.39.5



