Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYX-0003xl-1j
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:09 +0000
Received: by mail-la0-f53.google.com with SMTP id ge10so3242254lab.26
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:46 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:25 +0400
Message-Id: <1410334946-12922-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 8/9] MIPS: add img-ci20_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/img-ci20_defconfig | 42 ++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/mips/configs/img-ci20_defconfig b/arch/mips/configs/img-ci20_defconfig
new file mode 100644
index 0000000..56235c4
--- /dev/null
+++ b/arch/mips/configs/img-ci20_defconfig
@@ -0,0 +1,42 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="img-ci20"
+CONFIG_MACH_MIPS_XBURST=y
+CONFIG_BOARD_CI20=y
+CONFIG_PBL_IMAGE=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_POLLER=y
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
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_OFDEVICE=y
+# CONFIG_SPI is not set
+CONFIG_CLOCKSOURCE_DUMMY=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=3500
+CONFIG_SHA1=y
+CONFIG_SHA224=y
+CONFIG_SHA256=y
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
