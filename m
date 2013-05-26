Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgZ7k-0003x4-49
 for barebox@lists.infradead.org; Sun, 26 May 2013 11:28:29 +0000
Received: by mail-la0-f45.google.com with SMTP id ec20so5751687lab.18
 for <barebox@lists.infradead.org>; Sun, 26 May 2013 04:28:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 26 May 2013 15:27:01 +0400
Message-Id: <1369567621-12415-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1369567621-12415-1-git-send-email-antonynpavlov@gmail.com>
References: <1369567621-12415-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] MIPS: rzx50: enable pbl in defconfig
To: barebox@lists.infradead.org

Also enable the iomem and poweroff commands.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/rzx50_defconfig |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/configs/rzx50_defconfig b/arch/mips/configs/rzx50_defconfig
index 722d977..5d994c7 100644
--- a/arch/mips/configs/rzx50_defconfig
+++ b/arch/mips/configs/rzx50_defconfig
@@ -1,4 +1,5 @@
 CONFIG_MACH_MIPS_XBURST=y
+CONFIG_PBL_IMAGE=y
 CONFIG_BAUDRATE=57600
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -14,6 +15,7 @@ CONFIG_CMD_LOADY=y
 CONFIG_CMD_LOADS=y
 CONFIG_CMD_SAVES=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -22,6 +24,7 @@ CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
+CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_GO=y
 # CONFIG_SPI is not set
 CONFIG_SHA1=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
