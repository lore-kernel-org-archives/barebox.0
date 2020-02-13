Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DMa-0007Vh-2s
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 12:13:02 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 13 Feb 2020 13:12:47 +0100
Message-Id: <20200213121254.17491-1-rhi@pengutronix.de>
In-Reply-To: <20190207223906.24394-1-rohieb@rohieb.name>
References: <20190207223906.24394-1-rohieb@rohieb.name>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 0/7] SPDX license tags and (L)GPL boilerplate cleanup
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

Changes v2 -> v3:
 * Address feedback from Ahmad Fatoum: add LGPL-2.1 to LICENSES/, fix
   GPL license identifier in include/xymodem.h (and move that change
   between commits accordingly), bring back a lost CREDITS line (will
   get fixed in a later patch).
   git range diff master rhi/spdx-cleanup-v2 rhi/spdx-cleanup-v3:

1:  a68ff4f11476 ! 1:  2ccfab4c7338 include: add SPDX GPL-2.0-only license tags where applicable
    @@ Commit message
         Interpret "GPLv2" as "GPLv2 only".
     
         Signed-off-by: Roland Hieber <rohieb@rohieb.name>
    +    Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
     
      ## include/aimage.h ##
     @@
    @@ include/aimage.h
     
      ## include/aiodev.h ##
     @@
    -+/* SPDX-License-Identifier: GPL-2.0-only */
    - /*
    -  * core.c - Code implementing core functionality of AIODEV susbsystem
       *
    -  * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
    -  * Copyright (c) 2015 Zodiac Inflight Innovation
    -- *
    -- * See file CREDITS for list of people who contributed to this
    -- * project.
    +  * See file CREDITS for list of people who contributed to this
    +  * project.
     - *
     - * This program is free software; you can redistribute it and/or modify
     - * it under the terms of the GNU General Public License version 2
    @@ include/w1_mac_address.h
       */
      
      #ifndef __W1_MAC_ADDRESS_H__
    -
    - ## include/xymodem.h ##
    -@@
    -+/* SPDX-License-Identifier: GPL-2.0-only */
    - /*
    -  * Handles the X-Modem, Y-Modem and Y-Modem/G protocols
    -  *
    -  * Copyright (C) 2008 Robert Jarzmik
    -- *
    -- * This program is free software; you can redistribute it and/or modify
    -- * it under the terms of the GNU General Public License as published by
    -- * the Free Software Foundation; either version 2 of the License, or
    -- * (at your option) any later version.
    -- *
    -- * This program is distributed in the hope that it will be useful,
    -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
    -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    -- * GNU General Public License for more details.
    -  */
    - 
    - #ifndef _XYMODEM_
2:  e5ee722d8984 ! 2:  00b9d858e57e include: add SPDX GPL-2.0-or-later license tags where applicable
    @@ Commit message
         include: add SPDX GPL-2.0-or-later license tags where applicable
     
         Signed-off-by: Roland Hieber <rohieb@rohieb.name>
    +    Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
     
      ## include/ata_drive.h ##
     @@
    @@ include/watchdog.h
      
      #ifndef INCLUDE_WATCHDOG_H
      # define INCLUDE_WATCHDOG_H
    +
    + ## include/xymodem.h ##
    +@@
    ++/* SPDX-License-Identifier: GPL-2.0-or-later */
    + /*
    +  * Handles the X-Modem, Y-Modem and Y-Modem/G protocols
    +  *
    +  * Copyright (C) 2008 Robert Jarzmik
    +- *
    +- * This program is free software; you can redistribute it and/or modify
    +- * it under the terms of the GNU General Public License as published by
    +- * the Free Software Foundation; either version 2 of the License, or
    +- * (at your option) any later version.
    +- *
    +- * This program is distributed in the hope that it will be useful,
    +- * but WITHOUT ANY WARRANTY; without even the implied warranty of
    +- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    +- * GNU General Public License for more details.
    +  */
    + 
    + #ifndef _XYMODEM_
3:  306b52b19039 ! 3:  5cb7a890e263 include: add SPDX GPL-2.0-only license tags for files without licensing information
    @@ Commit message
         except noted otherwise.
     
         Signed-off-by: Roland Hieber <rohieb@rohieb.name>
    +    Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
     
      ## include/abort.h ##
     @@
