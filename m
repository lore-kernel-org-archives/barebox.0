Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7fqP-0005hJ-UT
 for barebox@lists.infradead.org; Sun, 15 Apr 2018 11:29:19 +0000
Received: by mail-lf0-x241.google.com with SMTP id q5-v6so18115289lff.12
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2018 04:29:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 15 Apr 2018 14:28:56 +0300
Message-Id: <20180415112858.5163-9-antonynpavlov@gmail.com>
In-Reply-To: <20180415112858.5163-1-antonynpavlov@gmail.com>
References: <20180415112858.5163-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 08/10] RISC-V: add erizo_generic_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/configs/erizo_generic_defconfig | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/configs/erizo_generic_defconfig
new file mode 100644
index 0000000000..e62b6ec719
--- /dev/null
+++ b/arch/riscv/configs/erizo_generic_defconfig
@@ -0,0 +1,53 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="erizo_generic"
+# CONFIG_GLOBALVAR is not set
+CONFIG_TEXT_BASE=0x80000000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x800e0000
+CONFIG_STACK_SIZE=0x20000
+CONFIG_MALLOC_BASE=0x80100000
+CONFIG_MALLOC_SIZE=0x100000
+CONFIG_MALLOC_TLSF=y
+CONFIG_PANIC_HANG=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+# CONFIG_BOOTM is not set
+# CONFIG_ENV_HANDLING is not set
+CONFIG_POLLER=y
+CONFIG_DEBUG_LL=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_OF_DUMP=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_DHRYSTONE=y
+CONFIG_OFDEVICE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
+CONFIG_EEPROM_AT24=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+# CONFIG_PINCTRL is not set
+CONFIG_DIGEST_CRC32_GENERIC=y
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
