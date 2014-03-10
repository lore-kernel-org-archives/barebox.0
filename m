Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WN7r9-00068b-2g
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 21:35:32 +0000
Received: by mail-la0-f47.google.com with SMTP id y1so5065785lam.34
 for <barebox@lists.infradead.org>; Mon, 10 Mar 2014 14:35:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 11 Mar 2014 01:34:41 +0400
Message-Id: <1394487281-10462-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
References: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 8/8] ARM: davinci: add virt2real_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/virt2real_defconfig | 39 ++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/configs/virt2real_defconfig b/arch/arm/configs/virt2real_defconfig
new file mode 100644
index 0000000..3c3fce1
--- /dev/null
+++ b/arch/arm/configs/virt2real_defconfig
@@ -0,0 +1,39 @@
+CONFIG_ARCH_DAVINCI=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_TEXT_BASE=0x82300000
+CONFIG_MALLOC_SIZE=0x200000
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="virt2real: "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PASSWORD=y
+CONFIG_PARTITION=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MM=y
+# CONFIG_CMD_BOOTM is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+# CONFIG_SPI is not set
+CONFIG_CLOCKSOURCE_DUMMY=y
+CONFIG_SHA1=y
+CONFIG_SHA256=y
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