-:  ------------ > 4:  e023dc86309d LICENSES: add LGPL-2.1-or-later
4:  5eadf1b41f32 ! 5:  b373f5abc747 include: add SPDX LGPL-2.1-or-later license tags where applicable
    @@ Commit message
         include: add SPDX LGPL-2.1-or-later license tags where applicable
     
         Signed-off-by: Roland Hieber <rohieb@rohieb.name>
    +    Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
     
      ## include/fnmatch.h ##
     @@
5:  54c835c85496 ! 6:  46524f7e15a3 include: spi: add SPDX GPL-2.0-or-later license tags where applicable
    @@ Commit message
         include: spi: add SPDX GPL-2.0-or-later license tags where applicable
     
         Signed-off-by: Roland Hieber <rohieb@rohieb.name>
    +    Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
     
      ## include/spi/spi_gpio.h ##
     @@
6:  c0609972e5cc ! 7:  39870dc4befa include: spi: add SPDX GPL-2.0-only license tags for files without licensing information
    @@ Commit message
         except noted otherwise.
     
         Signed-off-by: Roland Hieber <rohieb@rohieb.name>
    +    Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
     
      ## include/spi/eeprom.h ##
     @@


Changes v1 -> v2:
 * also remove the GPL / LGPL boilerplate lines. Sadly the research on
   why Linux and U-Boot did this did not come up with a good result
   except "SPDX is an industry-wide accepted standard" [1] and
   "SPDX-License-Identifiers are a legally binding shorthand" [2],
   without further elaboration... However, since commit
   23ea88c5e5f47df6beed ("README: add licensing information") we now
   explain in our README what these SPDX tags actually mean, so there
   should be no ambiguity.  (Feedback by Oleksij Rempel, Sam Ravnborg
   and Ahmad Fatoum)

   [1]: https://patchwork.kernel.org/patch/10045625/#21135079
   [2]: e.g. here https://lore.kernel.org/patchwork/patch/854656/


