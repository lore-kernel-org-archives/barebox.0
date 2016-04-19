Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDj-00031Q-5Q
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1asQDN-0006Lw-J6
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 09:36:53 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86_2)
 (envelope-from <sha@pengutronix.de>) id 1asQDN-0000pi-43
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 09:36:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:38 +0200
Message-Id: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: include/prototype cleanup
To: Barebox List <barebox@lists.infradead.org>

There are several userspace tools in scripts/ which like to share
code with barebox. They usually do so by including C files with
#include "../common/*". In the longer term I'd like it to be possible
to directly compile parts of barebox for userspace. This series is
a first step to make that possible. Whenever we implement a function
which has the same name as a libc function it should also have the
same semantics. This is currently not the case for several asprintf like
functions (the barebox variants return a pointer whereas the libc
variants take a ** argument to return the allocated string). Functions
like fprintf and fputc take a filedescriptor but should really take
a FILE *. This series either renames the functions with conflicting
prototypes so they no longer clash with libc functions, or it fixes
the prototypes. Also several prototypes are moved to the locations
they have in the libc. This makes it easier to share the #includes
between barebox files and userspace files.
There are more places that need similar cleanup, this series is only
a start.

Sascha

----------------------------------------------------------------
Sascha Hauer (14):
      include: move run_command prototype to command.h
      include/common.h: remove unused struct memarea_info
      include: move shell prototypes to shell.h
      include: move crc specific stuff to crc.h
      libfile: move open_and_lseek() to libfile
      show_progress: print spaces with %*s
      string: Fix (v)asprintf prototypes
      move make_directory declaration to libfile.h
      move unlink_recursive declaration to libfile.h
      fs: move libc function prototypes to their correct locations
      stdio: rename getc to getchar
      stdio: replace fprintf(stderr,...) with eprintf
      stdio: Replace FILE functions with filedescriptor functions
      stdio: Whitespace cleanup

 arch/arm/boards/edb93xx/edb93xx.c           |   2 +-
 arch/arm/boards/embedsky-e9/board.c         |   4 +-
 arch/arm/boards/phytec-som-imx6/board.c     |  10 +--
 arch/arm/boards/raspberry-pi/rpi-common.c   |   6 +-
 arch/arm/mach-at91/bootstrap.c              |  16 ++---
 arch/arm/mach-imx/iim.c                     |   2 +-
 arch/arm/mach-omap/omap_generic.c           |   2 +-
 arch/arm/mach-omap/xload.c                  |   4 +-
 arch/ppc/boards/geip-da923rc/product_data.c |   1 +
 commands/automount.c                        |   1 +
 commands/boot.c                             |   6 +-
 commands/clk.c                              |   4 +-
 commands/crc.c                              |   5 +-
 commands/defaultenv.c                       |   4 +-
 commands/echo.c                             |  10 +--
 commands/edit.c                             |   2 +-
 commands/hashsum.c                          |   2 +-
 commands/loadb.c                            |   7 +-
 commands/loadenv.c                          |   1 +
 commands/loads.c                            |   6 +-
 commands/md.c                               |   1 +
 commands/mem.c                              |  23 -------
 commands/memcmp.c                           |   1 +
 commands/memcpy.c                           |   1 +
 commands/memset.c                           |   1 +
 commands/menu.c                             |   4 +-
 commands/miitool.c                          |   2 +-
 commands/mkdir.c                            |   1 +
 commands/mm.c                               |   1 +
 commands/mmc_extcsd.c                       |   4 +-
 commands/mw.c                               |   1 +
 commands/rm.c                               |   1 +
 commands/tftp.c                             |   4 +-
 common/blspec.c                             |  34 +++++-----
 common/bootargs.c                           |   6 +-
 common/console.c                            |  22 ++----
 common/console_common.c                     |  18 ++---
 common/console_countdown.c                  |   2 +-
 common/console_simple.c                     |   6 +-
 common/env.c                                |   2 +-
 common/environment.c                        |   5 +-
 common/firmware.c                           |   2 +-
 common/globalvar.c                          |   9 +--
 common/imd.c                                |   4 +-
 common/imx-bbu-nand-fcb.c                   |   1 +
 common/menutree.c                           |   6 +-
 common/partitions.c                         |   2 +-
 common/partitions/efi.c                     |   1 +
 common/password.c                           |   3 +-
 common/startup.c                            |   1 +
 common/state.c                              |   5 +-
 common/uimage.c                             |   1 +
 crypto/crc32.c                              |   1 +
 crypto/hmac.c                               |   4 +-
 drivers/ata/disk_ata_drive.c                |   2 +-
 drivers/ata/disk_bios_drive.c               |   2 +-
 drivers/eeprom/at24.c                       |   2 +-
 drivers/mci/mci-core.c                      |   6 +-
 drivers/mfd/stmpe-i2c.c                     |   4 +-
 drivers/misc/sram.c                         |   3 +-
 drivers/mtd/core.c                          |  12 ++--
 drivers/mtd/devices/docg3.c                 |   4 +-
 drivers/mtd/mtdoob.c                        |   2 +-
 drivers/mtd/mtdraw.c                        |   2 +-
 drivers/mtd/nand/nand-bb.c                  |   2 +-
 drivers/mtd/nand/nand_imx_bbm.c             |   2 +-
 drivers/mtd/ubi/barebox.c                   |   4 +-
 drivers/mtd/ubi/ubi-barebox.h               |   3 +-
 drivers/mtd/ubi/ubi.h                       |   1 +
 drivers/net/ksz8864rmn.c                    |   2 +-
 drivers/of/barebox.c                        |   2 +-
 drivers/of/base.c                           |   3 +-
 drivers/of/of_path.c                        |   2 +-
 drivers/of/partition.c                      |   2 +-
 drivers/pci/pci-mvebu.c                     |   4 +-
 drivers/pinctrl/pinctrl.c                   |   2 +-
 drivers/pwm/pwm-imx.c                       |   5 +-
 drivers/pwm/pwm-mxs.c                       |   2 +-
 drivers/pwm/pxa_pwm.c                       |   2 +-
 drivers/regulator/core.c                    |   2 +-
 drivers/spi/gpio_spi.c                      |   2 +-
 drivers/usb/gadget/composite.c              |   2 +-
 drivers/usb/gadget/f_fastboot.c             |   8 ++-
 drivers/usb/storage/usb.c                   |   2 +-
 drivers/video/edid.c                        |   9 ++-
 drivers/video/fb.c                          |   2 +-
 drivers/video/imx-ipu-v3/imx-ldb.c          |   8 +--
 drivers/video/imx-ipu-v3/ipu-di.c           |   3 +-
 drivers/video/imx-ipu-v3/ipufb.c            |   2 +-
 drivers/w1/slaves/w1_ds2431.c               |   2 +-
 drivers/w1/slaves/w1_ds2433.c               |   2 +-
 fs/bpkfs.c                                  |   7 +-
 fs/efi.c                                    |   5 +-
 fs/efivarfs.c                               |   4 +-
 fs/fs.c                                     |   9 ++-
 fs/nfs.c                                    |   9 ++-
 fs/ubifs/ubifs.c                            |   4 +-
 fs/ubifs/ubifs.h                            |   1 +
 fs/uimagefs.c                               |  11 +--
 include/command.h                           |   1 +
 include/common.h                            |  29 --------
 include/crc.h                               | 102 +++-------------------------
 include/dirent.h                            |  20 ++++++
 include/fcntl.h                             | 100 ++-------------------------
 include/fs.h                                |  56 ++-------------
 include/libfile.h                           |   7 ++
 include/mtd/utils.h                         |   2 +-
 include/shell.h                             |  11 +++
 include/stdio.h                             |  57 ++++++++--------
 include/sys/ioctl.h                         |   6 ++
 include/sys/mount.h                         |   8 +++
 include/sys/stat.h                          |   9 +++
 include/unistd.h                            |  24 +++++++
 include/w1_mac_address.h                    |   2 +-
 lib/libfile.c                               |  38 ++++++++++-
 lib/logo/logo.c                             |   2 +-
 lib/make_directory.c                        |   1 +
 lib/parameter.c                             |   8 +--
 lib/readkey.c                               |   8 +--
 lib/readline_simple.c                       |   2 +-
 lib/show_progress.c                         |   3 +-
 lib/stringlist.c                            |   2 +-
 lib/uncompress.c                            |   3 +-
 lib/unlink-recursive.c                      |   1 +
 lib/vsprintf.c                              |  48 ++++++++++---
 lib/xfuncs.c                                |   2 +-
 net/dhcp.c                                  |   6 +-
 net/dns.c                                   |   4 +-
 net/ifup.c                                  |   4 +-
 scripts/bareboximd.c                        |   2 +
 130 files changed, 463 insertions(+), 551 deletions(-)
 create mode 100644 include/dirent.h
 create mode 100644 include/sys/ioctl.h
 create mode 100644 include/sys/mount.h
 create mode 100644 include/sys/stat.h
 create mode 100644 include/unistd.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
