Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSbFn-0004EN-8D
 for barebox@lists.infradead.org; Wed, 14 Oct 2020 07:31:20 +0000
Date: Wed, 14 Oct 2020 09:31:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201014073116.GC13710@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2020.10.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released barebox-2020.10.0. The last releases were relatively
small, now here comes a bigger one.
Finally this release has Fastboot over ethernet support. On the host
side this feels like regular fastboot over USB, just with specifying
a device with udp:<hostname>[:port] instead of a USB device. On barebox
side this is the first time we actively wait for an incoming connection
in the background. This means that network packets are now received in a
poller. This may cause sluggish behaviour when a network driver doesn't
return immediately when there are no packets available in the receive
function. Check out and report if necessary. A nice side effect though
is that barebox now answers incoming ping requests.
Bugs like use-after-free or out of bounds memory accesses used to be a
pain to track down, so I am happy to say that we now have KASan support
for ARM and ARM64. KASan makes finding such bugs very easy, so check
out.

As usual for a full list of patches see below.

Have Fun!
  Sascha


----------------------------------------------------------------
Ahmad Fatoum (40):
      video: ipuv3: parallel-display: support of_graph binding
      video: simple-panel: don't error out on unhandled ioctl command
      mfd: stpmic1: warn if reset reason detection fails
      ARM: stm32mp: enable mmc_extcsd in defconfig
      fs: don't free device in remove callback
      Documentation: boards: stm32mp: document eMMC boot configuration
      lib: lzo: drop unused compression code
      sandbox: hostfile: error out if file couldn't be opened
      sandbox: add_image: support mmaping block devices on 32-bit hosts
      sandbox: support escaping commas in --image filenames
      readkey: fix buffer overflow handling longer escape sequences
      sandbox: fix SANDBOX_UNWIND dependency to be KASAN only
      common: ubsan: replace pr_err with printf
      lib: string: retire deprecated strtok() in favor of reentrant strsep()
      ls: don't print . and .. on recursive ls
      sandbox: implement simple, ^C-interruptible, restart handler
      sandbox: implement actual sandbox reset via exec(2)
      ls: align file size correctly on non-ARM 64-bit platforms
      sandbox: hostfile: support registering images as barebox block devices
      boot: ignore all spaces between boot targets
      blspec: devicetree-overlay: don't warn on multiple delimiting spaces
      common: restart: number unnamed restart handlers
      restart: give all restart handlers a descriptive name
      commands: reset: allow specifying reset by name
      regulator: provide regulator_get_name() stub for !CONFIG_REGULATOR
      README: update to reflect current state
      README: use lower-case barebox spelling
      sandbox: unwind: fix indentation
      ARM: dts: stm32mp: drop no longer needed PSCI version override
      commands: setenv: support setenv dev.var=3DVAL syntax
      commands: setenv: allow use with hush shell
      globalvar: allow running actions on set with globalvar_add_bool()
      lib: kasan: migrate Kconfig option to Debugging menu
      ARM: psci: fix NULL pointer dereference on CPU idle
      treewide: fix unterminated of_device_id[] reported by Coccinelle
      net: macb: fix wrong return values on some errors
      scripts: kwbimage: fix wrong return values on some errors
      ARM: layerscape: ppa: fix wrong return values on some errors
      logo: Makefile: fix Inkscape >=3D v1.0 Wayland GUI opening on LOGO.S
      logo: Makefile: fix indentation of LOGO.S in quiet output

Albert Schwarzkopf (2):
      common: bootm: Add missing check of fit_open_image() return code
      bootm: Allow loading OP-TEE from FIT image

Daniel Gl=F6ckner (1):
      fastboot: rename usbgadget.fastboot_* variables to fastboot.*

Edmund Henniges (1):
      fastboot net: implement fastboot over UDP

Juergen Borleis (5):
      commands: mmc_extcsd: print_field: fix 32 bit overflow
      commands: mmc_extcsd: print_field: fix layout
      mci: kconfig: explain what boot partitions are
      mci: mci-core: add GPP support
      mci: mci-core: fix long lasting FIXMEs

Lars Pedersen (1):
      arm: imx: Select RELOCATABLE on IMX_MULTI_BOARDS

Maik Otto (2):
      arch: arm: boards phytec: Split flash header for pcl063 with i.MX6Ul =
and i.MX6ULL
      arch: arm: mach-imx: Add habv4 config file for i.MX6ULL

Marco Felsch (1):
      ARM: cm-fx6: fix build dependency

Masahiro Yamada (6):
      scripts: remove redundant setupmbr addition to subdir-
      kvx,riscv: remove unused $(dtb-y) assignment
      sandbox: add sandbox.dtb to always-y
      kbuild: sync the top level Kbuild file with Linux
      kconfig: update to Linux 5.9-rc2
      kbuild: introduce hostprogs-always-y and userprogs-always-y

Oleksij Rempel (14):
      of: base: register DT root as device
      gpiolib: add gpio_array_to_id helper to get ID out of GPIO array
      common: console_common: add of_console_get_by_alias() helper
      of: of_device_get_match_compatible() helper
      ARM: protonic-imx6: port Protonic specific board code
      ARM: dts: unify barebox and barebox, env partitions for all Protonic =
boards
      ARM: dts: imx6q-prti6q: add pstore/ramoops node
      ARM: dts: protonic: lanmcu: add eMMC partition table
      ARM: dts: protonic: add fixed clock for the FEC node
      ARM: dts: protonic: lanmcu: use UART_CTS instead of GPIO based CTS
      ARM: dts: protonic: properly define PHY nodes on lanmcu and plym2m bo=
