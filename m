Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp18.mail.ru ([94.100.176.155])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLwY-0005BB-GQ
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 08:02:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 13 Dec 2018 11:01:44 +0300
Message-Id: <20181213080144.8401-2-shc_work@mail.ru>
In-Reply-To: <20181213080144.8401-1-shc_work@mail.ru>
References: <20181213080144.8401-1-shc_work@mail.ru>
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
Subject: [PATCH] ARM: clps711x: Increase boot space
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
index 584ecdcab..641fa1502 100644
--- a/arch/arm/boards/clep7212/clep7212.c
+++ b/arch/arm/boards/clep7212/clep7212.c
@@ -37,7 +37,7 @@ static int clps711x_devices_init(void)
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, (unsigned long)cfi_io, SZ_32M,
 			     IORESOURCE_MEM);
 
-	devfs_add_partition("nor0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED,
+	devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED,
 			    "self0");
 	devfs_add_partition("nor0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED,
 			    "env0");
diff --git a/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor b/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor
index 39777f95f..e2e518ca6 100644
--- a/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor
+++ b/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-mtdparts="256k(boot),256k(env),3584k(kernel),-(root)"
+mtdparts="512k(boot),256k(env),3584k(kernel),-(root)"
 kernelname="physmap-flash.0"
 
 mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index 0853ce2e6..c00514e86 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -24,7 +24,7 @@ endmenu
 
 config ARCH_TEXT_BASE
 	hex
-	default 0xc0780000 if MACH_CLEP7212
+	default 0xc0740000 if MACH_CLEP7212
 
 config BAREBOX_MAX_IMAGE_SIZE
 	hex
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
