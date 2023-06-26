Delivery-date: Mon, 26 Jun 2023 17:35:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDoFI-004fKr-QK
	for lore@lore.pengutronix.de; Mon, 26 Jun 2023 17:35:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDoFG-0006RF-GB
	for lore@pengutronix.de; Mon, 26 Jun 2023 17:35:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tqaSes4N1XOUDy3tKEvrrieBNeScpFTwnpDG1JxmBTc=; b=Z7oFmD08DzmJKF
	ER2j4B3jJuRPyDHVFt7C4khHeEPmx0H30zf+ZoTLgTR9AVQT50q2DwuUvO/58wwEUJt4qXO8nFDgW
	82dVo9DRHqTEWJbzMFXIEXLovexS8TEoK7fAXLHX6Ju2ioCPIXkunzuZ87TO6aGBcYW1zEo5CK1mw
	1pzoMKllYRCvdFJJ6lc7wxb16WspeHHerB3lHDmnIj+091X+OH11EBMFgxLYLlb7ozAh0uOegTGWF
	MKKQFOCz73B9hH/cnhrqdpVswd8qgxu68nSqenBLVkRmaY537yMqaxjz6skqN0oVHwwOvJlWVIShy
	A2atGmWt3i8omPRnmV9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDoDz-00AV0O-2H;
	Mon, 26 Jun 2023 15:33:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDoDw-00AUyU-29
	for barebox@lists.infradead.org;
	Mon, 26 Jun 2023 15:33:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoDq-0005xw-IO; Mon, 26 Jun 2023 17:33:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoDp-00AF84-Tb; Mon, 26 Jun 2023 17:33:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoDp-00F5Nf-2K;
	Mon, 26 Jun 2023 17:33:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 26 Jun 2023 17:33:30 +0200
Message-Id: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_083352_707236_2EFDB298 
X-CRM114-Status: GOOD (  14.52  )
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
Cc: uol@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v1 0/6] firmware: optionally turn missing firmware errors into warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many of the ARMv8 defconfigs can require firmware external to barebox
for proper operation: TF-A as BL31, DDR PHY firmware, SDRAM setup
or OP-TEE. This led to defconfigs that fail to build by default
unless the user installs the firmware files into the firmware directory.

While this worked for the SoC-specific defconfigs, it's really annoying
for the multi_v8_defconfig:

  - The user will need to install firmware even for unrelated
    platforms

  - Some platforms like e.g. qemu-virt64, which need no firmware to
    be compiled into barebox, can't be built just by using the
    defconfig

For v2023.06.0, this was resolved by disabling boards that lack firmware
through hiding their Kconfig symbol. This has a few shortcomings:

  - Firmware is looked up relative to source tree and can't take
    CONFIG_EXTRA_FIRMWARE_DIR into account that early

  - Firmware needs to exist at configure stage, which breaks
    build system recipes that install firmware after configure
    stage

  - menuconfig e.g. in Yocto's cml1.bbclass doesn't take make options
    into account that are otherwise used for olddefconfig and build

This series resolves the underlying issue differently: We record
whether firmware is missing and just continue the build till the end
at which time the build would succeed (with warnings) if new option
CONFIG_MISSING_FIRMWARE_ERROR was unset.

In any case, barebox images which contain firmware in their PBL
that's not available will be marked specially to reduce the risk
of accidentally putting them to use:

  * They're truncated to zero size

  * The final "images built:" section marks them as having firmware
    missing, e.g.  ** firmware missing for barebox-rk3568-bpi-r2pro.img**

  * They are omitted from the listing in the barebox-flash-images file

  * Each barebox-broken.img is accompanied with a
    barebox-broken.img.missing-firmware containing a newline delimited
    list of missing firmware images

Ahmad Fatoum (6):
  firmware: reference pointer alignment defined in
    <asm-generic/pointer.h>
  firmware: turn missing firmware into linker error
  firmware: optionally turn missing firmware errors into warnings
  ARM: Rockchip: gracefully handle missing firmware
  ARM64: unset CONFIG_MISSING_FIRMWARE_ERROR for Rockchip/i.MX
  firmware: don't hardcode firmware paths in srctree for existence check

 arch/arm/configs/imx_v8_defconfig      |  1 +
 arch/arm/configs/multi_v8_defconfig    |  1 +
 arch/arm/configs/rockchip_v8_defconfig |  1 +
 arch/arm/mach-imx/Kconfig              | 49 -------------------
 arch/arm/mach-rockchip/Kconfig         |  6 ---
 firmware/Kconfig                       | 49 +++++--------------
 firmware/Makefile                      | 18 +++++--
 images/Makefile                        | 23 ++++++---
 images/Makefile.rockchip               | 68 +++++++++-----------------
 scripts/Makefile.lib                   |  3 ++
 10 files changed, 73 insertions(+), 146 deletions(-)

-- 
2.39.2



