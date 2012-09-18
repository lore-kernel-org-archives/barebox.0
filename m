Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TE4R2-000895-OJ
 for barebox@lists.infradead.org; Tue, 18 Sep 2012 20:30:22 +0000
Received: by wgbdt14 with SMTP id dt14so146890wgb.18
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2012 13:30:19 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Tue, 18 Sep 2012 22:30:10 +0200
Message-Id: <1348000210-21686-2-git-send-email-carlo.caione@gmail.com>
In-Reply-To: <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH 2/2] Add Raspberry-Pi defconfig
References: <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
To: barebox@lists.infradead.org
Cc: Carlo Caione <carlo@carlocaione.org>

Signed-off-by: Carlo Caione <carlo@carlocaione.org>
---
 arch/arm/configs/rpi_defconfig |   45 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 arch/arm/configs/rpi_defconfig

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
new file mode 100644
index 0000000..2b35ef8
--- /dev/null
+++ b/arch/arm/configs/rpi_defconfig
@@ -0,0 +1,45 @@
+CONFIG_ARCH_BCM2835=y
+CONFIG_ARCH_TEXT_BASE=0x00008000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x00100000
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_BASE=0x00200000
+CONFIG_MALLOC_SIZE=0x400000
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PROMPT="RPi> "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_FS_CRAMFS=y
+CONFIG_SHA1=y
+CONFIG_SHA256=y
\ No newline at end of file
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
