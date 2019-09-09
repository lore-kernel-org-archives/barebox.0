Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7KFu-0003Yl-PE
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 14:03:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>) id 1i7KFt-0007fE-J7
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 16:02:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1i7KFt-0000ZQ-6G
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 16:02:57 +0200
Date: Mon, 9 Sep 2019 16:02:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909140257.frkqwkqps2urwmni@pengutronix.de>
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
Subject: v2019.09.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released barebox-2019.09.0. New this time is that we gained i.MX8
HAB signing support, so we can do trusted boot on i.MX8 as well now. A
side effect of this effort is that we can now verify the compressed
binary before starting it which might be useful for others, too. Also we
can now call the relocation functions on AARCH64 multiple times so that
we can relocate back and forth as we like. The stm32mp support continues
to evolve, thanks Ahmad.

For a detailed list of patches in this release, see below.

Have Fun!
 Sascha


----------------------------------------------------------------
Ahmad Fatoum (14):
      gpio: allow for arch-specific ARCH_NR_GPIOS > 256
      ARM: stm32mp: set CONFIG_ARCH_NR_GPIO =3D (26 * 16)
      ARM: dts: stm32mp157c: correct gpioz id
      reset: add reset controller driver for STM32 RCC
      ARM: stm32mp: fix some misnomers/typos
      filetype: add STM32 image type
      ARM: stm32mp: generate STM32 images
      UBI: silence erroneous GCC warning about uninitialized read
      clk: imx6: fix use of cpu_is_mx6* before they are initialized
      clk: imx6: remove quirky clk_set_parent(LDB_diN_sel, pll5_video_div)
      clk: imx6: define an enum for ldb mux inputs
      Documentation: boards: add initial STM32MP documentation
      Documentation: imx8mq-evk: fix typo (s/NXM/NXP/)
      Documentation: add imx6ull-evk boot mode documentation

Andrey Smirnov (6):
      nvmem: Use helper variable in nvmem_register_cdev()
      nvmem: Use already existing dev pointer in nvmem_register_cdev()
      nvmem: Parse partitions information
      eeprom: at24: Drop at24_cdev_protect()
      eeprom: at24: Convert the driver to NVMEM
      eeprom: at24: Select NVMEM as a dependency

Bastian Krause (1):
      mtd: spi-nor: fix page offset/remains calculation in spi_nor_write

Fabio Estevam (1):
      clk: imx6: Fix procedure to switch the parent of LDB_DI_CLK

Jan Kundr=E1t (1):
      docs: Use a proper name for AM335x defconfig

Ladislav Michl (1):
      startup: Register autoboot variables earlier

Marco Felsch (1):
      images: add support for generating STM32MP images

Masahiro Yamada (4):
      kconfig: update to Linux 5.3-rc3
      riscv: use generic bitsperlong.h
      mips: use generic bitsperlong.h
      kbuild: use -fmacro-prefix-map to make __FILE__ a relative path

Oleksij Rempel (3):
      OF: gpio: Add special quirk to parse regulator flags
      net: fec_imx: add regulator support
      arm: port imx28-evk to devicetree

Philipp Zabel (2):
      clk: imx6: Mask mmdc_ch1 handshake for periph2_sel and mmdc_ch1_axi_p=
odf
      clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks read-only

Rouven Czerwinski (17):
      i.MX: HABv4: ignore return for i.MX28/6 initcalls
      i.MX: HABv4: implement interface for i.MX8MQ
      mach-imx: enable HAB on i.MX8MQ
      arm: lib: add CSF section between PBL and piggy
      esdhc-pbl: extract header parsing from image start
      esdhc-pbl: add piggy load function
      sections: fix macro for barebox_pbl_size
      scripts: imx: support signing for i.MX8MQ
      images: always build sha256sum into pbl
      pbl: add sha256 and piggy verification to PBL
      stdio: puts and putchar static inline wrappers
      pbl: support panic with log output
      arm: uncompress: verify sha256 if enabled
      mach-imx: add gencsf header for i.MX8MQ
      mach-imx: hab: select piggy verification for i.MX8
      boards: nxp-mx8-evk: rework to different boot flow
      images/.gitignore: ignore i.MX8MQ HAB files

Sascha Hauer (42):
      ubiformat: improve generation of UBI image sequence
      mtd: ubi: mark PEBs as bad on erase failure
      mtd: peb: Do not mark as bad in mtd_peb_torture()
      ubiformat: handle write errors correctly
      ubiformat: Fix wrong error tests
      ARM: Fix global_variable_offset() for aarch64
      ARM: nxp-imx8mq-evk: Do setup_c() before accessing global variables
      ARM: phyCORE-i.MX8M SOM: Do setup_c() before accessing global variabl=
es
      ARM: zii-imx8mq-dev: Do setup_c() before accessing global variables
      mtd: nand: Add ecc parameters as device parameters
      console: return number of characters written in fops_write
      crypto: caam - Always do rng selftest
      mtd: nand-mxs: consistently rename struct nand_chip * to "chip"
      mtd: nand-mxs: calculate ecc_strength only once
      mtd: nand-mxs: Make locally used variable static
      mtd: nand-mxs: change API between NAND driver and fcb code
      mtd: nand-mxs: pass mtd_info to mxs_nand_get_mark_offset()
      mtd: nand-mxs: inline only once used function
      mtd: nand: Add function to parse device tree properties
      mtd: nand-mxs: Make ecc strength configurable via device tree
      ARM: access __boot_cpu_mode with a function
      pinctrl: i.MX iomux-v1: Make base address initialization unnecessary
      pinctrl: i.MX iomux-v1: Add i.MX1 support
      serial: i.MX: Add i.MX1 lowlevel init function
      ARM: i.MX: scb9328: refurbish board suport
      ARM: aarch64: Fixup relocation table for the second relocation
      ARM: aarch64: Fix get_runtime_offset after relocation
      pbl: Move piggy verification into pbl_barebox_uncompress()
      ARM: i.MX: imx8-ddrc: Remove debug code
      ARM: nxp-imx8mq-evk: Remove duplicate call to imx8mq_cpu_lowlevel_ini=
t()
      ARM: nxp-imx8mq-evk: Replace trampoline
      ARM: i.MX8: Fix piggydata loading
      ARM: nxp-imx8mq-evk: Update comments
      Release v2019.09.0

Uwe Kleine-K=F6nig (1):
      dts/imx25: drop sram node



-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
