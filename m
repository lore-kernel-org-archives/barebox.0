Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKkT8-0003gH-S7
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:03:57 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0B788FF8AD6
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 08:05:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Apr 2012 07:44:54 +0200
Message-Id: <1334814298-11468-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120419053846.GA20601@game.jcrosoft.org>
References: <20120419053846.GA20601@game.jcrosoft.org>
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
Subject: [PATCH 07/11] complete: add empty complete support
To: barebox@lists.infradead.org

for cpuinfo, clear, dhcp, false, login, lsmod, meminfo, passwd, pwd, reginfo,
reset, true, usb, version

for mach-imx and mach-mxs: dump_clocks
for u_serial: mycdev

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/cpuinfo.c        |    2 ++
 arch/arm/mach-imx/speed.c     |    2 ++
 arch/arm/mach-mxs/imx.c       |    2 ++
 commands/clear.c              |    2 ++
 commands/false.c              |    2 ++
 commands/login.c              |    2 ++
 commands/lsmod.c              |    2 ++
 commands/meminfo.c            |    2 ++
 commands/passwd.c             |    2 ++
 commands/pwd.c                |    2 ++
 commands/reginfo.c            |    2 ++
 commands/reset.c              |    2 ++
 commands/true.c               |    2 ++
 commands/usb.c                |    2 ++
 commands/version.c            |    2 ++
 common/complete.c             |    5 +++++
 drivers/usb/gadget/u_serial.c |    2 ++
 include/complete.h            |    1 +
 net/dhcp.c                    |    2 ++
 19 files changed, 40 insertions(+), 0 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 09acb5f..ca986f8 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -22,6 +22,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 #define CPU_ARCH_UNKNOWN	0
 #define CPU_ARCH_ARMv3		1
@@ -181,5 +182,6 @@ static int do_cpuinfo(int argc, char *argv[])
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
 	.usage          = "Show info about CPU",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/mach-imx/speed.c b/arch/arm/mach-imx/speed.c
index 63e24b4..6f8d20b 100644
--- a/arch/arm/mach-imx/speed.c
+++ b/arch/arm/mach-imx/speed.c
@@ -24,6 +24,7 @@
 #include <asm-generic/div64.h>
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <mach/clock.h>
 
 /*
@@ -80,5 +81,6 @@ static int do_clocks(int argc, char *argv[])
 BAREBOX_CMD_START(dump_clocks)
 	.cmd		= do_clocks,
 	.usage		= "show clock frequencies",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index a4dae20..c64f23c 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -19,6 +19,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 extern void imx_dump_clocks(void);
 
@@ -32,4 +33,5 @@ static int do_clocks(int argc, char *argv[])
 BAREBOX_CMD_START(dump_clocks)
 	.cmd		= do_clocks,
 	.usage		= "show clock frequencies",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/clear.c b/commands/clear.c
index 9e5da10..28b4da9 100644
--- a/commands/clear.c
+++ b/commands/clear.c
@@ -22,6 +22,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <readkey.h>
 
 static int do_clear(int argc, char *argv[])
@@ -39,4 +40,5 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(clear)
 	.cmd		= do_clear,
 	.usage		= "clear screen",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/false.c b/commands/false.c
index 6ba3823..1642f8d 100644
--- a/commands/false.c
+++ b/commands/false.c
@@ -23,6 +23,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 static int do_false(int argc, char *argv[])
 {
@@ -32,5 +33,6 @@ static int do_false(int argc, char *argv[])
 BAREBOX_CMD_START(false)
 	.cmd		= do_false,
 	.usage		= "do nothing, unsuccessfully",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/commands/login.c b/commands/login.c
index 2f3d766..0b5f3cb 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -20,6 +20,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <password.h>
 #include <getopt.h>
 
@@ -80,4 +81,5 @@ BAREBOX_CMD_START(login)
 	.cmd		= do_login,
 	.usage		= "login",
 	BAREBOX_CMD_HELP(cmd_login_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/lsmod.c b/commands/lsmod.c
index f7da1d0..e54eadc 100644
--- a/commands/lsmod.c
+++ b/commands/lsmod.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <module.h>
 
 static int do_lsmod(int argc, char *argv[])
@@ -15,4 +16,5 @@ static int do_lsmod(int argc, char *argv[])
 BAREBOX_CMD_START(lsmod)
 	.cmd		= do_lsmod,
 	.usage		= "list modules",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/meminfo.c b/commands/meminfo.c
index b412744..1d24cfd 100644
--- a/commands/meminfo.c
+++ b/commands/meminfo.c
@@ -21,6 +21,7 @@
  */
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <malloc.h>
 
 static int do_meminfo(int argc, char *argv[])
