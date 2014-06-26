Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0IUc-00037O-9g
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 22:50:10 +0000
Received: by mail-lb0-f174.google.com with SMTP id u10so3428739lbd.19
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 15:49:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 27 Jun 2014 02:49:33 +0400
Message-Id: <1403822973-3151-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
References: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/4] MIPS: ritmix-rzx50_defconfig: enable gpio stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/ritmix-rzx50_defconfig | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
index 62f23b2..e6f10fb 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -6,34 +6,36 @@ CONFIG_PBL_IMAGE=y
 CONFIG_BAUDRATE=57600
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DEBUG_LL=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
 CONFIG_OFDEVICE=y
 # CONFIG_SPI is not set
+CONFIG_GPIO_JZ4740=y
 CONFIG_SHA1=y
 CONFIG_SHA224=y
 CONFIG_SHA256=y
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