Roland Hieber (7):
  include: add SPDX GPL-2.0-only license tags where applicable
  include: add SPDX GPL-2.0-or-later license tags where applicable
  include: add SPDX GPL-2.0-only license tags for files without
    licensing information
  LICENSES: add LGPL-2.1-or-later
  include: add SPDX LGPL-2.1-or-later license tags where applicable
  include: spi: add SPDX GPL-2.0-or-later license tags where applicable
  include: spi: add SPDX GPL-2.0-only license tags for files without
    licensing information

 LICENSES/preferred/LGPL-2.1-or-later | 468 +++++++++++++++++++++++++++
 include/abort.h                      |   1 +
 include/aimage.h                     |   3 +-
 include/aiodev.h                     |   9 -
 include/ata_drive.h                  |  11 +-
 include/bbu.h                        |   1 +
 include/binfmt.h                     |   3 +-
 include/block.h                      |   1 +
 include/blspec.h                     |   1 +
 include/boot.h                       |   1 +
 include/bootchooser.h                |   1 +
 include/bootm.h                      |   1 +
 include/bootsource.h                 |   1 +
 include/bootstrap.h                  |   3 +-
 include/bpkfs.h                      |   3 +-
 include/bunzip2.h                    |   1 +
 include/byteorder.h                  |   1 +
 include/cache.h                      |   1 +
 include/clock.h                      |   1 +
 include/cmdlinepart.h                |   1 +
 include/command.h                    |  12 +-
 include/common.h                     |  12 +-
 include/complete.h                   |   1 +
 include/console.h                    |  12 +-
 include/console_countdown.h          |   1 +
 include/crc.h                        |   1 +
 include/crc7.h                       |   1 +
 include/debug_ll.h                   |  11 +-
 include/dhcp.h                       |   5 +-
 include/digest.h                     |  12 +-
 include/dirent.h                     |   1 +
 include/disks.h                      |  11 +-
 include/dma-dir.h                    |   1 +
 include/dma.h                        |   4 +-
 include/driver.h                     |  12 +-
 include/efi.h                        |   1 +
 include/elf.h                        |   1 +
 include/envfs.h                      |   1 +
 include/environment.h                |  12 +-
 include/errno.h                      |   1 +
 include/fb.h                         |   1 +
 include/fcntl.h                      |   1 +
 include/fdt.h                        |   1 +
 include/file-list.h                  |   1 +
 include/filetype.h                   |   1 +
 include/firmware.h                   |  10 +-
 include/fnmatch.h                    |  17 +-
 include/fs.h                         |   1 +
 include/getopt.h                     |  11 +-
 include/glob.h                       |  17 +-
 include/globalvar.h                  |   1 +
 include/gpio.h                       |   1 +
 include/gpio_keys.h                  |   1 +
 include/gunzip.h                     |   1 +
 include/hab.h                        |  11 +-
 include/image-fit.h                  |  14 +-
 include/image-metadata.h             |   1 +
 include/image.h                      |  12 +-
 include/init.h                       |   1 +
 include/int_sqrt.h                   |  12 +-
 include/io.h                         |   1 +
 include/ioctl.h                      |   1 +
 include/jtag.h                       |  15 +-
 include/kallsyms.h                   |   1 +
 include/kfifo.h                      |  11 +-
 include/kgdb.h                       |   1 +
 include/led.h                        |   1 +
 include/libbb.h                      |   2 +-
 include/libfile.h                    |   1 +
 include/libgen.h                     |   1 +
 include/local_mac_address.h          |   3 +-
 include/lzo.h                        |   1 +
 include/magicvar.h                   |   1 +
 include/malloc.h                     |   1 +
 include/math.h                       |   1 +
 include/mci.h                        |  12 +-
 include/memory.h                     |   1 +
 include/memtest.h                    |   1 +
 include/menu.h                       |  12 +-
 include/mmu.h                        |   1 +
 include/module.h                     |   1 +
 include/nand.h                       |   1 +
 include/notifier.h                   |   1 +
 include/of.h                         |   1 +
 include/of_address.h                 |   1 +
 include/of_device.h                  |   1 +
 include/of_gpio.h                    |   6 +-
 include/of_graph.h                   |   5 +-
 include/of_mtd.h                     |   3 +-
 include/of_net.h                     |   3 +-
 include/of_pci.h                     |   1 +
 include/param.h                      |   1 +
 include/parseopt.h                   |   1 +
 include/part.h                       |  12 +-
 include/partition.h                  |   1 +
 include/password.h                   |  11 +-
 include/pbl.h                        |   3 +-
 include/phy-id-list.h                |   1 +
 include/pinctrl.h                    |   1 +
 include/poller.h                     |   4 +-
 include/poweroff.h                   |   1 +
 include/printk.h                     |   1 +
 include/progress.h                   |   1 +
 include/pwm.h                        |   1 +
 include/qsort.h                      |   1 +
 include/ratp.h                       |   1 +
 include/ratp_bb.h                    |   1 +
 include/readkey.h                    |   1 +
 include/regmap.h                     |   1 +
 include/regulator.h                  |   1 +
 include/reset_source.h               |   6 +-
 include/restart.h                    |   1 +
 include/rtc.h                        |  12 +-
 include/s_record.h                   |  12 +-
 include/scsi.h                       |  13 +-
 include/serdev.h                     |   1 +
 include/shell.h                      |   3 +-
 include/sntp.h                       |   1 +
 include/spi/eeprom.h                 |   1 +
 include/spi/flash.h                  |   1 +
 include/spi/imx-spi.h                |   1 +
 include/spi/spi.h                    |   1 +
 include/spi/spi_gpio.h               |  11 +-
 include/state.h                      |   1 +
 include/stdio.h                      |   1 +
 include/stdlib.h                     |   1 +
 include/stmp-device.h                |   6 +-
 include/string.h                     |   1 +
 include/stringlist.h                 |   1 +
 include/twl6030_pwrbtn.h             |   1 +
 include/types.h                      |   1 +
 include/ubiformat.h                  |   1 +
 include/uimagefs.h                   |   3 +-
 include/uncompress.h                 |   1 +
 include/unistd.h                     |   1 +
 include/usb_dfu_trailer.h            |   1 +
 include/w1_mac_address.h             |   3 +-
 include/watchdog.h                   |  12 +-
 include/wchar.h                      |   1 +
 include/xfuncs.h                     |   1 +
 include/xymodem.h                    |  11 +-
 141 files changed, 609 insertions(+), 383 deletions(-)
 create mode 100644 LICENSES/preferred/LGPL-2.1-or-later

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
