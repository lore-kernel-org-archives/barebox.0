Delivery-date: Mon, 11 Aug 2025 14:30:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfD-009KhO-1P
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulReu-0005w1-ME
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VOIYezTaZCjnTYb5fp9SapUUb1X2Xe7ACEBlk0C3wpM=; b=p2uTbKUKiOQqFUXDc0doaadYpI
	G6AzIzkzzzeQ6e1XhDjyi103XYeT61Nda984Qv/BvJoOT5PFqPl3wrXIb0tCEE7mnYOkBDqk00plD
	zGlnPOH3ZOshJe+MOL1dy/fcyLYkq8QYvL11YG7Fgxu/F0eFlFzKw90hvpGG/tsqgH9/nso5so3Ds
	XQSzN1ZPNE9VOOPdK4X2xc9q+91Coq19KakP1jTSKotm7LH5V4WGBIf/E+DetTgh0nEuV7qvb+vP5
	iX5O90cf2aZs/do+Xjr4bdT5HtcHuUs90lquNzsw6qnybdROLEAZiT7xPEFlPFXhWObr5kkcsF3qs
	EWleXZ6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdo-00000007djX-3FJc;
	Mon, 11 Aug 2025 12:28:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dVp-2Kip
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRda-0004WP-On
	for barebox@lists.infradead.org; Mon, 11 Aug 2025 14:28:26 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 14:27:40 +0200
Message-Id: <20250811122824.1667791-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052830_898726_A3FCB75E 
X-CRM114-Status: GOOD (  20.98  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/44] commands: add bfetch/buds of command redirection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Inspired by U-Boot's addition of the ufetch command and the neofetch
utility for Linux, add a similar command to barebox.

The command is meant to fancily show off a barebox port with some
colored ASCII art. The usual alternative is a screenshot of a barebox
boot up and prompt, which doesn't look fancy, because a first port nearly
always contains some warning/error messages (e.g. because there is no
bootsource available and net boot is unconfigured). Example:

https://raw.githubusercontent.com/a3f/a3f.github.io/refs/heads/master/img/bfetch.png

This series also includes an abnormal amount of Yakshaving.

Understandably, we need to export a lot of helpers and lists for bfetch
to be able to enumerate what features are available at runtime.

For some things like what CPU we are running on, what uptime we have or
what's the TEE's implementation ID, we readily have code that prints
to stdout, but it is not reusable because we do not buffer console
output streams and thus no command output capture or piping support.

But even if we had piping, we would need to manipulate strings to split
lines into key/value pairs.

Instead, let's rethink the problem: We have commands like cpuinfo, which
format a table with key/value pairs and print it to out. Then the UNIX
way would be to use awk/grep/sed/perl or whatever to separate them out
again.

Why not skip that and have commands directly return an object
with key/value pairs (attributes) or more complex data structures
like PowerShell is able to do?

This series does exactly that. Device parameters are now associated
with a struct bobject and that bobject can be returned and consumed
by commands without requiring association with a device.

This mechanism should be able to bring support for the pipe operator
to barebox' shell once the critical commands are adapted to use it and
there exists a way for commands to report whether they support
structured I/O or not. As I am still figuring out how to do that,
I did not include a command that captures structured output to
a variable, but that would follow in future.

