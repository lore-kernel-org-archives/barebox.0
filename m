Delivery-date: Sun, 20 Feb 2022 13:49:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlep-004wui-WE
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlem-0001On-HL
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R2gYqE3bdrEtzF8j+An0S51h2CLE5wvQor40+HMt8ZA=; b=Du+vDKePWcj0Pu
	9FnH5j2TpDUdJRHKBm7S8OXMxNQsGI1SfQzk+/RWsCr3BTMf6IYMyPix/1GgRxp7n1XfphA2pTc8J
	qi3sViCq8I9MaktQ90BGNF4va7EY1B1+7oT0fUzshG0quyyts+73teT8rJ/HV86lhRp29VihyYXPk
	41g1m+iv5hO0NlqrbsmqL9q40v93E3RUvgPYtM4eOMryg8w4ExWRqS5jrlW1BHY81v+XubWLa/bYw
	1Lp41hMxYGoqljGHXqbU9axP4cRd26fJKIMPp5itHNHexnoxlbfps084RRR5lE5Z4obWW4AD1COnM
	BVrkUgs+QmEByBAIpsFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldI-001I9s-P8; Sun, 20 Feb 2022 12:48:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I0o-LC
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000Zs-4E; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcq-00CoPI-SO; Sun, 20 Feb 2022 13:47:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>
Date: Sun, 20 Feb 2022 13:47:12 +0100
Message-Id: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044746_779103_0B2D0E99 
X-CRM114-Status: GOOD (  14.48  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/24] ARM: stm32mp: add trusted bootchain (SCMI&FIP) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ST calls trusted firmware + SCMI for accessing some secure resources the
trusted boot chain (as opposed to the basic bootchain). This is
independent of cryptographically secured boot. So far, barebox generated
images with a STM32 header prepended, which could be booted after
upstream TF-A. This extends barebox to generate an extra image suitable
for inclusion in A TF-A Firmware Image Package and teaches barebox to
support firmware clocks and resets provided by TF-A over secure monitor
calls. There are no upstream DTs yet with SCMI and intention seems to be
to have boot firmware fix up the nodes. The SCMI changes here have been
tested by taking OpenSTLinux with its downstream TF-A, U-Boot, OP-TEE
and Linux components and just replacing U-Boot with barebox via fiptool
update.

