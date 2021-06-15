Delivery-date: Tue, 15 Jun 2021 18:46:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCCo-0002Nw-UR
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 18:46:26 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCCn-0004HI-9Q
	for lore@pengutronix.de; Tue, 15 Jun 2021 18:46:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WwX3qsBFC36Q0XQL0PyoDqkdzII15Pzxy7jsfUaspMA=; b=ptNy5oqqTEpvA8
	ltGEBYVMid2iACFpK4XfdUrkW/yFTRwVH75vcKETA7BNkuudxU1MJTci0lf7p6dXGPmi7/UoLroLN
	eJJLW/+TlrylxZUeWjjF7fGSfX8SbXNpEYE3fYSW7af7mniQxqmahiSWVyhvySrC358O4uggw3Eiw
	NYXPQu7NmjVK7xie0lfzPdKyoauCERWvO9xtEywDE+V/0bxGAs6Z0n6v9Ew1Na4l62RHgYhXcMgim
	FB0mh+dK37sXN00VN4lVN6AXqQwVErXy35B2V7xAsEfIDB8hN5u7nsDcs3vLMq1oyKPAifNKIK55b
	rBFJXBT85/NgLkdWnpEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltC70-001Qi7-6x; Tue, 15 Jun 2021 16:40:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9rz-000WJj-Nj
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=dMTZJcFrJPVihRMUg9d0ciy2II2j6taMRce3c/pQrE0=; b=FrA1RXXTY9QyUA3hiIWjFV3wIM
 /laqDLHOgAXBsTNxK7i+H4rCXKkBe6cTdCALeU0cRJ4ygOUb6CUo/a++6BaONSyz8Ct9xUjZBF1mp
 mz5V2tZLT23T82xzMxm7xAMR5PmFZkfD+n/wn4wBA4m/60zcwQEmdpfG+SLSydl+OkQycahWpUCyp
 ZvRl3TfWUhhvreymd6WD0W5+M1Rz74rykRdkkYSVmZg4tFd8UIGx5a1da9BI37a3YkfCAm2pv0Ohz
 vgSbRN3HEH7SOQ5br0Wf+sCDv6wdiD7wBvZBHS7mvLmRFesM2MeW6Iy+lUGPuLRtTGMTrNOs+1yTW
 TNHB+S/Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9ro-007zrz-TD
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:16:46 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0000uA-Sl; Tue, 15 Jun 2021 16:16:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0001Be-F6; Tue, 15 Jun 2021 16:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 16:16:30 +0200
Message-Id: <20210615141641.31577-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_151644_126492_D655674F 
X-CRM114-Status: GOOD (  13.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/11] Rockchip RK3568 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After I have posted the drivers for the Rockchip RK3568 separately here
comes the SoC support and support for the RK3568 EVB board. With this
series the RK3568 EVB board is supported including network support, SD
and eMMC, so everything needed to start up with that hardware. The board
also needs some binary files which I just found publically available
in the rkbin repository at https://github.com/rockchip-linux/rkbin.
Unfortunately the BL32 firmware doesn't come up here with these files,
this needs further investigation. This shouldn't prevent us from merging
the board and SoC support though, so here it is.

Sascha

Sascha Hauer (11):
  clk: Add clk_name_* functions
  clk: rockchip rk3568: Initialize clocks
  filetype: Add Rockchip boot image type
  ARM: Rockchip: Add rkimage tool
  ARM: Add relocate_to_adr_full()
  ARM: Rockchip: Add rk3568 dtsi files
  ARM: Rockchip: Add rk3568 support
  ARM: Add atf common support
  ARM: rockchip: Add bootm handler for RKNS images
  ARM: Rockchip: Add rk3568 evb board support
  Add rockchip_v8_defconfig

 Documentation/boards/rockchip.rst             |   39 +
 arch/arm/Kconfig                              |    6 +-
 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/rockchip-rk3568-evb/Makefile  |    2 +
 arch/arm/boards/rockchip-rk3568-evb/board.c   |   36 +
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c |   47 +
 arch/arm/configs/rockchip_v8_defconfig        |  120 +
 arch/arm/cpu/Makefile                         |    1 +
 arch/arm/cpu/atf.c                            |   80 +
 arch/arm/cpu/setupc_64.S                      |   13 +-
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/rk3568-evb1-v10.dts              |  487 +++
 arch/arm/dts/rk3568-pinctrl.dtsi              | 3111 +++++++++++++++++
 arch/arm/dts/rk3568.dtsi                      |  885 +++++
 arch/arm/dts/rockchip-pinconf.dtsi            |  344 ++
 arch/arm/include/asm/atf_common.h             |  163 +
 arch/arm/include/asm/barebox-arm.h            |    1 +
 arch/arm/mach-rockchip/Kconfig                |   18 +
 arch/arm/mach-rockchip/Makefile               |    5 +-
 arch/arm/mach-rockchip/atf.c                  |   57 +
 arch/arm/mach-rockchip/bootm.c                |  116 +
 arch/arm/mach-rockchip/include/mach/atf.h     |   18 +
 arch/arm/mach-rockchip/include/mach/bbu.h     |   14 +
 .../arm/mach-rockchip/include/mach/debug_ll.h |    8 +
 .../mach-rockchip/include/mach/rk3568-regs.h  |   18 +
 .../arm/mach-rockchip/include/mach/rockchip.h |   11 +
 arch/arm/mach-rockchip/rk3568.c               |  176 +
 arch/arm/mach-rockchip/rockchip.c             |    2 +
 commands/clk.c                                |   18 +-
 common/Kconfig                                |   10 +-
 common/filetype.c                             |    3 +
 drivers/clk/clk.c                             |   22 +
 drivers/clk/rockchip/clk-rk3568.c             |   28 +
 firmware/Makefile                             |    2 +-
 images/Makefile.rockchip                      |   10 +
 include/bootsource.h                          |    1 +
 include/filetype.h                            |    1 +
 include/linux/clk.h                           |    4 +
 scripts/Makefile                              |    3 +
 scripts/rkimage.c                             |  260 ++
 40 files changed, 6117 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/Makefile
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/board.c
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
 create mode 100644 arch/arm/configs/rockchip_v8_defconfig
 create mode 100644 arch/arm/cpu/atf.c
 create mode 100644 arch/arm/dts/rk3568-evb1-v10.dts
 create mode 100644 arch/arm/dts/rk3568-pinctrl.dtsi
 create mode 100644 arch/arm/dts/rk3568.dtsi
 create mode 100644 arch/arm/dts/rockchip-pinconf.dtsi
 create mode 100644 arch/arm/include/asm/atf_common.h
 create mode 100644 arch/arm/mach-rockchip/atf.c
 create mode 100644 arch/arm/mach-rockchip/bootm.c
 create mode 100644 arch/arm/mach-rockchip/include/mach/atf.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/bbu.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/rk3568-regs.h
 create mode 100644 arch/arm/mach-rockchip/rk3568.c
 create mode 100644 scripts/rkimage.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

