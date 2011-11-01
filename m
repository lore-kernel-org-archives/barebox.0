Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-0000zz-Bh
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:10:00 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCp-0005eI-Te
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:31 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:36 +0100
Message-Id: <cover.1320141619.git.mark.vels@team-embedded.nl>
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
Subject: [RFC PATCH 0/9] Catch-up/clean-up doxygen documentation
To: barebox@lists.infradead.org

I just started using BB and was a little anoyed by the fact that although there
is plenty of documentation in the source code, it did not show up in the
generated documentation. I think the availability of simple, clean and
structured information is important for the success of BB and make it 
enjoyable for developers to get aquainted with BB. Therefore I put some effort
in getting the doxygen output up to date.

This patch set tries to update the shell command documentation.

A short summary of the changes in this patch set:
- The first few patches deal with orphan pages; pages that were not
  linked to directly and hence showed up at top-level in the Doxygen output
  HTML.

- In the command overview page, a separation between platform-independent
  and dependent code has been made. In some cases I found 3 versions/
  implementations of the same command on different ARCHs, including 3 copies
  of the same documentation. I will try to come up with a solution for this
  and make sure we have consistent command implementations across different
  platforms and architectures which IMHO is important.

- In a few cases I found the command help information inside an #ifdef. I took
  the liberty to move the BAREBOX_CMD_HELP_* macros outside these conditional
  sections so that the documentation for that command always shows up in the
  Doxygen-generated output. Of course the availability of the commands and the
  help text in bb should not have been altered.

- An attempt is made to make consistent use of the BAREBOX_CMD_HELP_* macro's.
  Also some clean-up was done or small amendments to the documentation.

- I changed a number of syntax errors in the drivers/mtd/nand directory. It was
  not my intention to touch source-generated documentation but decided to fix a
  number of syntax errors to make a first attempt to get rid of all Doxygen 
  warnings and make the output usable again.

- I also tried to make sure all shell command documentation now uses the same
  format for describing cli options (for example the use of [OPTIONS] for 
  options and [<arg1>] for an optional argument. This style is what I saw
  for most commands already so I just tried to make it's use consistent.

I realise that the distribution of the number of changes is not optimal,
this patch set grew considerably bigger as I progressed. In the end it is
just a big collection of lots of small and trivial changes and I hope you can 
still find the motivation to review these patches and provide me with some 
feedback.

Thanks in advance!

Mark

Mark Vels (9):
  trivial: relocate doxygen help page for time command
  trivial: relocate doxygen help page for led command
  trivial: reorganize crc32 command doxygen output
  trivial: fix doxygen error in dlink-dir-320.dox
  trivial: De-orphan NAND doxygen output and fix @param syntax
  docs: Enable BAREBOX_CMD_HELP_TEXT() in generated documentation
  doxygen: Enable LONGHELP output in generated output
  trivial: Small change in page link title
  help: update of shell commands doxygen/online help documentation

 Documentation/commands.dox                        |  158 ++++++++++++---------
 Documentation/developers_manual.dox               |    2 +-
 Documentation/manual_org.dox                      |    2 +-
 Doxyfile                                          |    3 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   11 ++
 arch/arm/boards/guf-cupid/board.c                 |   11 ++
 arch/arm/boards/pcm043/pcm043.c                   |   11 ++
 arch/arm/cpu/cpu.c                                |   13 ++-
 arch/arm/cpu/cpuinfo.c                            |   10 ++
 arch/arm/lib/bootu.c                              |   11 ++-
 arch/arm/lib/bootz.c                              |   12 ++-
 arch/arm/mach-imx/clko.c                          |   17 ++-
 arch/arm/mach-imx/internal-nand-boot.c            |   15 ++-
 arch/arm/mach-imx/speed.c                         |   15 ++-
 arch/arm/mach-mxs/imx.c                           |   11 ++
 arch/arm/mach-netx/generic.c                      |   10 ++
 arch/blackfin/boards/ipe337/cmd_alternate.c       |   10 ++
 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox  |    2 +-
 arch/mips/lib/cpuinfo.c                           |   10 ++
 commands/bmp.c                                    |   18 +--
 commands/bootm.c                                  |   25 ++--
 commands/cat.c                                    |    8 +-
 commands/cd.c                                     |    4 +
 commands/clear.c                                  |    5 +
 commands/cp.c                                     |   13 +-
 commands/crc.c                                    |   13 ++-
 commands/dfu.c                                    |   18 ++-
 commands/echo.c                                   |   19 ++-
 commands/edit.c                                   |   13 +-
 commands/exec.c                                   |   10 ++
 commands/export.c                                 |    5 +
 commands/false.c                                  |   17 +++
 commands/flash.c                                  |   75 +++++-----
 commands/go.c                                     |   16 ++-
 commands/gpio.c                                   |   19 +++
 commands/help.c                                   |   18 ++-
 commands/i2c.c                                    |   53 +++++---
 commands/insmod.c                                 |   12 ++-
 commands/led.c                                    |   16 ++-
 commands/loadb.c                                  |   35 ++++-
 commands/login.c                                  |   14 ++-
 commands/ls.c                                     |    5 +
 commands/lsmod.c                                  |   10 ++
 commands/mem.c                                    |  137 +++++++++++-------
 commands/meminfo.c                                |   10 ++
 commands/memtest.c                                |   22 ++-
 commands/menu.c                                   |  123 ++++++++--------
 commands/mkdir.c                                  |   14 ++-
 commands/mount.c                                  |   21 ++--
 commands/nand.c                                   |   18 ++-
 commands/net.c                                    |   21 +++-
 commands/partition.c                              |   33 +++--
 commands/passwd.c                                 |   13 +-
 commands/printenv.c                               |   11 +-
 commands/pwd.c                                    |    9 ++
 commands/readline.c                               |   12 +-
 commands/reginfo.c                                |    9 ++
 commands/reset.c                                  |   11 ++
 commands/rm.c                                     |   13 ++-
 commands/rmdir.c                                  |   14 ++-
 commands/sleep.c                                  |   15 ++-
 commands/test.c                                   |   16 ++-
 commands/time.c                                   |   10 +-
 commands/timeout.c                                |   22 ++-
 commands/trigger.c                                |    5 +
 commands/true.c                                   |   12 ++
 commands/ubi.c                                    |   38 ++++--
 commands/umount.c                                 |   12 ++-
 commands/unlzo.c                                  |   12 ++-
 commands/usb.c                                    |   12 ++-
 commands/version.c                                |    9 ++
 common/command.c                                  |   11 ++-
 common/hush.c                                     |   69 +++++-----
 drivers/base/driver.c                             |   28 ++--
 drivers/led/led-triggers.c                        |    2 +-
 drivers/mtd/nand/nand_bbt.c                       |   14 ++-
 drivers/mtd/nand/nand_hwecc_syndrome.c            |   44 ++++---
 drivers/mtd/nand/nand_omap_bch_decoder.c          |   19 ++-
 drivers/mtd/nand/nand_write.c                     |  136 +++++++++---------
 include/command.h                                 |    2 +-
 net/dhcp.c                                        |   10 ++
 net/dns.c                                         |   11 ++-
 net/nfs.c                                         |   12 ++-
 net/ping.c                                        |   12 ++
 net/tftp.c                                        |   21 ++--
 85 files changed, 1212 insertions(+), 608 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
