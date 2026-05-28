Delivery-date: Thu, 28 May 2026 13:06:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYZK-004iVp-0X
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 13:06:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYZJ-0003SA-HP
	for lore@pengutronix.de; Thu, 28 May 2026 13:06:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z66k5+3QkFclQREyn/WmQGhFs2aUV3jBdOnhVXD0cWQ=; b=EysYnhsHTdjuOhiAtbHq1dv0Pr
	boH4OE7TTIkAWfcE1yshZERRQCUZwygoKuLq8UmuWDBmKuRPfhOVFaRtKYtzUjluaDQ2SV1yd9H2R
	8dTUoE//w4nY701MsccLqnZLHqigzdpO+EeJk0I6ugs2Xcw21ohE44MiQ42IdL+iXniNg73JGF6Lm
	FFOyn4wO0xVoX7ekBODoHTBoU6Du98Ki9rVdkIGIXBjZIq23pbAMQZaKnmBblWa9iyUneafNa395j
	unhNGulz0FS68IdSw8OpeU6ic0UtKESPSEKlIWrh9VzM+APG54bFjI6JgvVq3/9jbLGemxOMKW1Jf
	vG+FGWqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYX4-00000005dEx-3Rfb;
	Thu, 28 May 2026 11:04:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYWz-00000005dC3-2j1P
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 11:04:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYWx-0002xR-OR; Thu, 28 May 2026 13:04:03 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYWx-002G8o-0P;
	Thu, 28 May 2026 13:04:03 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYWx-0000000GSHZ-2VWV;
	Thu, 28 May 2026 13:04:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 28 May 2026 13:02:14 +0200
Message-ID: <20260528110401.3920904-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_040405_728827_98E66B72 
X-CRM114-Status: UNSURE (   9.09  )
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
Subject: [PATCH master v3 0/5] ARM64: unify pbl and proper malloc area start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current location used to place the very early PBL malloc area on
Rockchip overlaps the OP-TEE region. This series changes ARM64 to
make the start of the barebox proper malloc area easier to calculate and
uses that also for the PBL memory region.

v2: https://lore.barebox.org/barebox/20260527121649.3365172-1-a.fatoum@pengutronix.de/
v1: https://lore.barebox.org/barebox/20260522105852.2681680-1-a.fatoum@pengutronix.de/

v2 -> v3:
  - fix pbl_malloc_init() to start at malloc area start, not start of
    RAM 
v1 -> v2:
  - restrict to ARM64 only
  - make the offset from start of RAM instead of end (Sascha)

Ahmad Fatoum (5):
  arch: introduce new CONFIG_ARCH_HAS_MALLOC_SIZE
  arch: introduce CONFIG_BAREBOX_MEMORY_OFFSET
  ARM64: switch to CONFIG_BAREBOX_MEMORY_OFFSET
  ARM64: configs: drop CONFIG_MALLOC_SIZE=0x0 as it's now the default
  ARM64: place PBL malloc area at start of barebox proper malloc area

 arch/Kconfig                               | 19 ++++++++++
 arch/arm/Kconfig                           |  2 +
 arch/arm/configs/efi_v8_defconfig          |  1 -
 arch/arm/configs/imx_v8_defconfig          |  1 -
 arch/arm/configs/layerscape_defconfig      |  1 -
 arch/arm/configs/multi_v8_defconfig        |  1 -
 arch/arm/configs/rockchip_v8_defconfig     |  1 -
 arch/arm/configs/rpi_v8a_defconfig         |  3 +-
 arch/arm/configs/socfpga-agilex5_defconfig |  1 -
 arch/arm/configs/zynqmp_defconfig          |  1 -
 arch/arm/cpu/common.c                      |  5 +++
 arch/arm/cpu/start.c                       | 10 +++++
 arch/arm/cpu/uncompress.c                  |  4 ++
 arch/arm/include/asm/barebox-arm.h         | 10 +++--
 arch/arm/mach-rockchip/atf.c               |  2 +-
 arch/mips/Kconfig                          |  1 +
 arch/openrisc/Kconfig                      |  1 +
 arch/powerpc/Kconfig                       |  1 +
 arch/riscv/Kconfig                         |  1 +
 arch/sandbox/Kconfig                       |  1 +
 common/Kconfig                             | 43 +++++++++++++++++++++-
 common/memory.c                            |  7 ++++
 include/asm-generic/memory_layout.h        | 24 ++++++++++++
 include/linux/pagemap.h                    |  1 +
 24 files changed, 126 insertions(+), 16 deletions(-)

-- 
2.47.3