ards
      ARM: dts: protonic: lanmcu: add uart-has-rtscts to enable rs485 funct=
ionality
      serial: imx: set CTS if DT property "linux, rs485-enabled-at-boot-tim=
e" is present
      ARM: protonic: disable on-die termination to fix PHY bootstrapping

Philipp Zabel (1):
      Documentation: efi: update SnpDxe build instructions

Robert Karszniewicz (3):
      bootm: add global.bootm.root_dev env var for booting via PARTUUID
      scripts: compiler.h: include <sys/types.h>
      README: add some commas for clarity

Roland Hieber (3):
      common: remove negative dependency on SANDBOX for IMD_TARGET
      sandbox: add a minimal defconfig to build only the host tools
      mci: bcm2835: depend on sdhci

Rouven Czerwinski (4):
      globalvar: add globalvar_set function
      blspec: only reset variable locations, not paths
      blspec: fix bootm_data initialization
      fastboot: only unset image, not loadaddr

Sascha Hauer (83):
      Introduce slices
      Add workqueues
      ratp: Switch to workqueues
      net: eth: rename __eth_rx()
      net: Add a slice to struct eth_device
      net: mdiobus: Add slice
      usb: Add a slice to usb host controllers
      usbnet: Add slice
      net: Call net_poll() in a poller
      usbnet: shorten timeout when polling for receive packets
      net: reply to ping requests
      globalvar: Add helper for deprecated variable names
      fastboot: Warn when cb_download is called with file still open
      fastboot: Add fastboot_abort()
      fastboot: init list head in common
      usb: fastboot: execute commands in command context
      Add WARN_ONCE() macro
      fs: Warn when filesystem operations are called from a poller
      Documentation: Add document about background execution in barebox
      clk: imx: make string arrays const char * const *
      clk: imx: clk-pll14xx: remove debug leftover
      clk: imx-cpu: Add missing CLK_IS_CRITICAL
      clk: imx. clk-composite-8m: Update from Linux Kernel
      clk: imx: Add imx_clk_gate4_flags
      clk: imx: Add Linux function names
      clk: imx8mp: update clk driver from Linux kernel
      ddr: imx: Cleanup debug messages
      treewide: s/filed/failed/
      treewide: s/filed/field/
      workqueues: Add support for delayed work
      fs: Drop unnecessary dput()
      fs: Fix use after free
      powerpc: Add prototypes to header file
      powerpc: Add missing includes
      powerpc: Make locally used functions static
      powerpc: Add prototypes for functions called from assembly
      powerpc: Remove unused functions
      powerpc: Add function prototypes for exception handlers
      scripts: Make locally used functions static
      ARM: dts: beaglebone: Remove unnecessary tps65217.dtsi
      arm: Add prototypes for functions called from assembly
      openrisc: Add prototypes for functions called from assembly
      ARM: tx28: provide header file with function prototype
      ARM: tegra20-colibri-iris: drop regulators node
      ARM: versatile: Remove unused function
      openrisc: Add missing includes
      openrisc: Make locally used functions static
      scripts: tegra: Add missing include
      ARM: zync: Fix include path
      Add print_hex_dump kernel implementation
      Add _RET_IP_ macro
      Kallsyms: Also resolve global variables
      Add constructor support
      pbl: Alias memcpy and memset
      string: Add nokasan variants of default memcpy/memset
      sandbox: rename KASan to ASan
      dts: update to v5.9-rc2
      dts: update to v5.9-rc3
      dts: update to v5.9-rc4
      dts: update to v5.9-rc5
      Add KASan support
      ARM: Add KASan support
      clk_dump command: Allow printing a single clock
      usb: dwc3: Whitespace cleanup
      ARM: imx_v8_defconfig: Enable realtek phy
      arm: dts: imx: Adjust pwm-cells
      ARM: dts: imx8mq: Use ddr controller node from upstream
      ARM: dts: imx8mq: use mmc aliases from upstream
      clk: Add clk_bulk_[get|put]_all()
      usb: dwc3-of-simple: Use clk_bulk API
      Merge branch 'for-next/dts' into master
      Merge branch 'for-next/fs' into master
      Merge branch 'for-next/imx' into master
      Merge branch 'for-next/kasan' into master
      Merge branch 'for-next/kbuild' into master
      Merge branch 'for-next/license' into master
      Merge branch 'for-next/misc' into master
      Merge branch 'for-next/mmc' into master
      Merge branch 'for-next/net' into master
      Merge branch 'for-next/powerpc' into master
      Merge branch 'for-next/protonic' into master
      KASan: Add missing test code
      Release v2020.10.0

Thorsten Scherer (1):
      Documentation: user: fix referenced filename

Uwe Kleine-K=F6nig (12):
      arm/cpu/*.S: Replace license and copyright boilerplate by SPDX identf=
iers
      scripts/imx: fix typo "unkown" -> "unknown"
      arch/x86: Replace license and copyright boilerplate by SPDX identfiers
      scripts/spdxcheck: fix usage of non-existing variables
      LICENSES: add used licenses to make spdxcheck happy
      scripts: convert imx-image and mxsimage to SPDX
      LICENSES: add OpenSSL exception
      scripts/rsatoc: relicense to allow distribution of binary linked with=
 OpenSSL
      scripts/mxsimage: relicense to allow distribution of binary linked wi=
th OpenSSL
      Regenerate defconfig files
      x86/config/efi: drop DRIVER_SERIAL_NS16550
      scripts/imx-usb-loader: Drop duplicate definition of ALIGN

Yann Sionneau (1):
      mci: fix wrong sd/mmc/emmc card size computation for arch where char =
is signed
-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
