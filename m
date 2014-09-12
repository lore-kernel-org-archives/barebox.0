Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQLS-0003rX-NW
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 12:52:59 +0000
Received: by mail-la0-f48.google.com with SMTP id ty20so888899lab.35
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 05:52:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 12 Sep 2014 16:52:24 +0400
Message-Id: <1410526344-21189-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410526344-21189-1-git-send-email-antonynpavlov@gmail.com>
References: <1410526344-21189-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] MIPS: ritmix-rzx50_defconfig: update DEBUG_LL; enable IMD
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/ritmix-rzx50_defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
index fb67014..0814883 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -1,7 +1,7 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="rzx50"
 CONFIG_MACH_MIPS_XBURST=y
-CONFIG_JZ4750D_DEBUG_LL_UART1=y
+CONFIG_JZ47XX_DEBUG_LL_UART1=y
 CONFIG_PBL_IMAGE=y
 CONFIG_BAUDRATE=57600
 CONFIG_GLOB=y
@@ -12,6 +12,7 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