Ahmad Fatoum (44):
  driver: move device name definition into device.h
  driver: introduce common struct bobject
  lib: param: rename dev_remove_param to param_remove
  param: implement dev_remove_parameters using param_remove
  lib: param: add dev_for_each_param helpers
  driver: initialize device parameters as part of bobject
  param: operate on bobjects instead of full devices
  commands: version: print value of CONFIG_NAME
  treewide: populate CONFIG_NAME for all configs in-tree
  test: py: change barebox_config from set to dict
  test: add heuristic for guessing labgrid environment YAML
  usb: drop dead iSerialNumber parameter addition
  drivers: use dev_add_param_uint32_fixed for IDs
  param: make bobject_add_param_fixed variadic
  param: handle NULL gracefully in bobject_get_param
  common: introduce structured I/O
  ARM: cpuinfo: support structio output
  commands: uptime: enable structured I/O
  string: implement strv_length helper
  ARM: psci: client: add PSCI version/method parameters
  net: move netmask_to_prefix into header
  stringlist: implement string_list_empty
  optee: add revision info to tee devinfo output
  tee: enable structured I/O in devinfo handler
  mtd: add devices to new mtd class
  nvmem: add devices to new nvmem class
  nvmem: export functions to query NVMEM size
  video: add devices to new fb class
  security: blobgen: add easy way to check for existent providers
  pmdomain: add easy way to check for provider support
  bbu: add easy way to check for existent providers
  firmware: add easy way to check for existent providers
  rtc: export rtc_class in header
  driver: featctrl: export of_feature_controllers
  net: dsa: export dsa_switch_list
  usb: export usb_host_list
  pstore: export pstore_is_ready
  pinctrl: export pinctrl_list
  clk: implement clk_have_nonfixed_providers
  driver: bus: export get_bus_by_name
  fimware: arm_scmi: export scmi_list
  block: define BLK_TYPE_COUNT as last enum blk_type value
  commands: introduce bfetch command
  configs: enable bfetch in some popular defconfigs

 arch/arm/boards/animeo_ip/init.c              |   4 +-
 arch/arm/boards/at91sam9m10ihd/hw_version.c   |  10 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c     |  10 +-
 arch/arm/configs/am335x_mlo_defconfig         |   1 +
 .../arm/configs/am35xx_pfc200_xload_defconfig |   1 +
 arch/arm/configs/animeo_ip_defconfig          |   1 +
 arch/arm/configs/at91_multi_defconfig         |   1 +
 arch/arm/configs/at91rm9200ek_defconfig       |   1 +
 arch/arm/configs/at91sam9260ek_defconfig      |   1 +
 .../configs/at91sam9261ek_bootstrap_defconfig |   1 +
 arch/arm/configs/at91sam9261ek_defconfig      |   1 +
 arch/arm/configs/at91sam9g10ek_defconfig      |   1 +
 arch/arm/configs/at91sam9g20ek_defconfig      |   1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig   |   1 +
 arch/arm/configs/at91sam9m10ihd_defconfig     |   1 +
 arch/arm/configs/at91sam9n12ek_defconfig      |   1 +
 arch/arm/configs/clps711x_defconfig           |   1 +
 arch/arm/configs/dss11_defconfig              |   1 +
 arch/arm/configs/haba_knx_lite_defconfig      |   1 +
 arch/arm/configs/imx23_defconfig              |   1 +
 arch/arm/configs/imx28_defconfig              |   1 +
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/configs/imx_v8_defconfig             |   1 +
 arch/arm/configs/k3-r5_defconfig              |   1 +
 arch/arm/configs/kindle-mx50_defconfig        |   1 +
 arch/arm/configs/layerscape_defconfig         |   1 +
 arch/arm/configs/layerscape_v7_defconfig      |   1 +
 arch/arm/configs/multi_v5_v6_defconfig        |   1 +
 arch/arm/configs/multi_v7_defconfig           |   2 +
 arch/arm/configs/multi_v8_defconfig           |   2 +
 arch/arm/configs/mvebu_defconfig              |   1 +
 arch/arm/configs/omap_defconfig               |   1 +
 arch/arm/configs/pm9261_defconfig             |   1 +
 arch/arm/configs/pm9263_defconfig             |   1 +
 arch/arm/configs/pm9g45_defconfig             |   1 +
 arch/arm/configs/qil_a9260_defconfig          |   1 +
 arch/arm/configs/qil_a9g20_defconfig          |   1 +
 arch/arm/configs/rockchip_v7a_defconfig       |   1 +
 arch/arm/configs/rockchip_v8_defconfig        |   1 +
 arch/arm/configs/rpi_defconfig                |   1 +
 arch/arm/configs/rpi_v8a_defconfig            |   1 +
 arch/arm/configs/socfpga-arria10_defconfig    |   1 +
 arch/arm/configs/socfpga-xload_defconfig      |   1 +
 arch/arm/configs/socfpga_defconfig            |   1 +
 arch/arm/configs/stm32mp_defconfig            |   1 +
 arch/arm/configs/tegra_v7_defconfig           |   1 +
 arch/arm/configs/telit_evk_pro3_defconfig     |   1 +
 arch/arm/configs/tny_a9260_defconfig          |   1 +
 .../arm/configs/tny_a9263_bootstrap_defconfig |   1 +
 arch/arm/configs/tny_a9263_defconfig          |   1 +
 arch/arm/configs/tny_a9g20_defconfig          |   1 +
 arch/arm/configs/usb_a9260_defconfig          |   1 +
 .../arm/configs/usb_a9263_bootstrap_defconfig |   1 +
 arch/arm/configs/usb_a9263_defconfig          |   1 +
 arch/arm/configs/usb_a9g20_defconfig          |   1 +
 arch/arm/configs/zii_vf610_dev_defconfig      |   1 +
 arch/arm/configs/zynq_defconfig               |   1 +
 arch/arm/configs/zynqmp_defconfig             |   1 +
 arch/arm/cpu/cpuinfo.c                        |  47 +-
 arch/arm/cpu/psci-client.c                    |  17 +-
 arch/kvx/configs/generic_defconfig            |   1 +
 arch/mips/configs/ath79_defconfig             |   1 +
 arch/mips/configs/bcm47xx_defconfig           |   1 +
 arch/mips/configs/gxemul-malta_defconfig      |   1 +
 arch/mips/configs/loongson-ls1b_defconfig     |   1 +
 arch/mips/configs/qemu-malta_defconfig        |   1 +
 arch/mips/configs/xburst_defconfig            |   1 +
 arch/openrisc/configs/generic_defconfig       |   1 +
 arch/powerpc/configs/owc_da923rc_defconfig    |   1 +
 arch/powerpc/configs/p1010rdb_defconfig       |   1 +
 arch/powerpc/configs/p1022ds_defconfig        |   1 +
 arch/powerpc/configs/p2020rdb_defconfig       |   1 +
 arch/powerpc/configs/pcm030_defconfig         |   1 +
 arch/riscv/configs/erizo_generic_defconfig    |   1 +
 arch/riscv/configs/litex_linux_defconfig      |   1 +
 arch/riscv/configs/rv64i_defconfig            |   2 +
 arch/riscv/configs/virt32_defconfig           |   2 +
 arch/sandbox/configs/hosttools_defconfig      |   1 +
 arch/sandbox/configs/sandbox_defconfig        |   2 +
 arch/sandbox/configs/targettools_defconfig    |   1 +
 arch/x86/configs/efi_defconfig                |   1 +
 commands/Kconfig                              |  11 +
 commands/Makefile                             |   1 +
 commands/bfetch.c                             | 752 ++++++++++++++++++
 commands/devinfo.c                            |   2 +-
 commands/ip.c                                 |  13 -
 commands/uptime.c                             |  34 +-
 commands/varinfo.c                            |   2 +-
 commands/version.c                            |   5 +-
 common/Kconfig                                |  16 +
 common/Makefile                               |   1 +
 common/bbu.c                                  |   8 +
 common/complete.c                             |   2 +-
 common/console.c                              |  11 +-
 common/firmware.c                             |   8 +-
 common/globalvar.c                            |  22 +-
 common/partitions/dos.c                       |   2 +-
 common/partitions/efi.c                       |   2 +-
 common/structio.c                             |  56 ++
 conftest.py                                   |  47 ++
 drivers/base/bus.c                            |   3 +-
 drivers/base/driver.c                         |  37 +-
 drivers/base/featctrl.c                       |   2 +-
 drivers/base/power.c                          |   5 +
 drivers/clk/clk-fixed.c                       |   7 +
 drivers/clk/clk-fixed.h                       |  11 +
 drivers/clk/clk.c                             |  14 +
 drivers/efi/efi-device.c                      |   4 +-
 drivers/firmware/arm_scmi/driver.c            |   2 +-
 drivers/mfd/superio.c                         |   7 +-
 drivers/mtd/core.c                            |   4 +
 drivers/net/dsa.c                             |   4 +
 drivers/nvmem/core.c                          |  22 +-
 drivers/pci/bus.c                             |  16 +-
 drivers/pinctrl/pinctrl.c                     |   2 +-
 drivers/tee/optee/smc_abi.c                   |  16 +-
 drivers/tee/tee_core.c                        |  25 +-
 drivers/usb/core/usb.c                        |  16 +-
 drivers/video/fb.c                            |   4 +
 drivers/w1/w1.c                               |  10 +-
 fs/fs.c                                       |   3 +-
 fs/pstore/platform.c                          |   5 +
 include/bbu.h                                 |   7 +
 include/blobgen.h                             |   7 +
 include/block.h                               |   1 +
 include/bobject.h                             |  48 ++
 include/device.h                              |  39 +-
 include/driver.h                              |  20 -
 include/dsa.h                                 |   4 +
 include/fb.h                                  |   2 +
 include/featctrl.h                            |   2 +
 include/linux/clk.h                           |   9 +
 include/linux/device/bus.h                    |   1 +
 include/linux/mtd/mtd.h                       |   2 +
 include/linux/nvmem-consumer.h                |  18 +-
 include/linux/pinctrl/consumer.h              |   3 +
 include/linux/pstore.h                        |   5 +
 include/linux/rtc.h                           |   3 +
 include/linux/scmi_protocol.h                 |   2 +
 include/linux/string_choices.h                |  18 +
 include/linux/usb/usb.h                       |   1 +
 include/net.h                                 |  13 +
 include/param.h                               | 210 +++--
 include/pm_domain.h                           |   6 +
 include/string.h                              |   7 +
 include/stringlist.h                          |  11 +
 include/structio.h                            |  44 +
 lib/Makefile                                  |   1 +
 lib/bobject.c                                 |  74 ++
 lib/parameter.c                               | 214 ++---
 lib/string.c                                  |  17 +
 security/blobgen.c                            |  18 +-
 test/py/helper.py                             |  46 +-
 153 files changed, 1834 insertions(+), 402 deletions(-)
 create mode 100644 commands/bfetch.c
 create mode 100644 common/structio.c
 create mode 100644 drivers/clk/clk-fixed.h
 create mode 100644 include/bobject.h
 create mode 100644 include/linux/string_choices.h
 create mode 100644 include/structio.h
 create mode 100644 lib/bobject.c

-- 
2.39.5