@@ -33,4 +34,5 @@ static int do_meminfo(int argc, char *argv[])
 BAREBOX_CMD_START(meminfo)
 	.cmd		= do_meminfo,
 	.usage		= "print info about memory usage",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/passwd.c b/commands/passwd.c
index cdbcdf5..7f704ad 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -20,6 +20,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <password.h>
 #include <errno.h>
 
@@ -95,4 +96,5 @@ BAREBOX_CMD_START(passwd)
 	.cmd		= do_passwd,
 	.usage		= "passwd",
 	BAREBOX_CMD_HELP(cmd_passwd_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/pwd.c b/commands/pwd.c
index 4afe2d4..d68a509 100644
--- a/commands/pwd.c
+++ b/commands/pwd.c
@@ -21,6 +21,7 @@
  */
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <fs.h>
 
 static int do_pwd(int argc, char *argv[])
@@ -32,4 +33,5 @@ static int do_pwd(int argc, char *argv[])
 BAREBOX_CMD_START(pwd)
 	.cmd		= do_pwd,
 	.usage		= "print working directory",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/reginfo.c b/commands/reginfo.c
index 009a065..a31013a 100644
--- a/commands/reginfo.c
+++ b/commands/reginfo.c
@@ -22,6 +22,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 static int do_reginfo(int argc, char *argv[])
 {
@@ -32,4 +33,5 @@ static int do_reginfo(int argc, char *argv[])
 BAREBOX_CMD_START(reginfo)
 	.cmd		= do_reginfo,
 	.usage		= "print register information",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/reset.c b/commands/reset.c
index 9f242d1..97d04ee 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -22,6 +22,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 static int cmd_reset(int argc, char *argv[])
 {
@@ -34,4 +35,5 @@ static int cmd_reset(int argc, char *argv[])
 BAREBOX_CMD_START(reset)
 	.cmd		= cmd_reset,
 	.usage		= "Perform RESET of the CPU",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/true.c b/commands/true.c
index 773ddef..e50152f 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -23,6 +23,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 static int do_true(int argc, char *argv[])
 {
@@ -32,5 +33,6 @@ static int do_true(int argc, char *argv[])
 BAREBOX_CMD_START(true)
 	.cmd		= do_true,
 	.usage		= "do nothing, successfully",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/commands/usb.c b/commands/usb.c
index e28afd0..d02ea4b 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -21,6 +21,7 @@
  */
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <usb/usb.h>
 #include <getopt.h>
 
@@ -56,4 +57,5 @@ BAREBOX_CMD_START(usb)
 	.cmd		= do_usb,
 	.usage		= "(re-)detect USB devices",
 	BAREBOX_CMD_HELP(cmd_usb_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/version.c b/commands/version.c
index 8901fae..6dbda7a 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -23,6 +23,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 static int do_version(int argc, char *argv[])
 {
@@ -33,5 +34,6 @@ static int do_version(int argc, char *argv[])
 BAREBOX_CMD_START(version)
 	.cmd		= do_version,
 	.usage		= "print monitor version",
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/common/complete.c b/common/complete.c
index cf06101..5213b10 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -188,6 +188,11 @@ static int device_param_complete(char *begin, struct device_d *dev,
 	return 0;
 }
 
+int empty_complete(struct string_list *sl, char *instr)
+{
+	return 1;
+}
+
 static int env_param_complete(struct string_list *sl, char *instr, int eval)
 {
 	struct device_d *dev;
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index c5e7387..946b4f2 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -18,6 +18,7 @@
 /* #define VERBOSE_DEBUG */
 
 #include <common.h>
+#include <complete.h>
 #include <usb/cdc.h>
 #include <kfifo.h>
 #include <clock.h>
@@ -502,6 +503,7 @@ static int do_mycdev(int argc, char *argv[])
 
 BAREBOX_CMD_START(mycdev)
 	.cmd		= do_mycdev,
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
 /**
diff --git a/include/complete.h b/include/complete.h
index 8dfc99c..4b0e979 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -10,6 +10,7 @@ void complete_reset(void);
 
 int command_complete(struct string_list *sl, char *instr);
 int device_complete(struct string_list *sl, char *instr);
+int empty_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
 
diff --git a/net/dhcp.c b/net/dhcp.c
index 0c882fb..9cd0282 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -10,6 +10,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <environment.h>
 #include <clock.h>
 #include <net.h>
@@ -704,6 +705,7 @@ BAREBOX_CMD_START(dhcp)
 	.cmd		= do_dhcp,
 	.usage		= "invoke dhcp client to obtain ip/boot params",
 	BAREBOX_CMD_HELP(cmd_dhcp_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootfile, "bootfile returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