Cheers,
Ahmad Fatoum (24):
  PBL: fdt: factor reg property parsing into helper
  pinctrl: stm32: use gpio-ranges instead of alias
  ARM: stm32mp: simplify with build_stm32mp_image macro
  ARM: stm32mp: change stm32image extension to .stm32
  filetype: detect TF-A Firmware Image Packages (FIP)
  scripts: add tool to adjust bl33 load address in existing FIP
  ARM: stm32mp: build extra barebox-stm32mp-generic-bl33.img
  ARM: stm32mp: ddrctrl: fix wrong register field widths
  reset: stm32: drop stm32mp1_reset_ops indirection
  reset: move stm32 reset code to drivers/power/reset
  ARM: smccc: sync header with upstream
  firmware: import Linux v5.13 SCMI support
  reset: add SCMI support
  clk: add SCMI clock driver
  regulator: add SCMI regulator driver
  clk: accept const arguments in clk_to_clk_hw/clk_hw_to_clk
  serial: stm32: bail if clock_get_rate returns zero
  clk: implement of_clk_hw_{onecell,simple}_get
  clk: implement clk_hw_reparent
  reset: add support for reset_control_status
  clk: stm32mp1: sync with Linux v5.17-rc1
  regulator: core: fall back to node name if no regulator-name property
  ARM: dts: stm32mp: remove regulator-name override in stm32mp151.dtsi
  ARM: stm32mp: enable more config options

 Documentation/boards/stm32mp.rst              |   74 +-
 arch/arm/configs/stm32mp_defconfig            |    8 +-
 arch/arm/dts/stm32mp151.dtsi                  |   16 -
 arch/arm/include/asm/opcodes-sec.h            |   17 +
 arch/arm/mach-stm32mp/Kconfig                 |    6 +-
 arch/arm/mach-stm32mp/Makefile                |    1 +
 arch/arm/mach-stm32mp/bl33-generic.c          |   24 +
 arch/arm/mach-stm32mp/ddrctrl.c               |   10 +-
 common/filetype.c                             |    4 +
 drivers/base/driver.c                         |   28 +
 drivers/clk/Kconfig                           |   11 +
 drivers/clk/Makefile                          |    1 +
 drivers/clk/clk-scmi.c                        |  192 +++
 drivers/clk/clk-stm32mp1.c                    |  886 ++++++++----
 drivers/clk/clk.c                             |   22 +
 drivers/firmware/Kconfig                      |   10 +
 drivers/firmware/Makefile                     |    1 +
 drivers/firmware/arm_scmi/Makefile            |   10 +
 drivers/firmware/arm_scmi/base.c              |  281 ++++
 drivers/firmware/arm_scmi/bus.c               |  226 +++
 drivers/firmware/arm_scmi/clock.c             |  374 +++++
 drivers/firmware/arm_scmi/common.h            |  333 +++++
 drivers/firmware/arm_scmi/driver.c            | 1279 +++++++++++++++++
 drivers/firmware/arm_scmi/reset.c             |  229 +++
 drivers/firmware/arm_scmi/shmem.c             |   89 ++
 drivers/firmware/arm_scmi/smc.c               |  137 ++
 drivers/firmware/arm_scmi/voltage.c           |  379 +++++
 drivers/pinctrl/pinctrl-stm32.c               |   14 +-
 drivers/power/reset/Kconfig                   |    7 +
 drivers/power/reset/Makefile                  |    1 +
 .../reset/stm32-reboot.c}                     |  143 +-
 drivers/regulator/Kconfig                     |    9 +
 drivers/regulator/Makefile                    |    1 +
 drivers/regulator/core.c                      |    2 +
 drivers/regulator/scmi-regulator.c            |  391 +++++
 drivers/reset/Kconfig                         |   17 +-
 drivers/reset/Makefile                        |    2 +-
 drivers/reset/core.c                          |   21 +
 drivers/reset/reset-scmi.c                    |  130 ++
 drivers/reset/reset-simple.c                  |    3 +-
 drivers/serial/serial_stm32.c                 |    2 +
 images/Makefile.stm32mp                       |   59 +-
 include/driver.h                              |    8 +
 include/filetype.h                            |    1 +
 include/linux/arm-smccc.h                     |  363 ++++-
 include/linux/clk.h                           |   33 +-
 include/linux/idr.h                           |   79 +
 include/linux/processor.h                     |   29 +
 include/linux/reset-controller.h              |    2 +
 include/linux/reset.h                         |    6 +
 include/linux/scmi_protocol.h                 |  654 +++++++++
 include/linux/slab.h                          |    3 +
 include/soc/stm32/reboot.h                    |   16 +
 pbl/fdt.c                                     |   23 +-
 scripts/fiptool_fwconfig                      |   39 +
 55 files changed, 6218 insertions(+), 488 deletions(-)
 create mode 100644 arch/arm/include/asm/opcodes-sec.h
 create mode 100644 arch/arm/mach-stm32mp/bl33-generic.c
 create mode 100644 drivers/clk/clk-scmi.c
 create mode 100644 drivers/firmware/arm_scmi/Makefile
 create mode 100644 drivers/firmware/arm_scmi/base.c
 create mode 100644 drivers/firmware/arm_scmi/bus.c
 create mode 100644 drivers/firmware/arm_scmi/clock.c
 create mode 100644 drivers/firmware/arm_scmi/common.h
 create mode 100644 drivers/firmware/arm_scmi/driver.c
 create mode 100644 drivers/firmware/arm_scmi/reset.c
 create mode 100644 drivers/firmware/arm_scmi/shmem.c
 create mode 100644 drivers/firmware/arm_scmi/smc.c
 create mode 100644 drivers/firmware/arm_scmi/voltage.c
 rename drivers/{reset/reset-stm32.c => power/reset/stm32-reboot.c} (53%)
 create mode 100644 drivers/regulator/scmi-regulator.c
 create mode 100644 drivers/reset/reset-scmi.c
 create mode 100644 include/linux/idr.h
 create mode 100644 include/linux/processor.h
 create mode 100644 include/linux/scmi_protocol.h
 create mode 100644 include/soc/stm32/reboot.h
 create mode 100755 scripts/fiptool_fwconfig

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

