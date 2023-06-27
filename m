Delivery-date: Tue, 27 Jun 2023 07:54:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eX-005QaP-E7
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 07:54:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eV-0007ph-2I
	for lore@pengutronix.de; Tue, 27 Jun 2023 07:54:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aCfajXFZ3Fctq8hAAbiX8boYtZZr1hRSWPseQcYg/EQ=; b=SFvh9OxIzDaNHh
	CqtZMzqMD+37ZKPGrlpzXT6Q9K3Wy9PuuubwwvG9QyRK2PaUd2nWSMz35hG1VO6z27DyZa3ORkoxl
	TCLQ2l7qYQ/8fGVOGL0wir4PNN+PdgGNyy7Wn/z4p7hGxwFCeqSEwfAtzalb+FfOLyeZRv9C7W8OO
	VuxYJinYxWIalhzIy/e+hmHswE5xCTgQd/xrKL5mua23NOjwQzwrRHIrMkRLIFGk7UZjvLbaVMdBR
	yYmQvkpo7rPJEGlanLUVoOkkbdlvBrs78swW6rvWIqAd0h+L1u+0BGuZ4Jn5cK+Mx+tsw0cfwb2+2
	S6/lpfyPMZY9DSXjfFPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1d9-00ByGu-2Z;
	Tue, 27 Jun 2023 05:52:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1d6-00ByDZ-1C
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 05:52:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d3-0007LY-T7; Tue, 27 Jun 2023 07:52:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d3-00ANDG-9L; Tue, 27 Jun 2023 07:52:41 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d2-00GOsr-0v;
	Tue, 27 Jun 2023 07:52:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Jun 2023 07:52:32 +0200
Message-Id: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_225244_405326_B1BA0DB3 
X-CRM114-Status: GOOD (  15.49  )
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
Subject: [PATCH master v2 0/7] firmware: optionally turn missing firmware errors into warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

v1 -> v2:
   - mark firmware used for PBL as pbl-only (fixes unintended build
     error)
   - fix escape of newline character in firmware/Makefile
   - fix build failing even with CONFIG_MISSING_FIRMWARE_ERROR unset

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


Ahmad Fatoum (7):
  firmware: reference pointer alignment defined in
    <asm-generic/pointer.h>
  firmware: mark firmware used in PBL as pbl-only
  firmware: turn missing firmware into linker error
  firmware: optionally turn missing firmware errors into warnings
  ARM64: Rockchip: gracefully handle missing firmware
  ARM64: unset CONFIG_MISSING_FIRMWARE_ERROR for Rockchip/i.MX
  firmware: don't hardcode firmware paths in srctree for existence check

 arch/arm/configs/imx_v8_defconfig      |  1 +
 arch/arm/configs/multi_v8_defconfig    |  1 +
 arch/arm/configs/rockchip_v8_defconfig |  1 +
 arch/arm/mach-imx/Kconfig              | 49 -------------------
 arch/arm/mach-rockchip/Kconfig         |  6 ---
 firmware/Kconfig                       | 49 +++++--------------
 firmware/Makefile                      | 47 +++++++++++-------
 images/Makefile                        | 23 ++++++---
 images/Makefile.rockchip               | 68 +++++++++-----------------
 scripts/Makefile.lib                   |  3 ++
 10 files changed, 88 insertions(+), 160 deletions(-)

-- 
2.39.2



