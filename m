Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-000100-BM
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:10:13 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCq-0005eI-44
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:32 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:45 +0100
Message-Id: <65bb7430eeddbe6aa30757f1841027df0f95c930.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
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
Subject: [PATCH 9/9] help: update of shell commands doxygen/online help
	documentation
To: barebox@lists.infradead.org


Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 Documentation/commands.dox                        |  153 ++++++++++++---------
 Documentation/developers_manual.dox               |    2 +-
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
 arch/mips/lib/cpuinfo.c                           |   10 ++
 commands/bmp.c                                    |   18 +--
 commands/bootm.c                                  |   25 ++--
 commands/cat.c                                    |    8 +-
 commands/cd.c                                     |    4 +
 commands/clear.c                                  |    5 +
 commands/cp.c                                     |   13 +-
 commands/crc.c                                    |   11 +-
 commands/dfu.c                                    |   18 ++-
 commands/echo.c                                   |   19 ++-
 commands/edit.c                                   |   13 +-
 commands/exec.c                                   |   10 ++
 commands/export.c                                 |    5 +
 commands/false.c                                  |   17 +++
 commands/flash.c                                  |   75 ++++++-----
 commands/go.c                                     |   16 ++-
 commands/gpio.c                                   |   19 +++
 commands/help.c                                   |   18 ++-
 commands/i2c.c                                    |   53 +++++---
 commands/insmod.c                                 |   12 ++-
 commands/led.c                                    |    2 +-
 commands/loadb.c                                  |   35 ++++-
 commands/login.c                                  |   14 ++-
 commands/ls.c                                     |    5 +
 commands/lsmod.c                                  |   10 ++
 commands/mem.c                                    |  137 +++++++++++--------
 commands/meminfo.c                                |   10 ++
 commands/memtest.c                                |   22 ++-
 commands/menu.c                                   |  123 ++++++++---------
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
 commands/time.c                                   |    4 +-
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
 net/dhcp.c                                        |   10 ++
 net/dns.c                                         |   11 ++-
 net/nfs.c                                         |   12 ++-
 net/ping.c                                        |   12 ++
 net/tftp.c                                        |   21 ++--
 78 files changed, 1081 insertions(+), 504 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index a8bc83d..af59820 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -15,98 +15,127 @@ available in @a Barebox:
 
 \todo Sort this by functionality?
 
-@li @subpage _name
+@section section_plat_independent_cmds Platform-independent commands
+
 @li @subpage addpart_command
-@li @subpage alternate
 @li @subpage bmp_command
 @li @subpage bootm_command
-@li @subpage bootu
-@li @subpage bootz
 @li @subpage cat_command
 @li @subpage cd_command
 @li @subpage clear_command
-@li @subpage clko
 @li @subpage cp_command
-@li @subpage cpufreq
-@li @subpage cpuinfo
 @li @subpage crc32_command
 @li @subpage delpart_command
 @li @subpage devinfo_command
 @li @subpage dfu_command
-@li @subpage dhcp
-@li @subpage dump_clocks
+@li @subpage dhcp_command
 @li @subpage echo_command
 @li @subpage edit_command
 @li @subpage erase_command
-@li @subpage ethact
-@li @subpage exec
-@li @subpage exit
+@li @subpage ethact_command
+@li @subpage exec_command
+@li @subpage exit_command
 @li @subpage export_command
-@li @subpage false
-@li @subpage getopt
+@li @subpage false_command
+@li @subpage getopt_command
 @li @subpage gpio_get_value_command
 @li @subpage gpio_set_value_command
 @li @subpage gpio_direction_input_command
 @li @subpage gpio_direction_output_command
-@li @subpage go
-@li @subpage help
-@li @subpage host
-@li @subpage i2c_probe
-@li @subpage i2c_read
-@li @subpage i2c_write
-@li @subpage icache
-@li @subpage iminfo
-@li @subpage insmod
+@li @subpage go_command
+@li @subpage help_command
+@li @subpage host_command
+@li @subpage i2c_probe_command
+@li @subpage i2c_read_command
+@li @subpage i2c_write_command
+@li @subpage iminfo_command
+@li @subpage insmod_command
 @li @subpage led_command
 @li @subpage linux16_command
 @li @subpage loadenv_command
-@li @subpage loadb
-@li @subpage loady
-@li @subpage loadxc
-@li @subpage login
+@li @subpage loadb_command
+@li @subpage loady_command
+@li @subpage login_command
 @li @subpage ls_command
-@li @subpage lsmod
-@li @subpage md
-@li @subpage memcmp
-@li @subpage meminfo
-@li @subpage memset
-@li @subpage menu
-@li @subpage mkdir
+@li @subpage lsmod_command
+@li @subpage md_command
+@li @subpage memcpy_command
+@li @subpage memcmp_command
+@li @subpage meminfo_command
+@li @subpage memset_command
+@li @subpage menu_command
+@li @subpage mkdir_command
 @li @subpage mount_command
-@li @subpage mtest
-@li @subpage mw
-@li @subpage mycdev
-@li @subpage nand
-@li @subpage nand_boot_test
-@li @subpage nfs
-@li @subpage passwd
-@li @subpage ping
+@li @subpage mtest_command
+@li @subpage mw_command
+@li @subpage nand_command
+@li @subpage nfs_command
+@li @subpage passwd_command
+@li @subpage ping_command
 @li @subpage printenv_command
 @li @subpage protect_command
-@li @subpage pwd
-@li @subpage readline
-@li @subpage reset
-@li @subpage rarpboot
-@li @subpage reginfo
-@li @subpage rm
-@li @subpage rmdir
+@li @subpage pwd_command
+@li @subpage readline_command
+@li @subpage reset_command
+@li @subpage rarpboot_command
+@li @subpage reginfo_command
+@li @subpage rm_command
+@li @subpage rmdir_command
 @li @subpage saveenv_command
 @li @subpage setenv_command
-@li @subpage sh
-@li @subpage sleep
-@li @subpage source
-@li @subpage test
+@li @subpage sh_command
+@li @subpage sleep_command
+@li @subpage source_command
+@li @subpage test_command
 @li @subpage time_command
-@li @subpage timeout
-@li @subpage true
+@li @subpage timeout_command
+@li @subpage trigger_command
+@li @subpage true_command
 @li @subpage tftp_command
-@li @subpage ubiattach
-@li @subpage ubimkvol
-@li @subpage ubirmvol
-@li @subpage umount
-@li @subpage unlzo
+@li @subpage ubiattach_command
+@li @subpage ubimkvol_command
+@li @subpage ubirmvol_command
+@li @subpage umount_command
+@li @subpage unlzo_command
 @li @subpage unprotect_command
-@li @subpage usb
-@li @subpage version
+@li @subpage usb_command
+@li @subpage version_command
+
+@section section_plat_specific_cmds arch-specific commands
+@subsection subsect_arm_specific_cmds ARM platform
+
+@li @subpage bootu_command
+@li @subpage bootz_command
+@li @subpage cpuinfo_arm_command "cpuinfo"
+@li @subpage icache_command
+
+@subsection subsect_mips_specific_cmds MIPS platform
+@li @subpage cpuinfo_mips_command "cpuinfo"
+
+@section section_mach_specific_cmds mach-specific commands
+@subsection subsection_mach_specific_machimx_cmds mach-imx
+@li @subpage clko_command
+@li @subpage nand_boot_test_command
+@li @subpage dump_clocks_machimx_command "dump_clocks"
+
+@subsection subsection_mach_specific_machmxs_cmds mach-mxs
+@li @subpage dump_clocks_machmxs_command "dump_clocks"
+
+@subsection subsection_mach_specific_mach_netx_cmds mach-netx
+@li @subpage loadxc_command
+
+@section section_board_specific_cmds Board-specific commands
+
+@subsection subsection_board_specific_eukreaimx35_cmds Eukrea i.MX35 specific commands
+@li @subpage cpufreq_eukreaimx35_command "cpufreq"
+
+@subsection subsection_board_specific_guf_cupid_cmds GUF Cupid specific commands
+@li @subpage cpufreq_guf_cupid_command "cpufreq"
+
+@subsection subsection_board_specific_pcm043_cmds PCM043 specific commands
+@li @subpage cpufreq_pcm043_command "cpufreq"
+
+@subsection subsection_board_specific_ipe337_cmds IPE337 specific commands
+@li @subpage alternate_command
 
 */
diff --git a/Documentation/developers_manual.dox b/Documentation/developers_manual.dox
index 2f7d360..7a17fb3 100644
--- a/Documentation/developers_manual.dox
+++ b/Documentation/developers_manual.dox
@@ -19,6 +19,6 @@ This part of the documentation is intended for developers of @a barebox.
 @li @subpage boot_preparation
 @li @subpage barebox_simul
 @li @subpage io_access_functions
-@li @subpage mcfv4e_MCDlib
+@li @subpage manual_org "Organisation of Doxygen-related files"
 
 */
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 5f654d4..99eb8c6 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -359,6 +359,17 @@ static const __maybe_unused char cmd_cpufreq_help[] =
 "\n"
 "Set CPU frequency to <freq> MHz\n";
 
