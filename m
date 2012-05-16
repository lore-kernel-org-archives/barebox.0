Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUjqm-0002yS-E7
 for barebox@lists.infradead.org; Wed, 16 May 2012 19:25:33 +0000
Received: by lbbgg6 with SMTP id gg6so978077lbb.36
 for <barebox@lists.infradead.org>; Wed, 16 May 2012 12:25:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 May 2012 23:25:16 +0400
Message-Id: <1337196316-8632-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1337196316-8632-1-git-send-email-antonynpavlov@gmail.com>
References: <1337196316-8632-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 4/4] MIPS: add defconfig for Ritmix RZX-50 board
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/rzx50_defconfig |   29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 arch/mips/configs/rzx50_defconfig

diff --git a/arch/mips/configs/rzx50_defconfig b/arch/mips/configs/rzx50_defconfig
new file mode 100644
index 0000000..722d977
--- /dev/null
+++ b/arch/mips/configs/rzx50_defconfig
@@ -0,0 +1,29 @@
+CONFIG_MACH_MIPS_XBURST=y
+CONFIG_BAUDRATE=57600
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+# CONFIG_SPI is not set
+CONFIG_SHA1=y
+CONFIG_SHA224=y
+CONFIG_SHA256=y
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
