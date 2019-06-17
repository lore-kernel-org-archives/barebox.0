Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsiE-0004hS-5G
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 14:34:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hcsiC-0004Fi-Hf
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 16:34:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hcsiC-0008Qq-AC
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 16:34:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 16:34:15 +0200
Message-Id: <20190617143418.32207-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190617143418.32207-1-a.fatoum@pengutronix.de>
References: <20190617143418.32207-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 1/4] ARM: stm32mp1: rerun savedefconfig on stm32mp_defconfig
To: barebox@lists.infradead.org

As CONFIG_LZO_DECOMPRESS is a dependency of ARM_USE_COMPRESSED_DTB, it's
no longer explicit in the defconfig. Rerun savedefconfig to get rid of it.

Fixes: 5414ccd16 ("ARM: stm32mp: stm32mp157c-dk2: compress the DTB")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 657b2edf57f2..56065860adb3 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -94,5 +94,4 @@ CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
 CONFIG_CRC8=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