+BAREBOX_CMD_HELP_START(cpufreq_eukreaimx35)
+BAREBOX_CMD_HELP_USAGE("cpufreq 399|532\n")
+BAREBOX_CMD_HELP_SHORT("Adjust the CPU frequency\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page cpufreq_eukreaimx35_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_MACH_EUKREA_CPUIMX35).
+ * There are more versions of this command defined for different boards a/o architectures.
+*/
+
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
 	.usage          = "adjust CPU frequency",
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 158adfc..e31e795 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -361,6 +361,17 @@ static const __maybe_unused char cmd_cpufreq_help[] =
 "\n"
 "Set CPU frequency to <freq> MHz\n";
 
+BAREBOX_CMD_HELP_START(cpufreq_guf_cupid)
+BAREBOX_CMD_HELP_USAGE("cpufreq 399|532\n")
+BAREBOX_CMD_HELP_SHORT("Adjust the CPU frequency\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page cpufreq_guf_cupid_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_MACH_GUF_CUPID).
+ * There are more versions of this command defined for different boards a/o architectures.
+*/
+
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
 	.usage          = "adjust CPU frequency",
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 23580c9..de9d484 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -330,6 +330,17 @@ static const __maybe_unused char cmd_cpufreq_help[] =
 "\n"
 "Set CPU frequency to <freq> MHz\n";
 
+BAREBOX_CMD_HELP_START(cpufreq_pcm043)
+BAREBOX_CMD_HELP_USAGE("cpufreq 399|532\n")
+BAREBOX_CMD_HELP_SHORT("Adjust the CPU frequency\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page cpufreq_pcm043_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_MACH_PCM043).
+ * There are more versions of this command defined for different boards a/o architectures.
+*/
+
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
 	.usage          = "adjust CPU frequency",
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index d4a3b14..992c0ad 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -113,10 +113,19 @@ static int do_icache(struct command *cmdtp, int argc, char *argv[])
 
 	return 0;
 }
+#endif
+
+BAREBOX_CMD_HELP_START(icache)
+BAREBOX_CMD_HELP_USAGE("icache [0|1]\n")
+BAREBOX_CMD_HELP_SHORT("Show/change icache status\n")
+BAREBOX_CMD_HELP_END
 
-static const __maybe_unused char cmd_icache_help[] =
-"Usage: icache [0|1]\n";
+/**
+ * @page icache_command
+ * \note This command is only available for ARM architectures.
+*/
 
+#ifdef CONFIG_COMMAND
 BAREBOX_CMD_START(icache)
 	.cmd		= do_icache,
 	.usage		= "show/change icache status",
diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index e19b8de..1341fde 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -129,6 +129,16 @@ static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(cpuinfo_arm)
+BAREBOX_CMD_HELP_USAGE("cpuinfo\n")
+BAREBOX_CMD_HELP_SHORT("Show info about CPU\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page cpuinfo_arm_command
+ * \note This command is only available for ARM and MIPS architectures.
+*/
+
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
 	.usage          = "Show info about CPU",
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index e97ded0..e2cd1bd 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -27,8 +27,15 @@ static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 	return 1;
 }
 
-static const __maybe_unused char cmd_bootu_help[] =
-"Usage: bootu <address>\n";
+BAREBOX_CMD_HELP_START(bootu)
+BAREBOX_CMD_HELP_USAGE("bootu <address>\n")
+BAREBOX_CMD_HELP_SHORT("Start a raw linux image\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page bootu_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_BOOTU). It is currently only available for ARM architectures.
+*/
 
 BAREBOX_CMD_START(bootu)
 	.cmd            = do_bootu,
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index 956ea82..7d3a412 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -118,9 +118,15 @@ err_out:
 	return 1;
 }
 
-static const __maybe_unused char cmd_bootz_help[] =
-"Usage: bootz [FILE]\n"
-"Boot a Linux zImage\n";
+BAREBOX_CMD_HELP_START(bootz)
+BAREBOX_CMD_HELP_USAGE("bootz <file>\n")
+BAREBOX_CMD_HELP_SHORT("Start a linux zImage\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page bootz_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_BOOTZ). It is currently only available for ARM architectures.
+*/
 
 BAREBOX_CMD_START(bootz)
 	.cmd            = do_bootz,
diff --git a/arch/arm/mach-imx/clko.c b/arch/arm/mach-imx/clko.c
index 37e17fe..3f64f11 100644
--- a/arch/arm/mach-imx/clko.c
+++ b/arch/arm/mach-imx/clko.c
@@ -39,12 +39,17 @@ static int do_clko(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static __maybe_unused char cmd_clko_help[] =
-"Usage: clko [OPTION]...\n"
-"Route different signals to the i.MX clko pin\n"
-"  -d  <div>	Divider\n"
-"  -s  <source> Clock select. See Ref. Manual for valid sources. Use -1\n"
-"               for disabling clock output\n";
+BAREBOX_CMD_HELP_START(clko)
+BAREBOX_CMD_HELP_USAGE("clko [OPTION]...\n")
+BAREBOX_CMD_HELP_SHORT("Route different signals to the i.MX clko pin\n")
+BAREBOX_CMD_HELP_OPT("-d <div>", "Divider\n")
+BAREBOX_CMD_HELP_OPT("-s <source>", "Clock select. See Ref. Manual for valid sources. Use -1 for disabling clock output\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page clko_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_IMX_CLKO).
+*/
 
 BAREBOX_CMD_START(clko)
 	.cmd		= do_clko,
diff --git a/arch/arm/mach-imx/internal-nand-boot.c b/arch/arm/mach-imx/internal-nand-boot.c
index c55a0e7..5302e2f 100644
--- a/arch/arm/mach-imx/internal-nand-boot.c
+++ b/arch/arm/mach-imx/internal-nand-boot.c
@@ -256,10 +256,17 @@ static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_nand_boot_test_help[] =
-"Usage: nand_boot_test <dest> <size>\n"
-"This command loads the booloader from the NAND memory like the reset\n"
-"routine does. Its intended for development tests only";
+BAREBOX_CMD_HELP_START(nand_boot_test)
+BAREBOX_CMD_HELP_USAGE("nand_boot_test <dest> <size>\n")
+BAREBOX_CMD_HELP_SHORT("Load barebox from NAND.\n")
+BAREBOX_CMD_HELP_TEXT("This command loads the booloader from the NAND memory like the reset")
+BAREBOX_CMD_HELP_TEXT("routine does. Its intended for development tests only\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page nand_boot_test_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND && CONFIG_NAND_IMX_BOOT_DEBUG).
+*/
 
 BAREBOX_CMD_START(nand_boot_test)
 	.cmd		= do_nand_boot_test,
diff --git a/arch/arm/mach-imx/speed.c b/arch/arm/mach-imx/speed.c
index 750ace0..31c1c73 100644
--- a/arch/arm/mach-imx/speed.c
+++ b/arch/arm/mach-imx/speed.c
@@ -70,15 +70,26 @@ unsigned int imx_decode_pll(unsigned int reg_val, unsigned int freq)
 
 extern void imx_dump_clocks(void);
 
-static int do_clocks(struct command *cmdtp, int argc, char *argv[])
+static int do_dump_clocks(struct command *cmdtp, int argc, char *argv[])
 {
 	imx_dump_clocks();
 
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(dump_clocks_machimx)
+BAREBOX_CMD_HELP_USAGE("dump_clocks\n")
+BAREBOX_CMD_HELP_SHORT("Show clock frequencies\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page dump_clocks_machimx_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_ARCH_IMX).
+ * It is currently only available for the mach-imx and mach-mxs platforms.
+*/
+
 BAREBOX_CMD_START(dump_clocks)
-	.cmd		= do_clocks,
+	.cmd		= do_dump_clocks,
 	.usage		= "show clock frequencies",
 BAREBOX_CMD_END
 
diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index 14a4249..e65e558 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -29,6 +29,17 @@ static int do_clocks(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(dump_clocks_machmxs)
+BAREBOX_CMD_HELP_USAGE("dump_clocks\n")
+BAREBOX_CMD_HELP_SHORT("Show clock frequencies\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page dump_clocks_machmxs_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_ARCH_MXS).
+ * It is currently only available for the mach-imx and mach-mxs platforms.
+*/
+
 BAREBOX_CMD_START(dump_clocks)
 	.cmd		= do_clocks,
 	.usage		= "show clock frequencies",
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 6966def..a66f82b 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -145,9 +145,19 @@ void __noreturn reset_cpu(unsigned long addr)
 	while (1);
 }
 
+BAREBOX_CMD_HELP_START(loadxc)
+BAREBOX_CMD_HELP_USAGE("loadxc <xcnr>\n")
+BAREBOX_CMD_HELP_SHORT("load xmac/xpec engine number 'xcnr' with ethernet firmware\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page loadxc_command
+ * \note This command is available only on the Hilscher NetX-based platforms (CONFIG_ARCH_NETX).
+*/
 
 BAREBOX_CMD_START(loadxc)
 	.cmd		= do_loadxc,
 	.usage		= "load xmac/xpec engine with ethernet firmware",
+	BAREBOX_CMD_HELP(cmd_loadxc_help)
 BAREBOX_CMD_END
 
diff --git a/arch/blackfin/boards/ipe337/cmd_alternate.c b/arch/blackfin/boards/ipe337/cmd_alternate.c
index 116f910..38fa137 100644
--- a/arch/blackfin/boards/ipe337/cmd_alternate.c
+++ b/arch/blackfin/boards/ipe337/cmd_alternate.c
@@ -44,6 +44,16 @@ static int do_alternate(struct command *cmdtp, int argc, char *argv[])
 	return (bitcount & 1) ? 3 : 2;
 }
 
+BAREBOX_CMD_HELP_START(alternate)
+BAREBOX_CMD_HELP_USAGE("alternate <file>\n")
+BAREBOX_CMD_HELP_SHORT("Count zero bits in a file\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page alternate_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_MACH_IPE337). It is currently only available for the IPE337 architecture.
+*/
+
 static const __maybe_unused char cmd_alternate_help[] =
 "Usage: alternate <file>"
 "\n";
diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
index 7bdb02b..db4325c 100644
--- a/arch/mips/lib/cpuinfo.c
+++ b/arch/mips/lib/cpuinfo.c
@@ -32,6 +32,16 @@ static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(cpuinfo_mips)
+BAREBOX_CMD_HELP_USAGE("cpuinfo\n")
+BAREBOX_CMD_HELP_SHORT("Show info about CPU\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page cpuinfo_mips_command
+ * \note This command is only available for ARM and MIPS architectures.
+*/
+
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
 	.usage          = "Show info about CPU",
diff --git a/commands/bmp.c b/commands/bmp.c
index 644a977..54a3701 100644
--- a/commands/bmp.c
+++ b/commands/bmp.c
@@ -195,23 +195,21 @@ failed_memmap:
 }
 
 BAREBOX_CMD_HELP_START(bmp)
-BAREBOX_CMD_HELP_USAGE("bmp [OPTIONS] FILE\n")
-BAREBOX_CMD_HELP_SHORT("Show the bitmap FILE on the framebuffer.\n")
+BAREBOX_CMD_HELP_USAGE("bmp [OPTIONS] <file>\n")
+BAREBOX_CMD_HELP_SHORT("Show the bitmap 'file' on the framebuffer.\n")
 BAREBOX_CMD_HELP_OPT  ("-f <fb>",   "framebuffer device (/dev/fb0)\n")
 BAREBOX_CMD_HELP_OPT  ("-x <xofs>", "x offset (default center)\n")
 BAREBOX_CMD_HELP_OPT  ("-y <yofs>", "y offset (default center)\n")
 BAREBOX_CMD_HELP_OPT  ("-o",        "render offscreen\n")
+BAREBOX_CMD_HELP_TEXT("This command displays a graphics in the bitmap (.bmp) ")
+BAREBOX_CMD_HELP_TEXT("format on the framebuffer. Currently the bmp command")
+BAREBOX_CMD_HELP_TEXT("supports images with 8 and 24 bit color depth.\n")
 BAREBOX_CMD_HELP_END
-
 /**
  * @page bmp_command
-
-This command displays a graphics in the bitmap (.bmp) format on the
-framebuffer. Currently the bmp command supports images with 8 and 24 bit
-color depth.
-
-\todo What does the -o (offscreen) option do?
-
+ * \todo What does the -o (offscreen) option do?
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_BMP).
  */
 
 BAREBOX_CMD_START(bmp)
diff --git a/commands/bootm.c b/commands/bootm.c
index 755932b..205518e 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -328,23 +328,21 @@ err_out:
 }
 
 BAREBOX_CMD_HELP_START(bootm)
-BAREBOX_CMD_HELP_USAGE("bootm [-n] image\n")
-BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
+BAREBOX_CMD_HELP_USAGE("bootm [-n] <uImage>\n")
+BAREBOX_CMD_HELP_SHORT("Boot an application uImage.\n")
 BAREBOX_CMD_HELP_OPT  ("-n",  "Do not verify the image (speeds up boot process)\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(bootm)
 	.cmd		= do_bootm,
-	.usage		= "boot an application image",
+	.usage		= "boot an application uImage",
 	BAREBOX_CMD_HELP(cmd_bootm_help)
 BAREBOX_CMD_END
 
 /**
  * @page bootm_command
-
-\todo What does bootm do, what kind of image does it boot?
-
- */
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_BOOTM).
+*/
 
 #ifdef CONFIG_CMD_IMI
 static int do_iminfo(struct command *cmdtp, int argc, char *argv[])
@@ -405,10 +403,6 @@ static int image_info (ulong addr)
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(iminfo)
-BAREBOX_CMD_HELP_USAGE("iminfo\n")
-BAREBOX_CMD_HELP_SHORT("Print header information for an application image.\n")
-BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(iminfo)
 	.cmd		= do_iminfo,
@@ -418,6 +412,15 @@ BAREBOX_CMD_END
 
 #endif	/* CONFIG_CMD_IMI */
 
+BAREBOX_CMD_HELP_START(iminfo)
+BAREBOX_CMD_HELP_USAGE("iminfo\n")
+BAREBOX_CMD_HELP_SHORT("Print header information for an application image.\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page iminfo_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_IMI).
+*/
+
 #ifdef CONFIG_BZLIB
 void bz_internal_error(int errcode)
 {
diff --git a/commands/cat.c b/commands/cat.c
index 37e6505..025f2b7 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -88,10 +88,14 @@ out:
 BAREBOX_CMD_HELP_START(cat)
 BAREBOX_CMD_HELP_USAGE("cat [FILES]\n")
 BAREBOX_CMD_HELP_SHORT("Concatenate files on stdout.\n")
-BAREBOX_CMD_HELP_TEXT ("Currently only printable characters and \\ n and \\ t are printed,\n")
-BAREBOX_CMD_HELP_TEXT ("but this should be optional.\n")
+BAREBOX_CMD_HELP_TEXT ("Currently only printable characters and \\ n and \\ t are printed, but this should be optional.\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page cat_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_CAT).
+*/
+
 BAREBOX_CMD_START(cat)
 	.cmd		= do_cat,
 	.usage		= "concatenate file(s)",
diff --git a/commands/cd.c b/commands/cd.c
index d73be32..66ca797 100644
--- a/commands/cd.c
+++ b/commands/cd.c
@@ -52,6 +52,10 @@ BAREBOX_CMD_HELP_USAGE("cd [directory]\n")
 BAREBOX_CMD_HELP_SHORT("Change to directory.\n")
 BAREBOX_CMD_HELP_TEXT ("If called without an argument, change to the root directory /.\n")
 BAREBOX_CMD_HELP_END
+/**
+ * @page cd_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_CD).
+*/
 
 BAREBOX_CMD_START(cd)
 	.cmd		= do_cd,
diff --git a/commands/clear.c b/commands/clear.c
index 6a6b6c5..c277d67 100644
--- a/commands/clear.c
+++ b/commands/clear.c
@@ -36,6 +36,11 @@ BAREBOX_CMD_HELP_USAGE("clear\n")
 BAREBOX_CMD_HELP_SHORT("Clear the screen.\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page clear_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_CLEAR).
+*/
+
 BAREBOX_CMD_START(clear)
 	.cmd		= do_clear,
 	.usage		= "clear screen",
diff --git a/commands/cp.c b/commands/cp.c
index 3428105..ca62f4b 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -80,16 +80,17 @@ out:
 
 BAREBOX_CMD_HELP_START(cp)
 BAREBOX_CMD_HELP_USAGE("cp <source> <destination>\n")
-BAREBOX_CMD_HELP_SHORT("copy file from <source> to <destination>.\n")
+BAREBOX_CMD_HELP_SHORT("copy file from 'source' to 'destination'.\n")
 BAREBOX_CMD_HELP_END
 
 /**
  * @page cp_command
-This command operates on files.
-
-If you want to copy between memory blocks, use 'memcpy'.
-
-\todo What does this mean? Add examples.
+ * This command operates on files.
+ *
+ * If you want to copy between memory blocks, use \ref memcpy_command.
+ *
+ * \todo What does this mean? Add examples.
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_CP).
  */
 
 BAREBOX_CMD_START(cp)
diff --git a/commands/crc.c b/commands/crc.c
index 2c05967..3478ba4 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -144,8 +144,8 @@ static int do_crc(struct command *cmdtp, int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(crc32)
-BAREBOX_CMD_HELP_USAGE("crc32 [OPTION] [AREA]\n")
-BAREBOX_CMD_HELP_SHORT("Calculate a crc32 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_USAGE("crc32 [OPTION] [<area>]\n")
+BAREBOX_CMD_HELP_SHORT("Calculate a crc32 checksum of memory area 'area'.\n")
 BAREBOX_CMD_HELP_OPT  ("-f <file>", "Use file instead of memory.\n")
 #ifdef CONFIG_CMD_CRC_CMP
 BAREBOX_CMD_HELP_OPT  ("-F <file>", "Use file to compare.\n")
@@ -153,8 +153,13 @@ BAREBOX_CMD_HELP_OPT  ("-F <file>", "Use file to compare.\n")
 BAREBOX_CMD_HELP_OPT  ("-v <crc>",  "Verify\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page crc32_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_CRC).
+*/
+
 BAREBOX_CMD_START(crc32)
 	.cmd		= do_crc,
 	.usage		= "crc32 checksum calculation",
-	BAREBOX_CMD_HELP(cmd_crc_help)
+	BAREBOX_CMD_HELP(cmd_crc32_help)
 BAREBOX_CMD_END
diff --git a/commands/dfu.c b/commands/dfu.c
index 385fd89..29cf2a5 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -165,20 +165,22 @@ out:
 BAREBOX_CMD_HELP_START(dfu)
 BAREBOX_CMD_HELP_USAGE("dfu [OPTIONS] <description>\n")
 BAREBOX_CMD_HELP_SHORT("Start firmware update with the Device Firmware Update (DFU) protocol.\n")
-BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
-BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string (" CONFIG_BOARDINFO ")\n")
+BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (default: barebox)\n")
+BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string (default: " CONFIG_BOARDINFO ")\n")
 BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
 BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
 BAREBOX_CMD_HELP_END
 
 /**
  * @page dfu_command
-\<description> has the following form:
-device1(name1)[sr],device2(name2)[sr]
-'s' means 'safe mode' (download the complete image before flashing) and
-'r' that readback of the firmware is allowed.
-
-\todo Add example, how to use dfu from a Linux or Windows host.
+ * 'description' has the following form:
+ * device1(name1)[sr],device2(name2)[sr]
+ * 's' means 'safe mode' (download the complete image before flashing) and
+ * 'r' that readback of the firmware is allowed.
+ *
+ * \todo Add example, how to use dfu from a Linux or Windows host.
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_DFU).
  */
 
 BAREBOX_CMD_START(dfu)
diff --git a/commands/echo.c b/commands/echo.c
index 3e098df..a8fd34b 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -112,19 +112,22 @@ no_optarg_out:
 }
 
 BAREBOX_CMD_HELP_START(echo)
-BAREBOX_CMD_HELP_USAGE("echo [OPTIONS] [STRING]\n")
+BAREBOX_CMD_HELP_USAGE("echo [OPTIONS] [<string>]\n")
 BAREBOX_CMD_HELP_SHORT("Display a line of text.\n")
-BAREBOX_CMD_HELP_OPT  ("-n",  "do not output the trailing newline\n")
-BAREBOX_CMD_HELP_OPT  ("-a",  "FIXME\n")
-BAREBOX_CMD_HELP_OPT  ("-o",  "FIXME\n")
-BAREBOX_CMD_HELP_OPT  ("-e",  "FIXME\n")
+BAREBOX_CMD_HELP_OPT  ("-n",  "do not output a trailing newline\n")
+BAREBOX_CMD_HELP_OPT  ("-o <file>",  "Write output to 'file' instead of stdout.\n")
+BAREBOX_CMD_HELP_OPT  ("-a",  "do not truncate but append to an existing file, only valid in combination with -o\n")
+BAREBOX_CMD_HELP_OPT  ("-e",  "process escape sequences. FIXME\n")
 BAREBOX_CMD_HELP_END
 
 /**
  * @page echo_command
-
-\todo Add documentation for -a, -o and -e.
-
+ *
+ * \todo Add documentation for option -e.
+ *
+ * \note
+ * @li This command is available only if enabled in menuconfig (CONFIG_CMD_ECHO).
+ * @li The -e option is only available if enabled in menuconfig (CONFIG_CMD_ECHO_E).
  */
 
 BAREBOX_CMD_START(echo)
diff --git a/commands/edit.c b/commands/edit.c
index 3519b09..b136f75 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -555,12 +555,13 @@ BAREBOX_CMD_HELP_END
 
 /**
  * @page edit_command
-
-<p> Barebox contains a small text editor which can be used to edit
-config files in /env. You can move the cursor around with the arrow keys
-and type characters. </p>
-
-If called as sedit, the editor uses ansi codes to scroll the screen.
+ *
+ * <p> Barebox contains a small text editor which can be used to edit
+ * config files in /env. You can move the cursor around with the arrow keys
+ * and type characters. </p>
+ *
+ * If called as sedit, the editor uses ansi codes to scroll the screen.
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_ECHO).
  */
 
 BAREBOX_CMD_START(edit)
diff --git a/commands/exec.c b/commands/exec.c
index 5f093b7..16f9126 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -53,6 +53,16 @@ out:
 	return 1;
 }
 
+BAREBOX_CMD_HELP_START(exec)
+BAREBOX_CMD_HELP_USAGE("exec <script file>\n")
+BAREBOX_CMD_HELP_SHORT("Execute a script\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page exec_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_EXEC).
+*/
+
 BAREBOX_CMD_START(exec)
 	.cmd		= do_exec,
 	.usage		= "execute a script",
diff --git a/commands/export.c b/commands/export.c
index 98b1e1a..fd47c29 100644
--- a/commands/export.c
+++ b/commands/export.c
@@ -56,6 +56,11 @@ BAREBOX_CMD_HELP_USAGE("export <var>[=value]\n")
 BAREBOX_CMD_HELP_SHORT("export an environment variable to subsequently executed scripts\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page export_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_EXPORT).
+*/
+
 BAREBOX_CMD_START(export)
 	.cmd		= do_export,
 	.usage		= "export environment variables",
diff --git a/commands/false.c b/commands/false.c
index a90eadc..a036788 100644
--- a/commands/false.c
+++ b/commands/false.c
@@ -28,6 +28,23 @@ static int do_false(struct command *cmdtp, int argc, char *argv[])
 {
 	return 1;
 }
+BAREBOX_CMD_HELP_START(false)
+BAREBOX_CMD_HELP_USAGE("false\n")
+BAREBOX_CMD_HELP_SHORT("Do nothing but exit with a status code indicating failure.\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page false_command
+ * If this is not what you want, you are probably looking for \ref true_command.
+ *
+ * Example:
+ * @verbatim
+barebox:/ false
+barebox:/ echo $?
+1
+@endverbatim
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_FALSE).
+*/
+
 
 BAREBOX_CMD_START(false)
 	.cmd		= do_false,
diff --git a/commands/flash.c b/commands/flash.c
index a3f3508..294d9d4 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -84,8 +84,8 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(erase)
-BAREBOX_CMD_HELP_USAGE("erase <device> [area]\n")
-BAREBOX_CMD_HELP_SHORT("Erase a flash device or parts of a device if an area specification is given.\n")
+BAREBOX_CMD_HELP_USAGE("erase <device> [<area>]\n")
+BAREBOX_CMD_HELP_SHORT("Erase a flash device or parts of a device if 'area' is specified.\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(erase)
@@ -96,16 +96,17 @@ BAREBOX_CMD_END
 
 /**
  * @page erase_command
-
-<p> Erase the flash memory handled by this device. Which area will be
-erased depends on the device: If the device represents the whole flash
-memory, the whole memory will be erased. If the device represents a
-partition on a main flash memory, only this partition part will be
-erased. </p>
-
-Refer to \ref addpart_command, \ref delpart_command and \ref
-devinfo_command for partition handling.
-
+ *
+ * Erase the flash memory handled by this device. Which area will be
+ * erased depends on the device: If the device represents the whole flash
+ * memory, the whole memory will be erased. If the device represents a
+ * partition on a main flash memory, only this partition part will be
+ * erased.
+ *
+ * Refer to \ref addpart_command, \ref delpart_command and \ref
+ * devinfo_command for partition handling.
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_FLASH).
  */
 
 static int do_protect(struct command *cmdtp, int argc, char *argv[])
@@ -175,19 +176,20 @@ BAREBOX_CMD_END
 
 /**
  * @page protect_command
-
-Protect the flash memory behind the device. It depends on the device
-given, what area will be protected. If the device represents the whole
-flash memory the whole memory will be protected. If the device
-represents a partition on a main flash memory, only this partition part
-will be protected.
-
-Refer addpart_command, delpart_command and devinfo_command for partition
-handling.
-
-\todo Rework this documentation, what is an 'area'? Explain more about
-flashes here.
-
+ *
+ * Protect the flash memory behind the device. It depends on the device
+ * given, what area will be protected. If the device represents the whole
+ * flash memory the whole memory will be protected. If the device
+ * represents a partition on a main flash memory, only this partition part
+ * will be protected.
+ *
+ * Refer addpart_command, delpart_command and devinfo_command for partition
+ * handling.
+ *
+ * \todo Rework this documentation, what is an 'area'? Explain more about
+ * flashes here.
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_FLASH).
  */
 
 BAREBOX_CMD_HELP_START(unprotect)
@@ -203,16 +205,17 @@ BAREBOX_CMD_END
 
 /**
  * @page unprotect_command
-
-Unprotect the flash memory behind the device. It depends on the device given,
-what area will be unprotected. If the device represents the whole flash memory
-the whole memory will be unprotected. If the device represents a partition
-on a main flash memory, only this partition part will be unprotected.
-
-Refer addpart_command, delpart_command and devinfo_command for partition
-handling.
-
-\todo Rework this documentation, what does it mean?
-
+ *
+ * Unprotect the flash memory behind the device. It depends on the device given,
+ * what area will be unprotected. If the device represents the whole flash memory
+ * the whole memory will be unprotected. If the device represents a partition
+ * on a main flash memory, only this partition part will be unprotected.
+ *
+ * Refer to \ref addpart_command, \ref delpart_command and \ref devinfo_command for partition
+ * handling.
+ *
+ * \todo Rework this documentation, what does it mean?
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_FLASH).
  */
 
diff --git a/commands/go.c b/commands/go.c
index 6082fe5..606a0c7 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -77,11 +77,17 @@ out:
 	return rcode;
 }
 
-static const __maybe_unused char cmd_go_help[] =
-"Usage: go addr [arg ...]\n"
-"Start application at address 'addr' passing 'arg' as arguments.\n"
-"If addr does not start with a digit it is interpreted as a filename\n"
-"in which case the file is memmapped and executed\n";
+BAREBOX_CMD_HELP_START(go)
+BAREBOX_CMD_HELP_USAGE("go <addr>|<file>  [arg ...]\n")
+BAREBOX_CMD_HELP_SHORT("Start application at address 'addr' or with filename 'file' passing 'arg' as arguments.\n")
+BAREBOX_CMD_HELP_TEXT("If addr does not start with a digit it is interpreted as a filename\n")
+BAREBOX_CMD_HELP_TEXT("in which case the file is memmapped and executed\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page go_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_GO).
+*/
 
 BAREBOX_CMD_START(go)
 	.cmd		= do_go,
diff --git a/commands/gpio.c b/commands/gpio.c
index 073c9d3..85b7fae 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -41,6 +41,11 @@ BAREBOX_CMD_HELP_USAGE("gpio_get_value <gpio>\n")
 BAREBOX_CMD_HELP_SHORT("get the value of an gpio input pin\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page gpio_get_value_command
+ * \note this command is available only if enabled in menuconfig (CONFIG_CMD_GPIO).
+*/
+
 BAREBOX_CMD_START(gpio_get_value)
 	.cmd		= do_gpio_get_value,
 	.usage		= "return value of a gpio pin",
@@ -67,6 +72,11 @@ BAREBOX_CMD_HELP_USAGE("gpio_set_value <gpio> <value>\n")
 BAREBOX_CMD_HELP_SHORT("set the value of an gpio output pin\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page gpio_set_value_command
+ * \note this command is available only if enabled in menuconfig (CONFIG_CMD_GPIO).
+*/
+
 BAREBOX_CMD_START(gpio_set_value)
 	.cmd		= do_gpio_set_value,
 	.usage		= "set a gpio's output value",
@@ -94,6 +104,10 @@ BAREBOX_CMD_HELP_USAGE("gpio_direction_input <gpio>\n")
 BAREBOX_CMD_HELP_SHORT("set direction of a gpio pin to input\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page gpio_direction_input_command
+ * \note this command is available only if enabled in menuconfig (CONFIG_CMD_GPIO).
+*/
 BAREBOX_CMD_START(gpio_direction_input)
 	.cmd		= do_gpio_direction_input,
 	.usage		= "set direction of a gpio pin to input",
@@ -122,6 +136,11 @@ BAREBOX_CMD_HELP_USAGE("gpio_direction_output <gpio> <value>\n")
 BAREBOX_CMD_HELP_SHORT("set direction of a gpio pin to output\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page gpio_direction_output_command
+ * \note this command is available only if enabled in menuconfig (CONFIG_CMD_GPIO).
+*/
+
 BAREBOX_CMD_START(gpio_direction_output)
 	.cmd		= do_gpio_direction_output,
 	.usage		= "set direction of a gpio pin to output",
diff --git a/commands/help.c b/commands/help.c
index f8387bd..f18085d 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -52,15 +52,21 @@ static int do_help(struct command * cmdtp, int argc, char *argv[])
 	}
 }
 
-static const __maybe_unused char cmd_help_help[] =
-"Show help information (for 'command')\n"
-"'help' prints online help for the monitor commands.\n\n"
-"Without arguments, it prints a short usage message for all commands.\n\n"
-"To get detailed help information for specific commands you can type\n"
-"'help' with one or more command names as arguments.\n";
+BAREBOX_CMD_HELP_START(help)
+BAREBOX_CMD_HELP_USAGE("help [command]\n")
+BAREBOX_CMD_HELP_SHORT("Show help information (for 'command')\n")
+BAREBOX_CMD_HELP_TEXT("Without arguments, it prints a short usage message for all commands.\n\n")
+BAREBOX_CMD_HELP_TEXT("To get detailed help information for specific commands you can type\n")
+BAREBOX_CMD_HELP_TEXT("'help' with one or more command names as arguments.\n")
+BAREBOX_CMD_HELP_END
 
 static const char *help_aliases[] = { "?", NULL};
 
+/**
+ * @page help_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_HELP).
+*/
+
 BAREBOX_CMD_START(help)
 	.cmd		= do_help,
 	.aliases	= help_aliases,
diff --git a/commands/i2c.c b/commands/i2c.c
index d38e779..b265ea6 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -60,9 +60,15 @@ static int do_i2c_probe(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_i2c_probe_help[] =
-"Usage: i2c_probe bus 0xstartaddr 0xstopaddr\n"
-"probe a range of i2c addresses.\n";
+BAREBOX_CMD_HELP_START(i2c_probe)
+BAREBOX_CMD_HELP_USAGE("i2c_probe <bus> <startaddr> <stopaddr>\n")
+BAREBOX_CMD_HELP_SHORT("probe a range of i2c addresses. All addresses must be in hex format.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page i2c_probe_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_I2C).
+*/
 
 BAREBOX_CMD_START(i2c_probe)
 	.cmd		= do_i2c_probe,
@@ -130,12 +136,19 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_i2c_write_help[] =
-"Usage: i2c_write [OPTION] ... hexdatas\n"
-"write to i2c device.\n"
-"  -a 0x<addr>   i2c device address\n"
-"  -b <bus_num>  i2c bus number (default = 0)\n"
-"  -r 0x<reg>    start register\n";
+BAREBOX_CMD_HELP_START(i2c_write)
+BAREBOX_CMD_HELP_USAGE("i2c_write [OPTION] ... hexdatas\n")
+BAREBOX_CMD_HELP_SHORT("Write to i2c device.\n")
+BAREBOX_CMD_HELP_OPT("-a <addr>", "i2c device address in hex format\n")
+BAREBOX_CMD_HELP_OPT("-b <bus_num>", "i2c bus number (default = 0)\n")
+BAREBOX_CMD_HELP_OPT("-r <reg>", "start register in hex format\n")
+BAREBOX_CMD_HELP_OPT("-v", "Verbose command output\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page i2c_write_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_I2C).
+*/
 
 BAREBOX_CMD_START(i2c_write)
 	.cmd		= do_i2c_write,
@@ -199,14 +212,20 @@ static int do_i2c_read(struct command *cmdtp, int argc, char *argv[])
 	return ret;
 }
 
-static const __maybe_unused char cmd_i2c_read_help[] =
-"Usage: i2c_read [OPTION]\n"
-"read i2c device.\n"
-"  -a 0x<addr>   i2c device address\n"
-"  -b <bus_num>  i2c bus number (default = 0)\n"
-"  -r 0x<reg>    start register\n"
-"  -c <count>    byte count\n";
-
+BAREBOX_CMD_HELP_START(i2c_read)
+BAREBOX_CMD_HELP_USAGE("i2c_read [OPTION]\n")
+BAREBOX_CMD_HELP_SHORT("Read from i2c device.\n")
+BAREBOX_CMD_HELP_OPT("-a <addr>", "i2c device address in hex format\n")
+BAREBOX_CMD_HELP_OPT("-b <bus_num>", "i2c bus number (default = 0)\n")
+BAREBOX_CMD_HELP_OPT("-r <reg>", "start register in hex format\n")
+BAREBOX_CMD_HELP_OPT("-c <count>", "byte count\n")
+BAREBOX_CMD_HELP_OPT("-v", "Verbose command output\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page i2c_read_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_I2C).
+*/
 BAREBOX_CMD_START(i2c_read)
 	.cmd		= do_i2c_read,
 	.usage		= "read from an i2c device",
diff --git a/commands/insmod.c b/commands/insmod.c
index d3b4d1a..1c04ddd 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -32,9 +32,15 @@ static int do_insmod(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_insmod_help[] =
-"Usage: insmod <module>\n"; 
-
+BAREBOX_CMD_HELP_START(insmod)
+BAREBOX_CMD_HELP_USAGE("insmod <module>\n")
+BAREBOX_CMD_HELP_SHORT("Insert a module\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page insmod_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_INSMOD).
+*/
 BAREBOX_CMD_START(insmod)
 	.cmd		= do_insmod,
 	.usage		= "insert a module",
diff --git a/commands/led.c b/commands/led.c
index 2591ed0..9fae18d 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -88,7 +88,7 @@ The exact meaning of &lt;value&gt; is unspecified. It can be a color in case of
 LEDs or a brightness if this is controllable. In most cases only 1 for enabled
 is allowed.
 
-\note This command is available only if enabled in menuconfig.
+\note This command is available only if enabled in menuconfig(CONFIG_CMD_LED).
 */
 
 BAREBOX_CMD_START(led)
diff --git a/commands/loadb.c b/commands/loadb.c
index 439a83a..ae41f0c 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -796,13 +796,20 @@ static int do_load_serial_bin(struct command *cmdtp, int argc, char *argv[])
 	return rcode;
 }
 
-static const __maybe_unused char cmd_loadb_help[] =
-    "[OPTIONS]\n"
-    "  -f file   - where to download to - defaults to " DEF_FILE "\n"
-    "  -o offset - what offset to download - defaults to 0\n"
-    "  -b baud   - baudrate at which to download - defaults to "
-    "console baudrate\n"
-    "  -c        - Create file if it is not present - default disabled";
+BAREBOX_CMD_HELP_START(loadb)
+BAREBOX_CMD_HELP_USAGE("loadb [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("Load binary file over serial line (kermit mode)\n")
+BAREBOX_CMD_HELP_OPT("-f <file>", "where to download to; defaults to " DEF_FILE "\n")
+BAREBOX_CMD_HELP_OPT("-o <offset>", "what offset to download; defaults to 0\n")
+BAREBOX_CMD_HELP_OPT("-b <baudrate>", "baudrate at which to download; defaults to console baudrate\n")
+BAREBOX_CMD_HELP_OPT("-c", "Create file if it is not present; disabled by default\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page loadb_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_LOADB).
+*/
+
 #ifdef CONFIG_CMD_LOADB
 BAREBOX_CMD_START(loadb)
 	.cmd = do_load_serial_bin,
@@ -810,6 +817,20 @@ BAREBOX_CMD_START(loadb)
 	BAREBOX_CMD_HELP(cmd_loadb_help)
 BAREBOX_CMD_END
 #endif
+
+BAREBOX_CMD_HELP_START(loady)
+BAREBOX_CMD_HELP_USAGE("loady [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("Load binary file over serial line (ymodem mode)\n")
+BAREBOX_CMD_HELP_OPT("-f <file>", "where to download to; defaults to " DEF_FILE "\n")
+BAREBOX_CMD_HELP_OPT("-o <offset>", "what offset to download; defaults to 0\n")
+BAREBOX_CMD_HELP_OPT("-b <baudrate>", "baudrate at which to download; defaults to console baudrate\n")
+BAREBOX_CMD_HELP_OPT("-c", "Create file if it is not present; disabled by default\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page loady_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_LOADY).
+*/
 #ifdef CONFIG_CMD_LOADY
 BAREBOX_CMD_START(loady)
 	.cmd = do_load_serial_bin,
diff --git a/commands/login.c b/commands/login.c
index 3f6d308..6ec9adc 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -70,12 +70,16 @@ static int do_login(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_login_help[] =
-"Usage: login [-t timeout [<command>]]\n"
-"If a timeout is specified and expired the command will be executed;\n"
-"\"boot\" by default\n"
-;
+BAREBOX_CMD_HELP_START(login)
+BAREBOX_CMD_HELP_USAGE("login [-t <timeout> [<command>]]\n")
+BAREBOX_CMD_HELP_SHORT("login\n")
+BAREBOX_CMD_HELP_OPT("-t <timeout>", "If a timeout is specified, the command will be executed after the timeout expired. The default command is 'boot'\n")
+BAREBOX_CMD_HELP_END
 
+/**
+ * @page login_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_LOGIN).
+*/
 BAREBOX_CMD_START(login)
 	.cmd		= do_login,
 	.usage		= "login",
diff --git a/commands/ls.c b/commands/ls.c
index eac0f06..9f6a945 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -202,6 +202,11 @@ BAREBOX_CMD_HELP_OPT  ("-C", "list entries by columns\n")
 BAREBOX_CMD_HELP_OPT  ("-1", "list one file per line\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page ls_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_LS).
+*/
+
 BAREBOX_CMD_START(ls)
 	.cmd		= do_ls,
 	.usage		= "list a file or directory",
diff --git a/commands/lsmod.c b/commands/lsmod.c
index 26d2fe4..0d5d072 100644
--- a/commands/lsmod.c
+++ b/commands/lsmod.c
@@ -12,7 +12,17 @@ static int do_lsmod(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(lsmod)
+BAREBOX_CMD_HELP_USAGE("lsmod\n")
+BAREBOX_CMD_HELP_SHORT("List the currently inserted modules.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page lsmod_command
+ * \note This command is available only if enabled in menuconfig(CONFIG_CMD_LSMOD).
+*/
 BAREBOX_CMD_START(lsmod)
 	.cmd		= do_lsmod,
 	.usage		= "list modules",
+	BAREBOX_CMD_HELP(cmd_lsmod_help)
 BAREBOX_CMD_END
diff --git a/commands/mem.c b/commands/mem.c
index 36495e1..d0b2d63 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -210,24 +210,28 @@ out:
 	return errno;
 }
 
-static const __maybe_unused char cmd_md_help[] =
-"Usage md [OPTIONS] <region>\n"
-"display (hexdump) a memory region.\n"
-"options:\n"
-"  -s <file>   display file (default /dev/mem)\n"
-"  -b          output in bytes\n"
-"  -w          output in halfwords (16bit)\n"
-"  -l          output in words (32bit)\n"
-"\n"
-"Memory regions:\n"
-"Memory regions can be specified in two different forms: start+size\n"
-"or start-end, If <start> is omitted it defaults to 0. If end is omitted it\n"
-"defaults to the end of the device, except for interactive commands like md\n"
-"and mw for which it defaults to 0x100.\n"
-"Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.\n"
-"an optional suffix of k, M or G is for kibibytes, Megabytes or Gigabytes,\n"
-"respectively\n";
-
+BAREBOX_CMD_HELP_START(md)
+BAREBOX_CMD_HELP_USAGE("md [OPTIONS] <region>\n")
+BAREBOX_CMD_HELP_SHORT("Display (hexdump) a memory region.\n")
+BAREBOX_CMD_HELP_OPT("-b", "output in bytes\n")
+BAREBOX_CMD_HELP_OPT("-w", "output in halfwords (16bit)\n")
+BAREBOX_CMD_HELP_OPT("-l", "output in words (32bit)\n")
+BAREBOX_CMD_HELP_OPT("-s <file>", "display (source) file (default /dev/mem)\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Memory regions:\n")
+BAREBOX_CMD_HELP_TEXT("Memory regions can be specified in two different forms: start+size")
+BAREBOX_CMD_HELP_TEXT("or start-end, If <start> is omitted it defaults to 0. If end is omitted it")
+BAREBOX_CMD_HELP_TEXT("defaults to the end of the device, except for interactive commands like md")
+BAREBOX_CMD_HELP_TEXT("and mw for which it defaults to 0x100.\n")
+BAREBOX_CMD_HELP_TEXT("Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.")
+BAREBOX_CMD_HELP_TEXT("an optional suffix of k, M or G is for kibibytes, Megabytes or Gigabytes,")
+BAREBOX_CMD_HELP_TEXT("respectively.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page md_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MEMORY).
+*/
 
 BAREBOX_CMD_START(md)
 	.cmd		= do_mem_md,
@@ -287,12 +291,19 @@ static int do_mem_mw(struct command *cmdtp, int argc, char *argv[])
 	return errno;
 }
 
-static const __maybe_unused char cmd_mw_help[] =
-"Usage: mw [OPTIONS] <region> <value(s)>\n"
-"Write value(s) to the specifies region.\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -d <file>	write file (default /dev/mem)\n";
+BAREBOX_CMD_HELP_START(mw)
+BAREBOX_CMD_HELP_USAGE("mw [OPTIONS] <region> <value(s)>\n")
+BAREBOX_CMD_HELP_SHORT("Write value(s) to the specified region.\n")
+BAREBOX_CMD_HELP_OPT("-b", "do byte write\n")
+BAREBOX_CMD_HELP_OPT("-w", "do halfword (16bit) write\n")
+BAREBOX_CMD_HELP_OPT("-l", "do word (32bit) write\n")
+BAREBOX_CMD_HELP_OPT("-d <file>", "write (destination) file (default /dev/mem)\n");
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page mw_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MEMORY).
+*/
 
 BAREBOX_CMD_START(mw)
 	.cmd		= do_mem_mw,
@@ -390,18 +401,25 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_memcmp_help[] =
-"Usage: memcmp [OPTIONS] <addr1> <addr2> <count>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Compare memory regions specified with addr1 and addr2\n"
-"of size <count> bytes. If source is a file count can\n"
-"be left unspecified in which case the whole file is\n"
-"compared\n";
+BAREBOX_CMD_HELP_START(memcmp)
+BAREBOX_CMD_HELP_USAGE("memcmp [OPTIONS] <addr1> <addr2> <count>\n")
+BAREBOX_CMD_HELP_SHORT("Memory compare.\n")
+BAREBOX_CMD_HELP_OPT("-b", "use byte accesses\n")
+BAREBOX_CMD_HELP_OPT("-w", "use halfword (16bit) accesses\n")
+BAREBOX_CMD_HELP_OPT("-l", "use word (32bit) accesses\n")
+BAREBOX_CMD_HELP_OPT("-s <file>", "source file (default /dev/mem)\n")
+BAREBOX_CMD_HELP_OPT("-d <file>", "destination file (default /dev/mem)\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Compare memory regions specified with 'addr1' and 'addr2'\n")
+BAREBOX_CMD_HELP_TEXT("of size 'count' bytes. If source is a file count can\n")
+BAREBOX_CMD_HELP_TEXT("be left unspecified in which case the whole file is\n")
+BAREBOX_CMD_HELP_TEXT("compared\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page memcmp_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MEMORY).
+*/
 
 BAREBOX_CMD_START(memcmp)
 	.cmd		= do_mem_cmp,
@@ -500,15 +518,20 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_memcpy_help[] =
-"Usage: memcpy [OPTIONS] <src> <dst> <count>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l   use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Copy memory at <src> of <count> bytes to <dst>\n";
+BAREBOX_CMD_HELP_START(memcpy)
+BAREBOX_CMD_HELP_USAGE("memcpy [OPTIONS] <src> <dst> <count>\n")
+BAREBOX_CMD_HELP_SHORT("Copy 'count' bytes of memory from 'src' to 'dst'.\n")
+BAREBOX_CMD_HELP_OPT("-b", "use byte accesses\n")
+BAREBOX_CMD_HELP_OPT("-w", "use halfword (16bit) accesses\n")
+BAREBOX_CMD_HELP_OPT("-l", "use word (32bit) accesses\n")
+BAREBOX_CMD_HELP_OPT("-s <file>", "source file (default /dev/mem)\n")
+BAREBOX_CMD_HELP_OPT("-d <file>", "destination file (default /dev/mem)\n");
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page memcpy_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MEMORY).
+*/
 
 BAREBOX_CMD_START(memcpy)
 	.cmd		= do_mem_cp,
@@ -565,16 +588,20 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_memset_help[] =
-"Usage: memset [OPTIONS] <src> <c> <n>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l   use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Fill the first n bytes of area with byte c\n";
-
+BAREBOX_CMD_HELP_START(memset)
+BAREBOX_CMD_HELP_USAGE("memset [OPTIONS] <offset> <value> <count>\n")
+BAREBOX_CMD_HELP_SHORT("Fill the first 'count' bytes of area with byte 'value', starting at offset 'offset'.\n")
+BAREBOX_CMD_HELP_OPT("-b", "use byte accesses\n")
+BAREBOX_CMD_HELP_OPT("-w", "use halfword (16bit) accesses\n")
+BAREBOX_CMD_HELP_OPT("-l", "use word (32bit) accesses\n")
+BAREBOX_CMD_HELP_OPT("-s <file>", "source file (default /dev/mem)\n")
+BAREBOX_CMD_HELP_OPT("-d <file>", "destination file (default /dev/mem)\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page memset_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MEMORY).
+*/
 BAREBOX_CMD_START(memset)
 	.cmd		= do_memset,
 	.usage		= "memory fill",
diff --git a/commands/meminfo.c b/commands/meminfo.c
index abbaf9c..dabaa4b 100644
--- a/commands/meminfo.c
+++ b/commands/meminfo.c
@@ -30,7 +30,17 @@ static int do_meminfo(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(meminfo)
+BAREBOX_CMD_HELP_USAGE("meminfo\n")
+BAREBOX_CMD_HELP_SHORT("Print info about memory usage.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page meminfo_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MEMINFO).
+*/
 BAREBOX_CMD_START(meminfo)
 	.cmd		= do_meminfo,
 	.usage		= "print info about memory usage",
+	BAREBOX_CMD_HELP(cmd_meminfo_help)
 BAREBOX_CMD_END
diff --git a/commands/memtest.c b/commands/memtest.c
index d9c8b3d..b6ae31c 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -340,13 +340,21 @@ static int do_mem_mtest(struct command *cmdtp, int argc, char *argv[])
 	return mem_test(start, end, pattern);
 }
 
-static const __maybe_unused char cmd_mtest_help[] =
-"Usage: <start> <end> "
-#ifdef CONFIG_CMD_MTEST_ALTERNATIVE
-"[pattern]"
-#endif
-"\nsimple RAM read/write test\n";
-
+BAREBOX_CMD_HELP_START(mtest)
+BAREBOX_CMD_HELP_USAGE("mtest <startaddr> <endaddr> [pattern (*)]\n")
+BAREBOX_CMD_HELP_SHORT("Simple memory read/write test.\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Perform a memory test. A more complete alternative test")
+BAREBOX_CMD_HELP_TEXT("can be configured using CONFIG_CMD_MTEST_ALTERNATIVE. In")
+BAREBOX_CMD_HELP_TEXT("this case, any 'pattern' argument is ignored. The complete test")
+BAREBOX_CMD_HELP_TEXT("loops until interrupted by ctrl-c or by a failure of one of the")
+BAREBOX_CMD_HELP_TEXT("sub-tests.")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page mtest_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MTEST).
+*/
 BAREBOX_CMD_START(mtest)
 	.cmd		= do_mem_mtest,
 	.usage		= "simple RAM test",
diff --git a/commands/menu.c b/commands/menu.c
index c3e0901..6b75f34 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -409,69 +409,66 @@ end:
 	return 1;
 }
 
-static const __maybe_unused char cmd_menu_help[] =
-"Usage: menu [OPTION]... \n"
-"Manage Menu\n"
-"  -m  menu\n"
-"  -l  list\n"
-"  -s  show\n"
-#if defined(CONFIG_CMD_MENU_MANAGEMENT)
-"Advanced\n"
-"  -e  menu entry\n"
-"  -a  add\n"
-"  -r  remove\n"
-"  -S  select\n"
-#endif
-"\n"
-"How to\n"
-"\n"
-"Show menu\n"
-"  (-A auto select delay)\n"
-"  (-d auto select description)\n"
-"  menu -s -m <menu> [-A delay] [-d auto_display]\n"
-"\n"
-"List menu\n"
-"  menu -l\n"
-"\n"
-#if defined(CONFIG_CMD_MENU_MANAGEMENT)
-"Add a menu\n"
-"  menu -a -m <name> -d <description>\n"
-"\n"
-"Remove a menu\n"
-"  menu -r -m <name>\n"
-"\n"
-"Add an entry\n"
-"  (-R for do no exit the menu after executing the command)\n"
-"  (-b for box style 1 for selected)\n"
-"  (and optional -c for the command to run when we change the state)\n"
-"  menu -e -a -m <menu> -c <command> [-R] [-b 0|1] -d <description>\n"
-
-"Add a submenu entry\n"
-"  (-R is not needed)\n"
-"  (-b for box style 1 for selected)\n"
-"  (and -c is not needed)\n"
-"  menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>\n"
-"\n"
-"Remove an entry\n"
-"  menu -e -r -m <name> -n <num>\n"
-"\n"
-"Select an entry\n"
-"  menu -m <menu> -S -n <entry num starting at 1>\n"
-"\n"
-"List menu\n"
-"  menu -e -l [menu]\n"
-"\n"
-"Menu example\n"
-"menu -a -m boot -d \"Boot Menu\"\n"
-"menu -e -a -m boot -c boot -d \"Boot\"\n"
-"menu -e -a -m boot -c reset -d \"Reset\"\n"
-"menu -s -m boot\n"
-#else
-"Menu example\n"
-"menu -s -m boot\n"
-#endif
-;
-
+BAREBOX_CMD_HELP_START(menu)
+BAREBOX_CMD_HELP_USAGE("menu [OPTIONS]... \n")
+BAREBOX_CMD_HELP_SHORT("Manage Menu\n")
+BAREBOX_CMD_HELP_OPT("-m", "menu\n")
+BAREBOX_CMD_HELP_OPT("-l", "list\n")
+BAREBOX_CMD_HELP_OPT("-s", "show\n")
+BAREBOX_CMD_HELP_OPT("-e", "menu entry (advanced option)\n")
+BAREBOX_CMD_HELP_OPT("-a", "add (advanced option)\n")
+BAREBOX_CMD_HELP_OPT("-r", "remove (advanced option)\n")
+BAREBOX_CMD_HELP_OPT("-S", "select (advanced option)\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("How to\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Show menu\n")
+BAREBOX_CMD_HELP_TEXT("  (-A auto select delay)\n")
+BAREBOX_CMD_HELP_TEXT("  (-d auto select description)\n")
+BAREBOX_CMD_HELP_TEXT("  menu -s -m <menu> [-A delay] [-d auto_display]\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("List menu\n")
+BAREBOX_CMD_HELP_TEXT("  menu -l\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Add a menu\n")
+BAREBOX_CMD_HELP_TEXT("  menu -a -m <name> -d <description>\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Remove a menu\n")
+BAREBOX_CMD_HELP_TEXT("  menu -r -m <name>\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Add an entry\n")
+BAREBOX_CMD_HELP_TEXT("  (-R for do no exit the menu after executing the command)\n")
+BAREBOX_CMD_HELP_TEXT("  (-b for box style 1 for selected)\n")
+BAREBOX_CMD_HELP_TEXT("  (and optional -c for the command to run when we change the state)\n")
+BAREBOX_CMD_HELP_TEXT("  menu -e -a -m <menu> -c <command> [-R] [-b 0|1] -d <description>\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Add a submenu entry\n")
+BAREBOX_CMD_HELP_TEXT("  (-R is not needed)\n")
+BAREBOX_CMD_HELP_TEXT("  (-b for box style 1 for selected)\n")
+BAREBOX_CMD_HELP_TEXT("  (and -c is not needed)\n")
+BAREBOX_CMD_HELP_TEXT("  menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Remove an entry\n")
+BAREBOX_CMD_HELP_TEXT("  menu -e -r -m <name> -n <num>\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Select an entry\n")
+BAREBOX_CMD_HELP_TEXT("  menu -m <menu> -S -n <entry num starting at 1>\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("List menu\n")
+BAREBOX_CMD_HELP_TEXT("  menu -e -l [menu]\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("Menu example\n")
+BAREBOX_CMD_HELP_TEXT("menu -a -m boot -d \"Boot Menu\"\n")
+BAREBOX_CMD_HELP_TEXT("menu -e -a -m boot -c boot -d \"Boot\"\n")
+BAREBOX_CMD_HELP_TEXT("menu -e -a -m boot -c reset -d \"Reset\"\n")
+BAREBOX_CMD_HELP_TEXT("menu -s -m boot\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page menu_command
+ * \note @li This command is available only if enabled in menuconfig (CONFIG_CMD_MENU).
+ *	@li The options that are marked as advanced are only available if enabled in menuconfig (CONFIG_CMD_MENU_MANAGEMENT).
+*/
 BAREBOX_CMD_START(menu)
 	.cmd		= do_menu,
 	.usage		= "Menu Management",
diff --git a/commands/mkdir.c b/commands/mkdir.c
index b66795b..e5f06b3 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -59,12 +59,18 @@ static int do_mkdir(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_mkdir_help[] =
-"Usage: mkdir [directories]\n"
-"Create new directories\n";
+BAREBOX_CMD_HELP_START(mkdir)
+BAREBOX_CMD_HELP_USAGE("mkdir [OPTIONS] <directory> [directories]\n")
+BAREBOX_CMD_HELP_SHORT("Create new directories.\n")
+BAREBOX_CMD_HELP_OPT("-p", "Create parent directories if they do not exist.\n")
+BAREBOX_CMD_HELP_END
 
+/**
+ * @page mkdir_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MKDIR).
+*/
 BAREBOX_CMD_START(mkdir)
 	.cmd		= do_mkdir,
-	.usage		= "make directories",
+	.usage		= "Create new directories.",
 	BAREBOX_CMD_HELP(cmd_mkdir_help)
 BAREBOX_CMD_END
diff --git a/commands/mount.c b/commands/mount.c
index 52d1700..ef1c1cc 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -66,17 +66,16 @@ BAREBOX_CMD_HELP_END
 
 /**
  * @page mount_command
-
-<ul>
-<li>\<device> can be a device in /dev or some arbitrary string if no
-    device is needed for this driver, i.e. on ramfs. </li>
-<li>\<fstype> is the filesystem driver. A list of available drivers can
-    be shown with the \ref devinfo_command command.</li>
-<li>\<mountpoint> must be an empty directory, one level below the /
-    directory.</li>
-</ul>
-
- */
+ * 
+ * @li &lt;device&gt; can be a device in /dev or some arbitrary string if no
+ *     device is needed for this driver, i.e. on ramfs.
+ * @li &lt;fstype&gt; is the filesystem driver. A list of available drivers can
+ *     be shown with the \ref devinfo_command command.
+ * @li &lt;mountpoint&gt; must be an empty directory, one level below the /
+ *     directory.
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_MOUNT).
+*/
 
 /**
  * @page how_mount_works How mount works in barebox
diff --git a/commands/nand.c b/commands/nand.c
index 88f242d..688848a 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -100,12 +100,18 @@ static int do_nand(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_nand_help[] =
-"Usage: nand [OPTION]...\n"
-"nand related commands\n"
-"  -a  <dev>  register a bad block aware device ontop of a normal nand device\n"
-"  -d  <dev>  deregister a bad block aware device\n"
-"  -b  <ofs> <dev> mark block at offset ofs as bad\n";
+BAREBOX_CMD_HELP_START(nand)
+BAREBOX_CMD_HELP_USAGE("nand [OPTION]...\n")
+BAREBOX_CMD_HELP_SHORT("NAND specific handling.\n")
+BAREBOX_CMD_HELP_OPT("-a <dev>", "register a bad block aware device ontop of a normal nand device\n")
+BAREBOX_CMD_HELP_OPT("-d <dev>", "deregister a bad block aware device\n")
+BAREBOX_CMD_HELP_OPT("-b <ofs> <dev>", "mark block at offset 'ofs' as bad\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page nand_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_NAND).
+*/
 
 BAREBOX_CMD_START(nand)
 	.cmd		= do_nand,
diff --git a/commands/net.c b/commands/net.c
index 938463c..a4224c0 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -57,6 +57,7 @@ static int do_rarpb(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+
 BAREBOX_CMD_START(rarpboot)
 	.cmd		= do_rarpb,
 	.usage		= "boot image via network using rarp/tftp protocol",
@@ -64,6 +65,15 @@ BAREBOX_CMD_START(rarpboot)
 BAREBOX_CMD_END
 #endif /* CONFIG_NET_RARP */
 
+BAREBOX_CMD_HELP_START(rarpboot)
+BAREBOX_CMD_HELP_USAGE("rarpboot [loadAddress] [bootfilename]\n")
+BAREBOX_CMD_HELP_SHORT("boot image via network using rarp/tftp protocol\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page rarpboot_command
+ * \note This command is available only if enabled in menuconfig(CONFIG_CMD_NET && CONFIG_NET_RARP).
+*/
+
 static int do_ethact(struct command *cmdtp, int argc, char *argv[])
 {
 	struct eth_device *edev;
@@ -89,8 +99,15 @@ static int do_ethact(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_ethact_help[] =
-"Usage: ethact [ethx]\n";
+BAREBOX_CMD_HELP_START(ethact)
+BAREBOX_CMD_HELP_USAGE("ethact [ethernet device]\n")
+BAREBOX_CMD_HELP_SHORT("Set current ethernet device\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page ethact_command
+ * \note This command is available only if enabled in menuconfig(CONFIG_CMD_NET).
+*/
 
 BAREBOX_CMD_START(ethact)
 	.cmd		= do_ethact,
diff --git a/commands/partition.c b/commands/partition.c
index db9b9fb..6e4aabd 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -158,14 +158,15 @@ BAREBOX_CMD_HELP_END
 
 /**
  * @page addpart_command
-
-The size and the offset can be given in decimal (without any prefix) and
-in hex (prefixed with 0x). Both can have an optional suffix K, M or G.
-The size of the last partition can be specified as '-' for the remaining
-space on the device.  This format is the same as used by the Linux
-kernel or cmdline mtd partitions.
-
-\todo This command has to be reworked and will probably change it's API.
+ * The size and the offset can be given in decimal (without any prefix) and
+ * in hex (prefixed with 0x). Both can have an optional suffix K, M or G.
+ * The size of the last partition can be specified as '-' for the remaining
+ * space on the device.  This format is the same as used by the Linux
+ * kernel or cmdline mtd partitions.
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_PARTITION).
+ *
+ * \todo This command has to be reworked and will probably change it's API.
 */
 
 BAREBOX_CMD_START(addpart)
@@ -196,13 +197,15 @@ BAREBOX_CMD_HELP_END
 
 /**
  * @page delpart_command
-
-Partitions are created by adding their description with the addpart
-command. If you want to get rid of a partition again, use delpart. The
-argument list is taken as a list of partitions to be deleted.
-
-\todo Add an example
-
+ *
+ * Partitions are created by adding their description with the \ref addpart_command
+ * command. If you want to get rid of a partition again, use delpart. The
+ * argument list is taken as a list of partitions to be deleted.
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_PARTITION).
+ *
+ * \todo Add an example
+ *
  */
 
 BAREBOX_CMD_START(delpart)
diff --git a/commands/passwd.c b/commands/passwd.c
index 9a07873..5cf230b 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -85,11 +85,14 @@ disable:
 	return ret;
 }
 
-static const __maybe_unused char cmd_passwd_help[] =
-"Usage: passwd\n"
-"passwd allow you to specify a password\n"
-"to disable it put an empty password\n"
-;
+BAREBOX_CMD_HELP_START(passwd)
+BAREBOX_CMD_HELP_USAGE("passwd\n")
+BAREBOX_CMD_HELP_SHORT("Allows you to specify a password. To disable, specify an empty password.\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page passwd_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_PASSWD).
+*/
 
 BAREBOX_CMD_START(passwd)
 	.cmd		= do_passwd,
diff --git a/commands/printenv.c b/commands/printenv.c
index 4078bbc..e13e865 100644
--- a/commands/printenv.c
+++ b/commands/printenv.c
@@ -72,11 +72,12 @@ BAREBOX_CMD_HELP_END
 
 /**
  * @page printenv_command
-
-<p>If an argument is given, printenv prints the content of an environment
-variable to the terminal. If no argument is specified, all variables are
-printed.</p>
-
+ *
+ * If an argument is given, printenv prints the content of an environment
+ * variable to the terminal. If no argument is specified, all variables are
+ * printed.
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_PRINTENV).
  */
 
 BAREBOX_CMD_START(printenv)
diff --git a/commands/pwd.c b/commands/pwd.c
index d51fa1a..bd06694 100644
--- a/commands/pwd.c
+++ b/commands/pwd.c
@@ -29,7 +29,16 @@ static int do_pwd(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(pwd)
+BAREBOX_CMD_HELP_USAGE("pwd\n")
+BAREBOX_CMD_HELP_SHORT("Print the current working directory.\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page pwd_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_PWD).
+*/
 BAREBOX_CMD_START(pwd)
 	.cmd		= do_pwd,
 	.usage		= "print working directory",
+	BAREBOX_CMD_HELP(cmd_pwd_help)
 BAREBOX_CMD_END
diff --git a/commands/readline.c b/commands/readline.c
index cf2625f..417c757 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -45,10 +45,14 @@ static int do_readline(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_readline_help[] =
-"Usage: readline <prompt> VAR\n"
-"readline reads a line of user input into variable VAR.\n";
-
+BAREBOX_CMD_HELP_START(readline)
+BAREBOX_CMD_HELP_USAGE("readline <prompt> <var>\n")
+BAREBOX_CMD_HELP_SHORT("readline prints 'prompt' on output and reads a line of user input into variable 'var'.\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page readline_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_READLINE).
+*/
 BAREBOX_CMD_START(readline)
 	.cmd		= do_readline,
 	.usage		= "prompt for user input",
diff --git a/commands/reginfo.c b/commands/reginfo.c
index 90651d5..3aeb308 100644
--- a/commands/reginfo.c
+++ b/commands/reginfo.c
@@ -29,7 +29,16 @@ static int do_reginfo(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(reginfo)
+BAREBOX_CMD_HELP_USAGE("reginfo\n")
+BAREBOX_CMD_HELP_SHORT("Print register information.\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page reginfo_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_REGINFO).
+*/
 BAREBOX_CMD_START(reginfo)
 	.cmd		= do_reginfo,
 	.usage		= "print register information",
+	BAREBOX_CMD_HELP(cmd_reginfo_help)
 BAREBOX_CMD_END
diff --git a/commands/reset.c b/commands/reset.c
index 46ab901..d23947f 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -31,7 +31,18 @@ static int cmd_reset(struct command *cmdtp, int argc, char *argv[])
 	return 1;
 }
 
+BAREBOX_CMD_HELP_START(reset)
+BAREBOX_CMD_HELP_USAGE("reset\n")
+BAREBOX_CMD_HELP_SHORT("Perform RESET of the CPU")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page reset_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_RESET).
+*/
+
 BAREBOX_CMD_START(reset)
 	.cmd		= cmd_reset,
 	.usage		= "Perform RESET of the CPU",
+	BAREBOX_CMD_HELP(cmd_reset_help)
 BAREBOX_CMD_END
diff --git a/commands/rm.c b/commands/rm.c
index 3437ae5..cc7aeb2 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -42,12 +42,17 @@ static int do_rm(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_rm_help[] =
-"Usage: rm [FILES]\n"
-"Remove files\n";
+BAREBOX_CMD_HELP_START(rm)
+BAREBOX_CMD_HELP_USAGE("rm <files>\n")
+BAREBOX_CMD_HELP_SHORT("Remove one or more files.\n")
+BAREBOX_CMD_HELP_END
 
+/**
+ * @page rm_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_RM).
+*/
 BAREBOX_CMD_START(rm)
 	.cmd		= do_rm,
-	.usage		= "remove files",
+	.usage		= "remove one or more files",
 	BAREBOX_CMD_HELP(cmd_rm_help)
 BAREBOX_CMD_END
diff --git a/commands/rmdir.c b/commands/rmdir.c
index 83a0b02..37b39c7 100644
--- a/commands/rmdir.c
+++ b/commands/rmdir.c
@@ -21,12 +21,18 @@ static int do_rmdir(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_rmdir_help[] =
-"Usage: rmdir [directories]\n"
-"Remove directories. The directories have to be empty.\n";
+BAREBOX_CMD_HELP_START(rmdir)
+BAREBOX_CMD_HELP_USAGE("rmdir <directory> [directories]\n")
+BAREBOX_CMD_HELP_SHORT("Remove one or more directories. The directories must be empty.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page rmdir_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_RMDIR).
+*/
 
 BAREBOX_CMD_START(rmdir)
 	.cmd		= do_rmdir,
-	.usage		= "remove directorie(s)",
+	.usage		= "remove one or more directories",
 	BAREBOX_CMD_HELP(cmd_rmdir_help)
 BAREBOX_CMD_END
diff --git a/commands/sleep.c b/commands/sleep.c
index 40a3a47..008eea9 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -43,7 +43,20 @@ static int do_sleep(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(sleep)
+BAREBOX_CMD_HELP_USAGE("sleep <n>\n")
+BAREBOX_CMD_HELP_SHORT("Delay execution for 'n' seconds.\n")
+BAREBOX_CMD_HELP_TEXT("\n")
+BAREBOX_CMD_HELP_TEXT("This command can be aborted using ctrl-c.")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page sleep_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_SLEEP).
+*/
+
 BAREBOX_CMD_START(sleep)
 	.cmd		= do_sleep,
-	.usage		= "delay execution for n seconds",
+	.usage		= "delay execution for 'n' seconds",
+	BAREBOX_CMD_HELP(cmd_sleep_help)
 BAREBOX_CMD_END
diff --git a/commands/test.c b/commands/test.c
index 4af3515..9e5595b 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -222,16 +222,20 @@ out:
 
 static const char *test_aliases[] = { "[", NULL};
 
-static const __maybe_unused char cmd_test_help[] =
-"Usage: test [OPTIONS]\n"
-"options: !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e, -f\n"
-"see 'man test' on your PC for more information.\n";
+BAREBOX_CMD_HELP_START(test)
+BAREBOX_CMD_HELP_USAGE("test [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("Minimal test implementation like in /bin/sh\n")
+BAREBOX_CMD_HELP_SHORT("see 'man test' on your PC for more information.\n")
+BAREBOX_CMD_HELP_END
 
-static const __maybe_unused char cmd_test_usage[] = "minimal test like /bin/sh";
+/**
+ * @page test_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_TEST).
+*/
 
 BAREBOX_CMD_START(test)
 	.aliases	= test_aliases,
 	.cmd		= do_test,
-	.usage		= cmd_test_usage,
+	.usage		= "minimal test like /bin/sh",
 	BAREBOX_CMD_HELP(cmd_test_help)
 BAREBOX_CMD_END
diff --git a/commands/time.c b/commands/time.c
index 2fcaac0..d9fae89 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -52,8 +52,8 @@ BAREBOX_CMD_HELP_END
 /**
  * @page time_command
 
-\note	@li This command depends on <command> being interruptible, otherwise the timer may overrun resulting in incorrect results.
-	@li This command is available only if enabled in menuconfig.
+\note	@li This command depends on &lt;command&gt; being interruptible, otherwise the timer may overrun resulting in incorrect results.
+	@li This command is available only if enabled in menuconfig(CONFIG_CMD_TIME).
  */
 
 BAREBOX_CMD_START(time)
diff --git a/commands/timeout.c b/commands/timeout.c
index 5f2ab9a..7f6e43f 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -93,15 +93,21 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_timeout_help[] =
-"Usage: timeout [OPTION]... <timeout>\n"
-"Wait <timeout> seconds for a timeout. Return 1 if the user intervented\n"
-"or 0 if a timeout occured\n"
-"  -a  interrupt on any key\n"
-"  -c  interrupt on ctrl-c\n"
-"  -r  interrupt on return\n"
-"  -s  silent mode\n";
+BAREBOX_CMD_HELP_START(timeout)
+BAREBOX_CMD_HELP_USAGE("timeout [OPTIONS] <timeout>\n")
+BAREBOX_CMD_HELP_SHORT("Wait 'timeout' seconds for a timeout.\n")
+BAREBOX_CMD_HELP_OPT("-a", "interrupt on any key\n")
+BAREBOX_CMD_HELP_OPT("-c", "interrupt on ctrl-c\n")
+BAREBOX_CMD_HELP_OPT("-r", "interrupt on return\n")
+BAREBOX_CMD_HELP_OPT("-s", "silent mode\n")
+BAREBOX_CMD_HELP_TEXT("Return 1 if the user intervented, or 0 otherwise (and ")
+BAREBOX_CMD_HELP_TEXT("thus a timeout occured).\n")
+BAREBOX_CMD_HELP_END
 
+/**
+ * @page timeout_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_TIMEOUT).
+*/
 BAREBOX_CMD_START(timeout)
 	.cmd		= do_timeout,
 	.usage		= "wait for a specified timeout",
diff --git a/commands/trigger.c b/commands/trigger.c
index 095f96d..7b53341 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -99,6 +99,11 @@ BAREBOX_CMD_HELP_OPT  ("-t <trigger> <led>",  "set a trigger for a led\n")
 BAREBOX_CMD_HELP_OPT  ("-d <trigger>",  "disable a trigger\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page trigger_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_TRIGGER).
+*/
+
 BAREBOX_CMD_START(trigger)
 	.cmd		= do_trigger,
 	.usage		= "handle LED triggers",
diff --git a/commands/true.c b/commands/true.c
index 8c77dec..47ff185 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -29,8 +29,20 @@ static int do_true(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(true)
+BAREBOX_CMD_HELP_USAGE("true\n")
+BAREBOX_CMD_HELP_SHORT("Do nothing but exit with a status code indicating success.\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page true_command
+ * If this is not what you want, you are probably looking for \ref false_command.
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_TRUE).
+*/
+
 BAREBOX_CMD_START(true)
 	.cmd		= do_true,
 	.usage		= "do nothing, successfully",
+	BAREBOX_CMD_HELP(cmd_true_help)
 BAREBOX_CMD_END
 
diff --git a/commands/ubi.c b/commands/ubi.c
index 3da0835..28be9e7 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -44,10 +44,16 @@ static int do_ubimkvol(struct command *cmdtp, int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubimkvol_help[] =
-"Usage: ubimkvol <ubidev> <name> <size>\n"
-"Create an ubi volume on <ubidev> with name <name> and size <size>\n"
-"If size os zero all available space is used for the volume\n";
+BAREBOX_CMD_HELP_START(ubimkvol)
+BAREBOX_CMD_HELP_USAGE("ubimkvol <ubidev> <name> <size>\n")
+BAREBOX_CMD_HELP_SHORT("Create an ubi volume on 'ubidev' with name 'name' and size 'size'.\n")
+BAREBOX_CMD_HELP_TEXT("If 'size' is set to 0, all available space is used for the volume.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page ubimkvol_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_UBI).
+*/
 
 BAREBOX_CMD_START(ubimkvol)
 	.cmd		= do_ubimkvol,
@@ -82,9 +88,15 @@ static int do_ubiattach(struct command *cmdtp, int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubiattach_help[] =
-"Usage: ubiattach <mtddev>\n"
-"Attach <mtddev> to ubi\n";
+BAREBOX_CMD_HELP_START(ubiattach)
+BAREBOX_CMD_HELP_USAGE("ubiattach <mtddev>\n")
+BAREBOX_CMD_HELP_SHORT("Attach 'mtddev' to ubi.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page ubiattach_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_UBI).
+*/
 
 BAREBOX_CMD_START(ubiattach)
 	.cmd		= do_ubiattach,
@@ -117,9 +129,15 @@ static int do_ubirmvol(struct command *cmdtp, int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubirmvol_help[] =
-"Usage: ubirmvol <ubidev> <name>\n"
-"Delete ubi volume <name> from <ubidev>\n";
+BAREBOX_CMD_HELP_START(ubirmvol)
+BAREBOX_CMD_HELP_USAGE("ubirmvol <ubidev> <name>\n")
+BAREBOX_CMD_HELP_SHORT("Delete ubi volume 'name' from 'ubidev'\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page ubirmvol_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_UBI).
+*/
 
 BAREBOX_CMD_START(ubirmvol)
 	.cmd		= do_ubirmvol,
diff --git a/commands/umount.c b/commands/umount.c
index 6ae5844..91ecc2d 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -38,9 +38,15 @@ static int do_umount(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_umount_help[] =
-"Usage: umount <mountpoint>\n"
-"umount a filesystem mounted on a specific mountpoint\n";
+BAREBOX_CMD_HELP_START(umount)
+BAREBOX_CMD_HELP_USAGE("umount <mountpoint>\n")
+BAREBOX_CMD_HELP_SHORT("Detach a filesystem mounted on a 'mountpoint'\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page umount_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_UMOUNT).
+*/
 
 BAREBOX_CMD_START(umount)
 	.cmd		= do_umount,
diff --git a/commands/unlzo.c b/commands/unlzo.c
index 0b6dd4b..059bdfa 100644
--- a/commands/unlzo.c
+++ b/commands/unlzo.c
@@ -57,9 +57,15 @@ exit_close:
 	return ret;
 }
 
-static const __maybe_unused char cmd_unlzo_help[] =
-"Usage: unlzo <infile> <outfile>\n"
-"Uncompress a lzo compressed file\n";
+BAREBOX_CMD_HELP_START(unlzo)
+BAREBOX_CMD_HELP_USAGE("unlzo <infile> <outfile>\n")
+BAREBOX_CMD_HELP_SHORT("Uncompress a lzo compressed file.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page unlzo_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_UNLZO).
+*/
 
 BAREBOX_CMD_START(unlzo)
         .cmd            = do_unlzo,
diff --git a/commands/usb.c b/commands/usb.c
index 0aac78e..5dec6f8 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -30,9 +30,15 @@ static int do_usb(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_usb_help[] =
-"Usage: usb\n"
-"(re-)detect USB devices\n";
+BAREBOX_CMD_HELP_START(usb)
+BAREBOX_CMD_HELP_USAGE("usb\n")
+BAREBOX_CMD_HELP_SHORT("(Re-)detect USB devices\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page usb_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_USB).
+*/
 
 BAREBOX_CMD_START(usb)
 	.cmd		= do_usb,
diff --git a/commands/version.c b/commands/version.c
index 2b3ac05..e107e9a 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -30,6 +30,15 @@ static int do_version(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(version)
+BAREBOX_CMD_HELP_USAGE("version\n")
+BAREBOX_CMD_HELP_SHORT("Print monitor version\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page version_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_VERSION).
+*/
 BAREBOX_CMD_START(version)
 	.cmd		= do_version,
 	.usage		= "print monitor version",
diff --git a/common/command.c b/common/command.c
index ab02ed5..0abeb57 100644
--- a/common/command.c
+++ b/common/command.c
@@ -55,9 +55,18 @@ BAREBOX_CMD_START(exit)
 	.cmd		= do_exit,
 	.usage		= "exit script",
 BAREBOX_CMD_END
-
 #endif
 
+BAREBOX_CMD_HELP_START(exit)
+BAREBOX_CMD_HELP_USAGE("exit\n")
+BAREBOX_CMD_HELP_SHORT("Exit a script\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page exit_command
+ * \note This command is only available in the Hush shell (CONFIG_SHELL_HUSH).
+*/
+
 void barebox_cmd_usage(struct command *cmdtp)
 {
 #ifdef	CONFIG_LONGHELP
diff --git a/common/hush.c b/common/hush.c
index 573bd3e..75286c8 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1657,10 +1657,15 @@ static int do_sh(struct command *cmdtp, int argc, char *argv[])
 	return execute_script(argv[1], argc - 1, argv + 1);
 }
 
-static const __maybe_unused char cmd_sh_help[] =
-"Usage: sh filename [arguments]\n"
-"\n"
-"Execute a shell script\n";
+BAREBOX_CMD_HELP_START(sh)
+BAREBOX_CMD_HELP_USAGE("sh <filename> [arguments]\n")
+BAREBOX_CMD_HELP_SHORT("Execute a script named <filename> in a newly created shell and forward <arguments> if specified to it.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page sh_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_SHELL_HUSH).
+*/
 
 BAREBOX_CMD_START(sh)
 	.cmd		= do_sh,
@@ -1678,24 +1683,37 @@ static int do_source(struct command *cmdtp, int argc, char *argv[])
 
 static const char *source_aliases[] = { ".", NULL};
 
-static const __maybe_unused char cmd_source_help[] =
-"Usage: .  filename [arguments]\n"
-"or     source filename [arguments]\n"
-"\n"
-"Read  and  execute  commands  from filename in the current shell\n"
-"environment and return the exit status of the last command  exe-\n"
-"cuted from filename\n";
+BAREBOX_CMD_HELP_START(source)
+BAREBOX_CMD_HELP_USAGE("source <filename> [args] OR . <filename> [args]\n")
+BAREBOX_CMD_HELP_SHORT("Read and execute commands from <filename> in the current shell environment.\n")
+BAREBOX_CMD_HELP_TEXT("If one or more arguments are specified, forward them. The return value is the exit status of the last command executed.")
+BAREBOX_CMD_HELP_END
 
-static const __maybe_unused char cmd_source_usage[] =
-"execute shell script in current shell environment";
+/**
+ * @page source_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_SHELL_HUSH).
+*/
 
 BAREBOX_CMD_START(source)
 	.aliases	= source_aliases,
 	.cmd		= do_source,
-	.usage		= cmd_source_usage,
+	.usage		= "execute shell script in current shell environment",
 	BAREBOX_CMD_HELP(cmd_source_help)
 BAREBOX_CMD_END
 
+BAREBOX_CMD_HELP_START(getopt)
+BAREBOX_CMD_HELP_USAGE("getopt <optstring> <var>\n")
+BAREBOX_CMD_HELP_SHORT("Hush option parser\n")
+BAREBOX_CMD_HELP_TEXT("<optstring> is a string with valid options. Add\n"
+	"a colon to an options if this option has a required argument or two\n"
+	"colons for an optional argument. The current option is saved in <var>,\n"
+	"arguments are saved in OPTARG.")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page getopt_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_SHELL_HUSH && CONFIG_HUSH_GETOPT).
+*/
 #ifdef CONFIG_HUSH_GETOPT
 static int do_getopt(struct command *cmdtp, int argc, char *argv[])
 {
@@ -1706,14 +1724,6 @@ static int do_getopt(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_getopt_help[] =
-"Usage: getopt <optstring> <var>\n"
-"\n"
-"hush option parser. <optstring> is a string with valid options. Add\n"
-"a colon to an options if this option has a required argument or two\n"
-"colons for an optional argument. The current option is saved in <var>,\n"
-"arguments are saved in OPTARG.\n";
-
 BAREBOX_CMD_START(getopt)
 	.cmd		= do_getopt,
 	.usage		= "getopt <optstring> <var>",
@@ -1721,22 +1731,9 @@ BAREBOX_CMD_START(getopt)
 BAREBOX_CMD_END
 #endif
 
+
 /**
  * @file
  * @brief A prototype Bourne shell grammar parser
  */
 
-/** @page sh_command Starting shell
- *
- * Usage: sh \<filename\> [\<arguments\>]
- *
- * Execute a shell script named \<filename\> and forward (if given)
- * \<arguments\> to it.
- *
- * Usage: .  \<filename\> [\<arguments\>]
- * or     source \<filename\> [\<arguments\>]
- *
- * Read and execute commands from \<filename\> in the current shell environment,
- * forward (if given) \<arguments\> to it and return the exit status of the last
- * command  executed from filename.
- */
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 0b80103..9f7cdc2 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -368,24 +368,25 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 
 	return 0;
 }
+#endif
 
 BAREBOX_CMD_HELP_START(devinfo)
-BAREBOX_CMD_HELP_USAGE("devinfo [DEVICE]\n")
-BAREBOX_CMD_HELP_SHORT("Output device information.\n")
+BAREBOX_CMD_HELP_USAGE("devinfo [<device>]\n")
+BAREBOX_CMD_HELP_SHORT("Output device information for 'device'.\n")
 BAREBOX_CMD_HELP_END
 
 /**
  * @page devinfo_command
-
-If called without arguments, devinfo shows a summary of the known
-devices and drivers.
-
-If called with a device path being the argument, devinfo shows more
-default information about this device and its parameters.
-
-Example from an MPC5200 based system:
-
-@verbatim
+ *
+ * If called without arguments, devinfo shows a summary of the known
+ * devices and drivers.
+ *
+ * If called with a device path being the argument, devinfo shows more
+ * default information about this device and its parameters.
+ *
+ * Example from an MPC5200 based system:
+ *
+ * @verbatim
   barebox:/ devinfo /dev/eth0
   base  : 0x1002b000
   size  : 0x00000000
@@ -399,8 +400,11 @@ Example from an MPC5200 based system:
      netmask = 255.255.255.0
     serverip = 192.168.23.2
 @endverbatim
+ *
+ * \note This command is available only if enabled in menuconfig (CONFIG_CMD_DEVINFO).
  */
 
+#ifdef CONFIG_CMD_DEVINFO
 BAREBOX_CMD_START(devinfo)
 	.cmd		= do_devinfo,
 	.usage		= "Show information about devices and drivers.",
diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index 764b4e7..19876ce 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -81,7 +81,7 @@ static struct poller_struct trigger_poller = {
 /**
  * led_trigger - triggers a trigger
  * @param trigger	The trigger to enable/disable
- * @param enable	true if enable
+ * @param type		The trigger type (TRIGGER_ENABLE|TRIGGER_DISABLE|TRIGGER_FLASH)
  *
  * Enable/disable a LED for a given trigger.
  */
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index bf3a7db..3917b08 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -680,8 +680,12 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 			ops.ooblen = (len >> this->page_shift) * mtd->oobsize;
 			ops.oobbuf = &buf[len];
 			res = mtd->read_oob(mtd, to + mtd->writesize, &ops);
-			if (res < 0 || ops.oobretlen != ops.ooblen)
+			if (res < 0 || ops.oobretlen != ops.ooblen){
+				printk(KERN_DEBUG "Could not read OOB data "
+					"(res=%d, oobretlen=%d, ooblen=%d)\n",
+					res, ops.oobretlen, ops.ooblen);
 				goto outerr;
+			}
 
 			/* Calc the byte offset in the buffer */
 			pageoffs = page - (int)(to >> this->page_shift);
@@ -726,12 +730,16 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 		einfo.addr = (unsigned long)to;
 		einfo.len = 1 << this->bbt_erase_shift;
 		res = nand_erase_nand(mtd, &einfo, 1);
-		if (res < 0)
+		if (res < 0){
+			printk(KERN_WARNING "Nand_erase_nand() failed! \n");
 			goto outerr;
+		}
 
 		res = scan_write_bbt(mtd, to, len, buf, &buf[len]);
-		if (res < 0)
+		if (res < 0){
+			printk(KERN_WARNING "Scan_write_bbt() failed! \n");
 			goto outerr;
+		}
 
 		printk(KERN_DEBUG "Bad block table written to 0x%08x, version "
 		       "0x%02X\n", (unsigned int)to, td->version[chip]);
diff --git a/net/dhcp.c b/net/dhcp.c
index d1781bc..aef5e8e 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -477,6 +477,16 @@ out:
 	return ret ? 1 : 0;
 }
 
+BAREBOX_CMD_HELP_START(dhcp)
+BAREBOX_CMD_HELP_USAGE("dhcp\n")
+BAREBOX_CMD_HELP_SHORT("Invoke dhcp client to obtain ip/boot params\n")
+BAREBOX_CMD_HELP_END
+/**
+ * @page dhcp_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_NET_DHCP).
+*/
+
+
 BAREBOX_CMD_START(dhcp)
 	.cmd		= do_dhcp,
 	.usage		= "invoke dhcp client to obtain ip/boot params",
diff --git a/net/dns.c b/net/dns.c
index 4db5bbc..50087f3 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -253,8 +253,15 @@ static int do_host(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_host_help[] =
-"Usage: host <hostname>\n";
+BAREBOX_CMD_HELP_START(host)
+BAREBOX_CMD_HELP_USAGE("host <hostname>\n")
+BAREBOX_CMD_HELP_SHORT("Resolve a host name\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page host_command
+ * \note This command is available only if enabled in meuconfig (CONFIG_NET_RESOLV).
+*/
 
 BAREBOX_CMD_START(host)
 	.cmd		= do_host,
diff --git a/net/nfs.c b/net/nfs.c
index 0a4b787..a0a7c8c 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -725,9 +725,15 @@ err_udp:
 	return nfs_err == 0 ? 0 : 1;
 }
 
-static const __maybe_unused char cmd_nfs_help[] =
-"Usage: nfs <file> [localfile]\n"
-"Load a file via network using nfs protocol.\n";
+BAREBOX_CMD_HELP_START(nfs)
+BAREBOX_CMD_HELP_USAGE("nfs <file> [localfile]\n")
+BAREBOX_CMD_HELP_SHORT("Load a file via network using nfs protocol\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page nfs_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_NET_NFS).
+*/
 
 BAREBOX_CMD_START(nfs)
 	.cmd		= do_nfs,
diff --git a/net/ping.c b/net/ping.c
index 8aad7af..793b95c 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -107,7 +107,19 @@ out:
 	return ping_state == PING_STATE_SUCCESS ? 0 : 1;
 }
 
+BAREBOX_CMD_HELP_START(ping)
+BAREBOX_CMD_HELP_USAGE("ping <destination>\n")
+BAREBOX_CMD_HELP_SHORT("send ICMP ECHO_REQUEST to network host.\n")
+BAREBOX_CMD_HELP_TEXT("Ping allows you to test a network connection ")
+BAREBOX_CMD_HELP_TEXT("to another host on the network or see if it is alive.")
+BAREBOX_CMD_HELP_END
+/**
+ * @page ping_command
+ * \note This command is available only if enabled in menuconfig (CONFIG_NET_PING).
+*/
+
 BAREBOX_CMD_START(ping)
 	.cmd		= do_ping,
 	.usage		= "ping <destination>",
+	BAREBOX_CMD_HELP(cmd_ping_help)
 BAREBOX_CMD_END
diff --git a/net/tftp.c b/net/tftp.c
index ee11468..a8fd7ba 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -368,6 +368,7 @@ BAREBOX_CMD_HELP_START(tftp)
 #ifdef CONFIG_NET_TFTP_PUSH
 BAREBOX_CMD_HELP_USAGE("tftp <remotefile> [localfile], tftp -p <localfile> [remotefile]\n")
 BAREBOX_CMD_HELP_SHORT("Load a file from or upload to TFTP server.\n")
+BAREBOX_CMD_HELP_OPT("-p", "Upload (push) from local to remote system instead of downloading.\n");
 BAREBOX_CMD_HELP_END
 #else
 BAREBOX_CMD_HELP_USAGE("tftp <remotefile> [localfile]\n")
@@ -377,15 +378,17 @@ BAREBOX_CMD_HELP_END
 
 /**
  * @page tftp_command
-
-The second file argument can be skipped in which case the first filename
-is used (without the directory part).
-
-\<localfile> can be the local filename or a device file under /dev.
-This also works for flash memory. Refer to \ref erase_command and \ref
-unprotect_command for flash preparation.
-
-\note This command is available only if enabled in menuconfig.
+ *
+ * The second file argument can be skipped in which case the first filename
+ * is used (without the directory part).
+ *
+ * &lt;localfile&gt; can be the local filename or a device file under /dev.
+ * This also works for flash memory. Refer to \ref erase_command and \ref
+ * unprotect_command for flash preparation.
+ *
+ * \note
+ * @li This command is available only if enabled in menuconfig(CONFIG_NET_TFTP).
+ * @li Uploading of data is available only if enabled in menuconfig(CONFIG_NET_TFTP_PUSH).
  */
 
 BAREBOX_CMD_START(tftp)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
