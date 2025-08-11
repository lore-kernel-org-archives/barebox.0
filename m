Delivery-date: Mon, 11 Aug 2025 14:31:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRgM-009KuG-3C
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:31:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRg2-0007CC-LU
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:31:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hK2KF/L2ctOHioaZnzqhApKtSbxxvw5Sa4pe9rwrFjU=; b=mIK4SHNWHOo83lsgtEVyHEIwZ8
	C1l2xGAxDGkKPP1umi619bUCSDyXpQ7Xz+HLwdtfwwuw5WrrvNgjorszxbQKb49elQ3MaOOEBQTmf
	wJapSwm509rJipO26lOfNN6klPWx66YpJFTdewTJ1SbR7tzq30Wtama8J0gqOSGptxrw+eZoa/bU2
	B2qwhbyggVn3qDK7fAYhXJnB2y6SrGmkHuM2XLQSmm5nan15hBVA/ebPWheOHU7/8mooFptq9RSw1
	sK/jv6OIUI1gaqdWcl6SGiX4eHLLWrv/9y43YPHjH7AVSFjiBa0KNwG1iuN448zxZoNEp9f+WRSDz
	R+hSSB6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReQ-00000007etJ-1sm3;
	Mon, 11 Aug 2025 12:29:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdm-00000007dgN-0BFr
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdk-0004WP-K1; Mon, 11 Aug 2025 14:28:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:23 +0200
Message-Id: <20250811122824.1667791-44-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052838_496302_3C5137D7 
X-CRM114-Status: GOOD (  20.22  )
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
Subject: [PATCH 43/44] commands: introduce bfetch command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Inspired by U-Boot's addition of the ufetch command and the neofetch
utility for Linux[1], add a similar command to barebox.

The command is meant to simplify showing off a barebox port with some
colored ASCII art. The usual alternative is a screenshot of a barebox
boot up and prompt, which for a fresh port usually will contain some
>= warning messages, which is not as pleasant to look at compared to:

:##:                                   :##: none@virt64
-%%:  =#####.                          :%%- -----------
      #@@@@@.                               Kernel: barebox 2025.07.0-<snip>
      *@@@@@.                               Model: ARM QEMU virt64 (linux,dummy-virt)
      *@@@@@.                               Config: arm64 multi_v8_defconfig
      *@@@@@.      :=##=.                   CPU: Cortex-A57 r1p0 at EL1
      *@@@@@.   :+%@@@@@@#+:                Memory: 1 GiB
      *@@@@@:-*@@@@@@@@@@@@@%*-.            Uptime: 1 second
      *@@@@@@@@@@@@@@%%@@@@@@@@@#=.         Shell: Hush with 155 commands and 8 aliases
      *@@@@@@@@@@@%**+=+*%@@@@@@@@@%+.      Consoles: input0 cs0 netconsole-1
      *@@@@@@@%#*++++++===+*#%@@@@@@@+      Features: FW_CFG HWRNG PCI VIRTIO
      *@@@@@#*+++++++++++++===+#@@@@@+       barebox: /dev 9P BTHREAD DEEP RATP W^X
      *@@@@@*+++++++++++++++++=*@@@@@+      Network: 1 interface, 1 up
      *@@@@@*+++++++++++++++++=*@@@@@+        eth0: 0.0.0.0/0
      *@@@@@*+++++++++++++++++=*@@@@@+      Hardening: init-stack
      *@@@@@*+++++++++++++++++=*@@@@@+      Devices: 85 with 17 bound
      *@@@@@*++++++++++++++++==*@@@@@+      Drivers: 220 drivers across 16 busses
      *@@@@@%#*+++++++++++===+*%@@@@@+      Storage: 1x MTD (128 MiB)
      *@@@@@@@@%#*++++===+*#%@@@@@@@@+      Environment: 28 bytes
       -*%@@@@@@@@@%*++*%@@@@@@@@@%+:       Firmware:
          :+#@@@@@@@@@@@@@@@@@@#=:            PSCI: v1.1 over hvc
             .=*@@@@@@@@@@@%*-.
                 -+%@@@@%+:
-@@-                :==.               :@@-
:**.                                   .**:

