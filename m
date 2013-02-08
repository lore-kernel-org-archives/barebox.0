Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3kno-0000h5-Gk
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 10:03:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 14:02:23 +0400
Message-Id: <1360317743-25975-11-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 11/11] ARM: clps711x: Update defconfig
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/configs/clps711x_defconfig |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
index cf2b3b6..3cc939e 100644
--- a/arch/arm/configs/clps711x_defconfig
+++ b/arch/arm/configs/clps711x_defconfig
@@ -1,13 +1,14 @@
 CONFIG_ARCH_CLPS711X=y
+CONFIG_CLPS711X_CPU_PLL_MULT=50
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_MEMINFO is not set
-CONFIG_TEXT_BASE=0xc0780000
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=57600
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/clep7212/env"
 CONFIG_CMD_EDIT=y
@@ -32,6 +33,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_DISK=y
 CONFIG_DISK_WRITE=y
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
