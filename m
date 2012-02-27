Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S26Bx-0000KQ-SX
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 19:25:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1S26Bq-0004fG-Pg
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 20:24:54 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1S26Bq-0000Qq-Og
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 20:24:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Feb 2012 20:24:50 +0100
Message-Id: <1330370693-1591-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] some binary space reduction
To: barebox@lists.infradead.org

Sascha Hauer (3):
      command: do not allow abbreviated commands anymore
      ARM boot[zu]: return COMMAND_ERROR_USAGE instead of calling barebox_cmd_usage
      commands: remove struct command pointer from commands

 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/cpu/cpuinfo.c                            |    2 +-
 arch/arm/lib/bootu.c                              |    8 ++----
 arch/arm/lib/bootz.c                              |    8 ++----
 arch/arm/mach-imx/clko.c                          |    2 +-
 arch/arm/mach-imx/internal-nand-boot.c            |    2 +-
 arch/arm/mach-imx/speed.c                         |    2 +-
 arch/arm/mach-mxs/imx.c                           |    2 +-
 arch/arm/mach-netx/generic.c                      |    2 +-
 arch/blackfin/boards/ipe337/cmd_alternate.c       |    2 +-
 arch/mips/lib/cpuinfo.c                           |    2 +-
 commands/bmp.c                                    |    2 +-
 commands/bootm.c                                  |    2 +-
 commands/cat.c                                    |    3 +-
 commands/cd.c                                     |    2 +-
 commands/clear.c                                  |    2 +-
 commands/cp.c                                     |    3 +-
 commands/crc.c                                    |    2 +-
 commands/dfu.c                                    |    2 +-
 commands/digest.c                                 |    8 +++---
 commands/echo.c                                   |    2 +-
 commands/edit.c                                   |    2 +-
 commands/exec.c                                   |    2 +-
 commands/export.c                                 |    2 +-
 commands/false.c                                  |    2 +-
 commands/flash.c                                  |    4 +-
 commands/go.c                                     |    2 +-
 commands/gpio.c                                   |    8 +++---
 commands/help.c                                   |    4 ++-
 commands/i2c.c                                    |    6 ++--
 commands/insmod.c                                 |    2 +-
 commands/iomem.c                                  |    2 +-
 commands/led.c                                    |    2 +-
 commands/linux16.c                                |    3 +-
 commands/linux_exec.c                             |    2 +-
 commands/loadb.c                                  |    2 +-
 commands/loadenv.c                                |    2 +-
 commands/loads.c                                  |    4 +-
 commands/login.c                                  |    2 +-
 commands/ls.c                                     |    2 +-
 commands/lsmod.c                                  |    2 +-
 commands/magicvar.c                               |    2 +-
 commands/mem.c                                    |   10 ++++----
 commands/meminfo.c                                |    2 +-
 commands/memtest.c                                |    2 +-
 commands/menu.c                                   |    2 +-
 commands/mkdir.c                                  |    2 +-
 commands/mount.c                                  |    2 +-
 commands/nand.c                                   |    2 +-
 commands/net.c                                    |    4 +-
 commands/oftree.c                                 |    2 +-
 commands/partition.c                              |    4 +-
 commands/passwd.c                                 |    2 +-
 commands/printenv.c                               |    2 +-
 commands/pwd.c                                    |    2 +-
 commands/readline.c                               |    2 +-
 commands/reginfo.c                                |    2 +-
 commands/reset.c                                  |    2 +-
 commands/rm.c                                     |    2 +-
 commands/rmdir.c                                  |    2 +-
 commands/saveenv.c                                |    2 +-
 commands/setenv.c                                 |    2 +-
 commands/sleep.c                                  |    2 +-
 commands/test.c                                   |    2 +-
 commands/time.c                                   |    2 +-
 commands/timeout.c                                |    2 +-
 commands/trigger.c                                |    2 +-
 commands/true.c                                   |    2 +-
 commands/ubi.c                                    |    6 ++--
 commands/uimage.c                                 |    2 +-
 commands/umount.c                                 |    2 +-
 commands/uncompress.c                             |    2 +-
 commands/usb.c                                    |    2 +-
 commands/version.c                                |    2 +-
 common/command.c                                  |   26 ++++-----------------
 common/hush.c                                     |    8 +++---
 drivers/base/driver.c                             |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c                   |    2 +-
 drivers/usb/gadget/u_serial.c                     |    2 +-
 include/command.h                                 |    2 +-
 net/dhcp.c                                        |    2 +-
 net/dns.c                                         |    2 +-
 net/nfs.c                                         |    2 +-
 net/ping.c                                        |    2 +-
 net/tftp.c                                        |    2 +-
 87 files changed, 118 insertions(+), 139 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