[1]: https://en.wikipedia.org/wiki/Neofetch

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/Kconfig               |  11 +
 commands/Makefile              |   1 +
 commands/bfetch.c              | 752 +++++++++++++++++++++++++++++++++
 include/linux/string_choices.h |  18 +
 include/stringlist.h           |   6 +
 5 files changed, 788 insertions(+)
 create mode 100644 commands/bfetch.c
 create mode 100644 include/linux/string_choices.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 16b995cb3b7c..02b45d8cbe09 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -308,6 +308,17 @@ config CMD_VERSION
 
 	  barebox 2014.05.0-00142-gb289373 #177 Mon May 12 20:35:55 CEST 2014
 
+config CMD_BFETCH
+	tristate
+	depends on BANNER
+	select STRUCTIO
+	imply CMD_UPTIME
+	imply CMD_ARM_CPUINFO if ARM
+	imply CMD_DEVINFO
+	prompt "bfetch"
+	help
+	  Print system information from barebox point of view. Fancily.
+
 config CMD_MMC
 	tristate
 	prompt "mmc command allowing to set enhanced area"
diff --git a/commands/Makefile b/commands/Makefile
index 9247287ed53a..fadf9e7cc7e0 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -63,6 +63,7 @@ obj-$(CONFIG_CMD_TRUE)		+= true.o
 obj-$(CONFIG_CMD_FALSE)		+= false.o
 obj-$(CONFIG_CMD_VARINFO)	+= varinfo.o
 obj-$(CONFIG_CMD_VERSION)	+= version.o
+obj-$(CONFIG_CMD_BFETCH)	+= bfetch.o
 obj-$(CONFIG_CMD_HELP)		+= help.o
 obj-$(CONFIG_CMD_LSMOD)		+= lsmod.o
 obj-$(CONFIG_CMD_INSMOD)	+= insmod.o
