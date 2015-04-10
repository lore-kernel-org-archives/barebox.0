Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgiGd-0001zQ-Ix
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 23:23:20 +0000
Received: by labbd9 with SMTP id bd9so23304739lab.2
 for <barebox@lists.infradead.org>; Fri, 10 Apr 2015 16:22:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 11 Apr 2015 02:23:00 +0300
Message-Id: <1428708181-12506-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
References: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/5] MIPS: add ainol-novo7-paladin_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/ainol-novo7-paladin_defconfig | 42 +++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/mips/configs/ainol-novo7-paladin_defconfig b/arch/mips/configs/ainol-novo7-paladin_defconfig
new file mode 100644
index 0000000..abb4a07
--- /dev/null
+++ b/arch/mips/configs/ainol-novo7-paladin_defconfig
@@ -0,0 +1,42 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="ainol-novo7-paladin"
+CONFIG_MACH_MIPS_XBURST=y
+CONFIG_BOARD_AINOL_NOVO7_PALADIN=y
+CONFIG_JZ47XX_DEBUG_LL_UART2=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_BAUDRATE=57600
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEBUG_LL=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_GPIO=y
+CONFIG_OFDEVICE=y
+# CONFIG_SPI is not set
+CONFIG_CLOCKSOURCE_DUMMY_RATE=16000
+CONFIG_GPIO_JZ4740=y
+# CONFIG_PINCTRL is not set
+CONFIG_SHA1=y
+CONFIG_SHA224=y
+CONFIG_SHA256=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
