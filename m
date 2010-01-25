Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJXb-00071Y-Dw
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:39:20 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NZJXV-0006Tc-1Z
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 08:39:13 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NZJXV-0003FW-0W
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 08:39:13 +0100
Date: Mon, 25 Jan 2010 08:39:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100125073912.GB10139@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Patches for -next
To: barebox@lists.infradead.org

On Mon, Jan 25, 2010 at 08:32:18AM +0100, Sascha Hauer wrote:
> Hi all,
> 
> Here are some patches to review for -next
> 
> Sascha

And here's a changelog for these patches. Damn, it's too early for me :)

Sascha

The following changes since commit 0dde20da20411bf4dcd5593601d2f36e9ba04f66:
  Peter Korsgaard (1):
        documentation: It's U-Boot that doesn't have getopt, not Barebox

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git pu

Sascha Hauer (12):
      remove unused cdp code
      remove obsolete comment
      cache functions from kernel
      remove unused NETCONSOLE stuff
      remove unused file common/flash.c
      Move tftp/nfs specific code to net/*
      remove typedef cmd_tbl_t and replace it with struct command
      pcm043: initialize cpufreq to 532MHz
      replace ET_DEBUG with pr_debug
      put only once used function inline
      add armv6 support to the konfig system
      i.MX: select armv6 for i.MX31/35

 arch/arm/cpu/Kconfig               |    8 ++
 arch/arm/cpu/Makefile              |    6 +-
 arch/arm/cpu/cache-armv4.S         |  137 ++++++++++++++++++++++++++
 arch/arm/cpu/cache-armv6.S         |  131 +++++++++++++++++++++++++
 arch/arm/cpu/cache-armv7.S         |  185 ++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/cpu.c                 |    2 +-
 arch/arm/cpu/cpuinfo.c             |    2 +-
 arch/arm/cpu/mmu.c                 |   29 +-----
 arch/arm/lib/armlinux.c            |    4 +-
 arch/arm/mach-imx/Kconfig          |    2 +
 arch/arm/mach-imx/clko.c           |    2 +-
 arch/arm/mach-imx/speed.c          |    2 +-
 arch/arm/mach-netx/generic.c       |    2 +-
 arch/ppc/mach-mpc5xxx/interrupts.c |    2 +-
 board/ipe337/cmd_alternate.c       |    2 +-
 board/pcm043/lowlevel_init.S       |    2 +-
 board/pcm043/pcm043.c              |    2 +-
 commands/bmp.c                     |    2 +-
 commands/bootm.c                   |    6 +-
 commands/cat.c                     |    2 +-
 commands/cd.c                      |    2 +-
 commands/clear.c                   |    2 +-
 commands/cp.c                      |    2 +-
 commands/crc.c                     |    2 +-
 commands/dfu.c                     |    2 +-
 commands/echo.c                    |    2 +-
 commands/edit.c                    |    2 +-
 commands/exec.c                    |    2 +-
 commands/export.c                  |    2 +-
 commands/false.c                   |    2 +-
 commands/flash.c                   |    4 +-
 commands/go.c                      |    2 +-
 commands/gpio.c                    |    8 +-
 commands/help.c                    |    2 +-
 commands/insmod.c                  |    2 +-
 commands/loadb.c                   |    2 +-
 commands/loadenv.c                 |    2 +-
 commands/loads.c                   |    4 +-
 commands/ls.c                      |    2 +-
 commands/lsmod.c                   |    2 +-
 commands/mem.c                     |   10 +-
 commands/meminfo.c                 |    2 +-
 commands/memtest.c                 |    2 +-
 commands/mkdir.c                   |    2 +-
 commands/mount.c                   |    2 +-
 commands/nand.c                    |    2 +-
 commands/net.c                     |  160 +------------------------------
 commands/partition.c               |    4 +-
 commands/printenv.c                |    2 +-
 commands/pwd.c                     |    2 +-
 commands/readline.c                |    2 +-
 commands/reginfo.c                 |    2 +-
 commands/reset.c                   |    2 +-
 commands/rm.c                      |    2 +-
 commands/rmdir.c                   |    2 +-
 commands/saveenv.c                 |    2 +-
 commands/setenv.c                  |    2 +-
 commands/sleep.c                   |    2 +-
 commands/test.c                    |    2 +-
 commands/timeout.c                 |    2 +-
 commands/true.c                    |    2 +-
 commands/umount.c                  |    2 +-
 commands/version.c                 |    2 +-
 common/command.c                   |   26 +++---
 common/complete.c                  |    2 +-
 common/flash.c                     |   73 --------------
 common/hush.c                      |    6 +-
 common/module.c                    |    4 +-
 drivers/nand/nand_imx.c            |    2 +-
 drivers/nand/nand_s3c2410.c        |    2 +-
 drivers/usb/gadget/u_serial.c      |    2 +-
 drivers/usb/usb.c                  |    2 +-
 include/command.h                  |   25 ++----
 include/net.h                      |    8 --
 lib/driver.c                       |    2 +-
 net/dhcp.c                         |    2 +-
 net/net.c                          |   98 ++++++-------------
 net/nfs.c                          |   56 +++++++++++-
 net/ping.c                         |    6 +-
 net/tftp.c                         |   74 ++++++++++++++-
 80 files changed, 734 insertions(+), 450 deletions(-)
 create mode 100644 arch/arm/cpu/cache-armv4.S
 create mode 100644 arch/arm/cpu/cache-armv6.S
 create mode 100644 arch/arm/cpu/cache-armv7.S
 delete mode 100644 common/flash.c


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