diff --git a/commands/bfetch.c b/commands/bfetch.c
new file mode 100644
index 000000000000..8f78a6fa8652
--- /dev/null
+++ b/commands/bfetch.c
@@ -0,0 +1,752 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <barebox-info.h>
+#include <bbu.h>
+#include <blobgen.h>
+#include <block.h>
+#include <command.h>
+#include <complete.h>
+#include <dsa.h>
+#include <envfs.h>
+#include <environment.h>
+#include <fb.h>
+#include <featctrl.h>
+#include <firmware.h>
+#include <getopt.h>
+#include <globalvar.h>
+#include <machine_id.h>
+#include <memory.h>
+#include <net.h>
+#include <pm_domain.h>
+#include <sound.h>
+#include <stdio.h>
+#include <structio.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <watchdog.h>
+
+#include <efi/efi-mode.h>
+#include <efi/efi-device.h>
+
+#include <generated/utsrelease.h>
+#include <linux/clk.h>
+#include <linux/device/bus.h>
+#include <linux/hw_random.h>
+#include <linux/kasan.h>
+#include <linux/kernel.h>
+#include <linux/mtd/mtd.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/pci.h>
+#include <linux/pinctrl/consumer.h>
+#include <linux/pstore.h>
+#include <linux/reboot-mode.h>
+#include <linux/rtc.h>
+#include <linux/scmi_protocol.h>
+#include <linux/string_choices.h>
+#include <linux/tee_drv.h>
+#include <linux/usb/usb.h>
+
+#define BFETCH_TMP_ENV	"/tmp/.bfetch.env.tmp"
+
+#define LINE_WIDTH 40
+#define WHITE "\033[1;37m"
+#define YELLOW "\033[33m"
+#define BOLD "\033[1m"
+#define RED  "\033[31m"
+#define LIGHT_RED  "\033[1;91m"
+#define DARK_RED  "\033[0;31m"
+#define PURPLE  "\033[35m"
+#define RESET "\033[0m"
+#define BOLD_RESET RESET BOLD
+
+#define LOGO_WIDTH	44
+#define LOGO_HEIGHT	25
+
+static const char logo_lines[LOGO_HEIGHT][LOGO_WIDTH] = {
+	":##:                                   :##:",
+	"-%%:  =#####.                          :%%-",
+	"      #@@@@@.                              ",
+	"      *@@@@@.                              ",
+	"      *@@@@@.                              ",
+	"      *@@@@@.      :=##=.                  ",
+	"      *@@@@@.   :+%@@@@@@#+:               ",
+	"      *@@@@@:-*@@@@@@@@@@@@@%*-.           ",
+	"      *@@@@@@@@@@@@@@%%@@@@@@@@@#=.        ",
+	"      *@@@@@@@@@@@%**+=+*%@@@@@@@@@%+.     ",
+	"      *@@@@@@@%#*++++++===+*#%@@@@@@@+     ",
+	"      *@@@@@#*+++++++++++++===+#@@@@@+     ",
+	"      *@@@@@*+++++++++++++++++=*@@@@@+     ",
+	"      *@@@@@*+++++++++++++++++=*@@@@@+     ",
+	"      *@@@@@*+++++++++++++++++=*@@@@@+     ",
+	"      *@@@@@*+++++++++++++++++=*@@@@@+     ",
+	"      *@@@@@*++++++++++++++++==*@@@@@+     ",
+	"      *@@@@@%#*+++++++++++===+*%@@@@@+     ",
+	"      *@@@@@@@@%#*++++===+*#%@@@@@@@@+     ",
+	"       -*%@@@@@@@@@%*++*%@@@@@@@@@%+:      ",
+	"          :+#@@@@@@@@@@@@@@@@@@#=:         ",
+	"             .=*@@@@@@@@@@@%*-.            ",
+	"                 -+%@@@@%+:                ",
+	"-@@-                :==.               :@@-",
+	":**.                                   .**:",
+};
+
+static const char style_lines[LOGO_HEIGHT][LOGO_WIDTH] = {
+	"*@@*                                   *@@*",
+	"*@@*  *******                          *@@*",
+	"      *@@@@@*                              ",
+	"      *@@@@@*                              ",
+	"      *@@@@@*                              ",
+	"      *@@@@@*      ******                  ",
+	"      *@@@@@*   ***@@@@@@***               ",
+	"      *@@@@@***@@@@@@@@@@@@@****           ",
+	"      *@@@@@@@@@@@@@@rR@@@@@@@@@***        ",
+	"      *@@@@@@@@@@@rrrrRRRR@@@@@@@@@***     ",
+	"      *@@@@@@@rrrrrrrrRRRRRRRR@@@@@@@*     ",
+	"      *@@@@@rrrrrrrrrrRRRRRRRRRR@@@@@*     ",
+	"      *@@@@@rrrrrrrrrrRRRRRRRRRR@@@@@*     ",
+	"      *@@@@@rrrrrrrrrrRRRRRRRRRR@@@@@*     ",
+	"      *@@@@@rrrrrrrrrrRRRRRRRRRR@@@@@*     ",
+	"      *@@@@@rrrrrrrrrrRRRRRRRRRR@@@@@*     ",
+	"      *@@@@@rrrrrrrrrrRRRRRRRRRR@@@@@*     ",
+	"      *@@@@@rrrrrrrrrrRRRRRRRRRR@@@@@*     ",
+	"      *@@@@@@@@rrrrrrrRRRRRRR@@@@@@@@*     ",
+	"       ***@@@@@@@@@rrrRRR@@@@@@@@@***      ",
+	"          ***@@@@@@@@@@@@@@@@@@***         ",
+	"             ***@@@@@@@@@@@****            ",
+	"                 ***@@@@***                ",
+	"*@@*                ****               *@@*",
+	"*@@*                                   *@@*",
+};
+
+static_assert(sizeof(logo_lines) == sizeof(style_lines));
+
+static bool skip_logo;
+
+static bool logo(unsigned *lineidx)
+{
+	const char *c, *s;
+	char last_style = '\0';
+
+	if (skip_logo)
+		return false;
+
+	if (*lineidx >= LOGO_HEIGHT) {
+		printf("%*s" "    ", LOGO_WIDTH, "");
+		return false;
+	}
+
+	c = logo_lines[*lineidx];
+	s = style_lines[*lineidx];
+
+	while (*c) {
+		if (last_style != *s) {
+			switch (*s) {
+			case '*': puts(RESET); break;
+			case '@': puts(RESET BOLD); break;
+			case 'r': puts(LIGHT_RED); break;
+			case 'R': puts(DARK_RED); break;
+			case ' ': break;
+			default:  BUG();
+			}
+
+			last_style = *s;
+		}
+
+		putchar(*c);
+
+		c++;
+		s++;
+	}
+
+	printf(RESET " ");
+	++*lineidx;
+	return true;
+}
+
+#define print_line(key, fmt, ...) do { \
+	logo(line); printf(DARK_RED "%s" RESET ": " fmt "\n", key, ##__VA_ARGS__); \
+} while (0)
+
+static inline bool __print_string_list(unsigned *line, const char *key,
+				       struct string_list *sl,
+				       const char *joinstr)
+{
+	if (string_list_empty(sl))
+		return false;
+	print_line(key, "%s", string_list_join(sl, joinstr));
+	return true;
+}
+#define print_string_list(k, sl, js) __print_string_list(line, k, sl, js)
+
+static inline bool bus_has_devices(const char *name)
+{
+	struct bus_type *bus;
+	struct device *dev;
+
+	bus = get_bus_by_name("virtio");
+	if (!bus)
+		return false;
+
+	bus_for_each_device(bus, dev)
+		return true;
+
+	return false;
+}
+
+static void print_header(unsigned *line)
+{
+	int size = 0;
+
+	if (!IS_ENABLED(CONFIG_GLOBALVAR))
+		return;
+
+	logo(line);
+	printf(DARK_RED "%s" RESET "@" DARK_RED "%s" RESET "\n",
+		      globalvar_get("user"), globalvar_get("hostname"));
+	size += strlen(globalvar_get("user") ?: "");
+	size++;
+	size += strlen(globalvar_get("hostname") ?: "");
+	logo(line);
+
+	for (int i = 0; i < size; i++)
+		putchar('-');
+	putchar('\n');
+}
+
+static void print_barebox_info(unsigned *line)
+{
+	const char *compat = NULL, *model;
+
+	print_line("Kernel", "barebox " UTS_RELEASE);
+
+	model = globalvar_get("model");
+	of_property_read_string(of_get_root_node(), "compatible", &compat);
+	if (compat)
+		print_line("Model", "%s (%s)", model, compat);
+	else if (model)
+		print_line("Model", "%s", model);
+
+	if (*CONFIG_NAME)
+		print_line("Config", "%s %s", CONFIG_ARCH_LINUX_NAME, CONFIG_NAME);
+	else
+		print_line("Architecture", "%s", CONFIG_ARCH_LINUX_NAME);
+}
+
+static void print_cpu_mem_info(unsigned *line)
+{
+	struct bobject *bret;
+	struct memory_bank *mem;
+	unsigned long memsize = 0;
+	int nbanks = 0;
+	int ret;
+
+	/* TODO: show info for other arches, e.g. RISC-V S-Mode/M-Mode */
+	if (IS_ENABLED(CONFIG_ARM)) {
+		ret = structio_run_command(&bret, "cpuinfo");
+		if (!ret) {
+			if (IS_ENABLED(CONFIG_ARM64))
+				print_line("CPU", "%s at EL%s",
+					   bobject_get_param(bret, "core"),
+					   bobject_get_param(bret, "exception_level"));
+			else if (IS_ENABLED(CONFIG_ARM32))
+				print_line("CPU", "%s", bobject_get_param(bret, "core"));
+
+			bobject_free(bret);
+		}
+	} else if (IS_ENABLED(CONFIG_GLOBALVAR)) {
+		print_line("CPU", "%s-endian", globalvar_get("endianness"));
+	}
+
+	for_each_memory_bank(mem) {
+		memsize += mem->size;
+		nbanks++;
+	}
+
+	if (nbanks > 1)
+		print_line("Memory",      "%s across %u banks",
+			   size_human_readable(memsize), nbanks);
+	else if (nbanks == 1)
+		print_line("Memory",      "%s",
+			   size_human_readable(memsize));
+}
+
+static void print_shell_console(unsigned *line)
+{
+	const char *shell;
+	struct command *cmd;
+	struct string_list sl;
+	struct console_device *console;
+
+	if (IS_ENABLED(CONFIG_SHELL_HUSH))
+		shell = "Hush";
+	else if (IS_ENABLED(CONFIG_SHELL_SIMPLE))
+		shell = "Simple";
+	else
+		shell = "None";
+
+	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
+		int ncmds = 0, naliases = 0;
+
+		for_each_command(cmd) {
+			ncmds++;
+			naliases += strv_length(cmd->aliases);
+		}
+
+		print_line("Shell", "%s with %u commands and %u aliases",
+			   shell, ncmds, naliases);
+	} else {
+		print_line("Shell", "%s", shell);
+	}
+
+	string_list_init(&sl);
+
+	for_each_console(console)
+		string_list_add(&sl, console->devfs.name);
+	if (!string_list_empty(&sl))
+		print_line("Consoles", "%s", string_list_join(&sl, " "));
+
+	string_list_free(&sl);
+}
+
+static void print_framebuffers(unsigned *line)
+{
+	struct string_list sl;
+	struct fb_info *info;
+
+	if (!IS_ENABLED(CONFIG_VIDEO))
+		return;
+
+	string_list_init(&sl);
+
+	class_for_each_container_of_device(&fb_class, info, dev) {
+		string_list_add_asprintf(&sl, "%s: %ux%ux%u",
+					 dev_name(&info->dev),
+					 info->xres, info->yres,
+					 info->bits_per_pixel);
+	}
+
+	if (!string_list_empty(&sl))
+		print_line("Framebuffers", "%s", string_list_join(&sl, ", "));
+
+	string_list_free(&sl);
+}
+
+static void print_features(unsigned *line)
+{
+	struct stat st;
+	struct string_list sl;
+	bool features = false;
+	size_t tmp;
+
+	string_list_init(&sl);
+
+	if (blobgen_get(NULL))
+		string_list_add(&sl, "BLOBGEN");
+	if (clk_have_nonfixed_providers())
+		string_list_add(&sl, "CLK");
+	if (IS_ENABLED(CONFIG_DSA) && !list_empty(&dsa_switch_list))
+		string_list_add(&sl, "DSA");
+	if (IS_ENABLED(CONFIG_FEATURE_CONTROLLER) &&
+	    !list_empty(&of_feature_controllers))
+		string_list_add(&sl, "FEATCTL");
+	if (!stat("/dev/fw_cfg", &st))
+		string_list_add(&sl, "FW_CFG");
+	if (firmwaremgr_find_by_node(NULL))
+		string_list_add(&sl, "FWMGR");
+	if (genpd_is_active())
+		string_list_add(&sl, "GENPD");
+	if (hwrng_get_first())
+		string_list_add(&sl, "HWRNG");
+	if (machine_id_get_hashable(&tmp))
+		string_list_add(&sl, "MACHINE-ID");
+	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
+		string_list_add(&sl, "MCI-TUNING");
+		// TODO: check that loaded driver supports it
+	}
+	if (IS_ENABLED(CONFIG_PCI) && !list_empty(&pci_root_buses))
+		string_list_add(&sl, "PCI");
+	if (IS_ENABLED(CONFIG_PINCTRL) && !list_empty(&pinctrl_list))
+		string_list_add(&sl, "PINCTRL");
+	if (pstore_is_ready())
+		string_list_add(&sl, "PSTORE");
+	if (reboot_mode_get())
+		string_list_add(&sl, "REBOOT-MODE");
+	if (IS_ENABLED(CONFIG_RTC) && !list_empty(&rtc_class.list))
+		string_list_add(&sl, "RTC");
+	if (IS_ENABLED(CONFIG_SOUND) && sound_card_get_default())
+		string_list_add(&sl, "SOUND");
+	if (IS_ENABLED(CONFIG_SDL))
+		string_list_add(&sl, "USB");
+	if (bus_has_devices("virtio"))
+		string_list_add(&sl, "VIRTIO");
+	if (watchdog_get_default())
+		string_list_add(&sl, "WDOG");
+
+	if (print_string_list("Features", &sl, " "))
+		features = true;
+
+	string_list_reinit(&sl);
+
+	if (IS_ENABLED(CONFIG_FS_DEVFS))
+		string_list_add(&sl, "/dev");
+	if (IS_ENABLED(CONFIG_9P_FS))
+		string_list_add(&sl, "9P");
+	if (efi_is_loader())
+		string_list_add(&sl, "EFI");
+	if (bbu_handlers_available())
+		string_list_add(&sl, "BBU");
+	if (IS_ENABLED(CONFIG_BTHREAD))
+		string_list_add(&sl, "BTHREAD");
+	if (deep_probe_is_supported())
+		string_list_add(&sl, "DEEP");
+	if (IS_ENABLED(CONFIG_GCOV))
+		string_list_add(&sl, "GCOV");
+	if (IS_ENABLED(CONFIG_RISCV_ICACHE))
+		string_list_add(&sl, "I$");
+	if (IS_ENABLED(CONFIG_JWT))
+		string_list_add(&sl, "JWT");
+	if (IS_ENABLED(CONFIG_RATP))
+		string_list_add(&sl, "RATP");
+	if (IS_ENABLED(CONFIG_CRYPTO_RSA))
+		string_list_add(&sl, "RSA");
+	if (IS_ENABLED(CONFIG_CRYPTO_ECDSA))
+		string_list_add(&sl, "ECDSA");
+	if (IS_ENABLED(CONFIG_SDL))
+		string_list_add(&sl, "SDL");
+	if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS))
+		string_list_add(&sl, "W^X");
+
+	if (IS_ENABLED(CONFIG_FS_UBOOTVARFS) && !stat("/dev/ubootvar", &st))
+		string_list_add(&sl, "UBOOTVARFS");
+
+	/* TODO: detect semihosting */
+
+	print_string_list(features ? " barebox" : "Features", &sl, " ");
+
+	string_list_free(&sl);
+}
+
+static void print_netdevs(unsigned *line)
+{
+	struct eth_device *edev;
+	int nif = 0, nifup = 0;
+
+	if (!IS_ENABLED(CONFIG_NET))
+		return;
+
+	for_each_netdev(edev) {
+		nif++;
+		if (edev->active)
+			nifup++;
+	}
+
+	print_line("Network", "%u interface%s, %u up",
+		   nif, str_plural(nif), nifup);
+	if (nifup) {
+		for_each_netdev(edev) {
+			IPaddr_t ipaddr;
+
+			if (!edev->active)
+				continue;
+
+			ipaddr = net_get_ip(edev);
+
+			logo(line);
+			printf(DARK_RED "  %s" RESET ": %pI4/%u\n",
+			       eth_name(edev), &ipaddr,
+			       netmask_to_prefix(edev->netmask));
+		}
+	}
+}
+
+static void print_hardening(unsigned *line)
+{
+	struct string_list sl;
+
+	string_list_init(&sl);
+
+	if (kasan_enabled())
+		string_list_add(&sl, IS_ENABLED(CONFIG_KASAN) ? "KASAN" : "ASAN");
+	if (IS_ENABLED(CONFIG_UBSAN))
+		string_list_add(&sl, "UBSAN");
+	if (IS_ENABLED(CONFIG_DMA_API_DEBUG))
+		string_list_add(&sl, "DMA-API");
+
+	print_string_list("Debugging", &sl, " ");
+
+	string_list_reinit(&sl);
+
+	if (!IS_ENABLED(CONFIG_INIT_STACK_NONE) &&
+	    IS_ENABLED(CONFIG_INIT_ON_ALLOC_DEFAULT_ON) &&
+	    IS_ENABLED(CONFIG_INIT_ON_FREE_DEFAULT_ON) &&
+	    IS_ENABLED(CONFIG_ZERO_CALL_USED_REGS)) {
+		string_list_add(&sl, "init-all");
+	} else {
+		if (!IS_ENABLED(CONFIG_INIT_STACK_NONE))
+			string_list_add(&sl, "init-stack");
+		if (IS_ENABLED(CONFIG_INIT_ON_ALLOC_DEFAULT_ON))
+			string_list_add(&sl, "init-alloc");
+		if (IS_ENABLED(CONFIG_INIT_ON_FREE_DEFAULT_ON))
+			string_list_add(&sl, "init-free");
+		if (IS_ENABLED(CONFIG_ZERO_CALL_USED_REGS))
+			string_list_add(&sl, "init-regs");
+	}
+	if (IS_ENABLED(CONFIG_FORTIFY_SOURCE))
+		string_list_add(&sl, "fortify");
+	if (IS_ENABLED(CONFIG_STACK_GUARD_PAGE))
+		string_list_add(&sl, "stack-guard");
+	if (!IS_ENABLED(CONFIG_STACKPROTECTOR_NONE))
+		string_list_add(&sl, "stack-prot");
+	if (!IS_ENABLED(CONFIG_PBL_STACKPROTECTOR_NONE))
+		string_list_add(&sl, "stack-prot-pbl");
+
+	print_string_list("Hardening", &sl, " ");
+
+	string_list_free(&sl);
+}
+
+static void print_devices_drivers(unsigned *line)
+{
+	struct bus_type *bus;
+	struct device *dev;
+	int nbusses = 0, ndevs = 0, ndrvs = 0, nbound = 0;
+
+	for_each_device(dev) {
+		ndevs++;
+		if (dev->driver)
+			nbound++;
+	}
+
+	print_line("Devices", "%u with %u bound", ndevs, nbound);
+
+	for_each_bus(bus) {
+		struct driver *drv;
+		bool has_drivers = false;
+
+		bus_for_each_driver(bus, drv) {
+			has_drivers = true;
+			ndrvs++;
+		}
+
+		nbusses++;
+	}
+
+	print_line("Drivers", "%u drivers across %u busses", ndrvs, nbusses);
+}
+
+static void print_storage(unsigned *line)
+{
+	const char *other_key;
+	unsigned nmtds = 0, nnvmem =0;
+	struct block_device *blk;
+	unsigned nblkdevs[BLK_TYPE_COUNT] = {};
+	unsigned blkdev_sizes[BLK_TYPE_COUNT] = {};
+	struct mtd_info *mtd;
+	size_t mtd_size = 0, nvmem_size = 0;
+	struct string_list sl;
+	struct device *dev;
+
+	if (IS_ENABLED(CONFIG_BLOCK)) {
+		for_each_block_device(blk) {
+			if (blk->type >= BLK_TYPE_COUNT)
+				continue;
+
+			nblkdevs[blk->type]++;
+			blkdev_sizes[blk->type] += blk->num_blocks * BLOCKSIZE(blk);
+		}
+	}
+
+	string_list_init(&sl);
+
+	for (int i = 0; i < BLK_TYPE_COUNT; i++) {
+		if (!nblkdevs[i])
+			continue;
+
+		string_list_add_asprintf(&sl, "%ux %s (%s)", nblkdevs[i],
+					 blk_type_str(i),
+					 size_human_readable(blkdev_sizes[i]));
+	}
+
+	if (print_string_list("Block devices", &sl, ", "))
+		other_key = "Other storage";
+	else
+		other_key = "Storage";
+
+	string_list_reinit(&sl);
+
+	if (IS_ENABLED(CONFIG_MTD)) {
+		class_for_each_container_of_device(&mtd_class, mtd, dev) {
+			if (mtd->parent)
+				continue;
+
+			nmtds++;
+			mtd_size += mtd->size;
+		}
+
+		if (nmtds)
+			string_list_add_asprintf(&sl, "%ux MTD (%s)", nmtds,
+						 size_human_readable(mtd_size));
+	}
+
+	if (IS_ENABLED(CONFIG_NVMEM)) {
+		class_for_each_device(&nvmem_class, dev) {
+			nnvmem++;
+			nvmem_size += nvmem_device_size(nvmem_from_device(dev));
+		}
+
+		if (nnvmem)
+			string_list_add_asprintf(&sl, "%ux NVMEM (%s)", nnvmem,
+						 size_human_readable(nvmem_size));
+	}
+
+	print_string_list(other_key, &sl, ", ");
+
+	string_list_free(&sl);
+}
+
+static void print_env(unsigned *line)
+{
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_ENV_HANDLING))
+		return;
+
+	ret = envfs_save(BFETCH_TMP_ENV, NULL, 0);
+	if (!ret) {
+		struct stat st;
+
+		if (!stat(BFETCH_TMP_ENV, &st))
+			print_line("Environment", "%llu bytes", st.st_size);
+
+		unlink(BFETCH_TMP_ENV);
+	}
+}
+
+static int tee_devinfo(struct bobject **bret)
+{
+	struct device *dev;
+
+	if (!IS_ENABLED(CONFIG_TEE))
+		return -ENOSYS;
+
+	bus_for_each_device(&tee_bus_type, dev)
+		return structio_devinfo(bret, dev);
+
+	return -ENODEV;
+}
+
+static void print_firmware(unsigned *line)
+{
+	const char *psci_version;
+	struct bobject *bret;
+	bool have_scmi = false, have_tee = false;
+
+	psci_version = getenv("psci.version");
+
+	if (IS_ENABLED(CONFIG_ARM_SCMI_PROTOCOL) && !list_empty(&scmi_list))
+		have_scmi = true;
+	if (tee_devinfo(&bret) == 0)
+		have_tee = true;
+
+	if (!psci_version && !have_scmi && !have_tee && !efi_is_payload())
+		return;
+
+	print_line("Firmware", "");
+
+	if (psci_version)
+		print_line("  PSCI", "v%s over %s",
+			   psci_version, getenv("psci.method"));
+
+	if (have_scmi)
+		print_line("  SCMI", "yes\n");
+
+	/* TODO: RISC-V SBI version */
+
+	if (have_tee) {
+		const char *name = bobject_get_param(bret, "impl.name");
+		if (name)
+			print_line("  TEE", "%s rev. %s",
+				   name, bobject_get_param(bret, "impl.rev"));
+		else
+			print_line("  TEE", "impementation ID %s",
+				   bobject_get_param(bret, "impl.id"));
+		bobject_free(bret);
+	}
+
+	if (efi_is_payload()) {
+		print_line("  UEFI", "v%s.%s by %s v%s\n",
+			   dev_get_param(&efi_bus.dev, "major"),
+			   dev_get_param(&efi_bus.dev, "minor"),
+			   dev_get_param(&efi_bus.dev, "fw_vendor"),
+			   dev_get_param(&efi_bus.dev, "fw_revision"));
+	}
+}
+
+static int do_bfetch(int argc, char *argv[])
+{
+	struct bobject *bret;
+	unsigned _line, *line = &_line;
+	int opt;
+	int ret;
+
+	skip_logo = false;
+	while((opt = getopt(argc, argv, "n")) > 0) {
+		switch(opt) {
+		case 'n':
+			skip_logo = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	print_header(line);
+
+	print_barebox_info(line);
+	print_cpu_mem_info(line);
+
+	ret = structio_run_command(&bret, "uptime");
+	if (!ret) {
+		print_line("Uptime", "%s", bobject_get_param(bret, "uptime"));
+		bobject_free(bret);
+	}
+
+	print_shell_console(line);
+	print_framebuffers(line);
+	print_features(line);
+	print_netdevs(line);
+
+	/* print_line("Compiled by", "TODO"); */
+
+	if (*buildsystem_version_string)
+		print_line("Buildsystem Version", "%s", buildsystem_version_string);
+
+	print_hardening(line);
+	print_devices_drivers(line);
+	print_storage(line);
+	print_env(line);
+	print_firmware(line);
+
+	while (logo(line))
+		putchar('\n');
+
+	if (!skip_logo)
+		printf(RESET "\n\n");
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(bfetch)
+BAREBOX_CMD_HELP_TEXT("Print system information from barebox point of view")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n",  "Don't print the ASCII logo")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(bfetch)
+	.cmd		= do_bfetch,
+	BAREBOX_CMD_DESC("Print device info")
+	BAREBOX_CMD_OPTS("[-n]")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
diff --git a/include/linux/string_choices.h b/include/linux/string_choices.h
new file mode 100644
index 000000000000..265573343f54
--- /dev/null
+++ b/include/linux/string_choices.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_STRING_CHOICES_H_
+#define _LINUX_STRING_CHOICES_H_
+
+#include <linux/types.h>
+
+/**
+ * str_plural - Return the simple pluralization based on English counts
+ * @num: Number used for deciding pluralization
+ *
+ * If @num is 1, returns empty string, otherwise returns "s".
+ */
+static inline const char *str_plural(size_t num)
+{
+	return num == 1 ? "" : "s";
+}
+
+#endif
diff --git a/include/stringlist.h b/include/stringlist.h
index 9a982f2ad685..707a776d919c 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -46,6 +46,12 @@ static inline void string_list_free(struct string_list *sl)
 	}
 }
 
+static inline void string_list_reinit(struct string_list *sl)
+{
+	string_list_free(sl);
+	string_list_init(sl);
+}
+
 #define string_list_for_each_entry(entry, sl) \
 	list_for_each_entry(entry, &(sl)->list, list)
 
-- 
2.39.5



