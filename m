Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5Ts1-000324-Fg
 for barebox@lists.infradead.org; Sun, 17 Mar 2019 11:22:27 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 17 Mar 2019 11:22:33 +0000
Message-Id: <20190317112234.24126-1-user@vserver64>
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
Subject: [PATCH 1/2] ARM Kindle3 defconfig: enable MMU
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

From: Alexander Kurz <akurz@blala.de>

With the MMU enabled, a memtest runs 14 times faster.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/configs/kindle3_defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/kindle3_defconfig b/arch/arm/configs/kindle3_defconfig
index a4e08dfad..98691c3a8 100644
--- a/arch/arm/configs/kindle3_defconfig
+++ b/arch/arm/configs/kindle3_defconfig
@@ -2,7 +2,6 @@ CONFIG_ARCH_IMX=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x30000
 CONFIG_MACH_KINDLE3=y
 CONFIG_IMX_IIM=y
-CONFIG_ARCH_IMX_USBLOADER=y
 CONFIG_AEABI=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_BOARD_PREPEND_ATAG=y
@@ -10,6 +9,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_PBL_RELOCATABLE=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_RELOCATABLE=y
@@ -64,3 +64,4 @@ CONFIG_FS_EXT4=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_ARCH_IMX_USBLOADER=y
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
