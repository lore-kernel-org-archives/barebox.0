Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXKxf-00022S-JG
 for barebox@lists.infradead.org; Sun, 02 Jun 2019 07:31:24 +0000
Received: by mail-lf1-x12b.google.com with SMTP id m15so11127504lfh.4
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2019 00:31:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  2 Jun 2019 10:31:01 +0300
Message-Id: <20190602073101.21352-5-antonynpavlov@gmail.com>
In-Reply-To: <20190602073101.21352-1-antonynpavlov@gmail.com>
References: <20190602073101.21352-1-antonynpavlov@gmail.com>
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
Subject: [RFC 4/4] riscv: add litex_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/configs/litex_defconfig | 45 ++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/riscv/configs/litex_defconfig b/arch/riscv/configs/litex_defconfig
new file mode 100644
index 0000000000..cc8404e4b1
--- /dev/null
+++ b/arch/riscv/configs/litex_defconfig
@@ -0,0 +1,45 @@
+CONFIG_MACH_LITEX=y
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="litex-generic"
+CONFIG_NMON=y
+CONFIG_NMON_HELP=y
+CONFIG_TEXT_BASE=0x40000000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x400e0000
+CONFIG_STACK_SIZE=0x20000
+CONFIG_MALLOC_BASE=0x40100000
+CONFIG_MALLOC_SIZE=0x100000
+CONFIG_MALLOC_TLSF=y
+CONFIG_PANIC_HANG=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_POLLER=y
+CONFIG_DEBUG_LL=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_OF_DUMP=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_DHRYSTONE=y
+CONFIG_OFDEVICE=y
+# CONFIG_SPI is not set
+CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
+CONFIG_GPIO_GENERIC_PLATFORM=y
+# CONFIG_PINCTRL is not set
+CONFIG_DIGEST_CRC32_GENERIC=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
