Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw95f-0000z2-Mk
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 17:21:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw95d-0002U7-Me
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 18:21:53 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw95c-00063u-5V
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 18:21:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 18:21:45 +0100
Message-Id: <20190219172150.11901-12-a.fatoum@pengutronix.de>
In-Reply-To: <20190219172150.11901-1-a.fatoum@pengutronix.de>
References: <20190219172150.11901-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 11/16] ARM: at91: sama5: specify 0x10000 as first stage max
 size
To: barebox@lists.infradead.org

The ROM code on the sama5d{2,3,4} imposes a 64K limit on the bootloader
binary it loads to SRAM. Declare this in the mach-at91/Kconfig, so
it will always be checked against.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index a5e55e3cc451..0c012daf424d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -224,6 +224,12 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	default 0x6000 if ARCH_SAMA5D3
 	default 0xffffffff
 
+config ARCH_BAREBOX_MAX_IMAGE_SIZE
+	hex
+	depends on AT91_LOAD_BAREBOX_SRAM
+	default 0x10000 if SOC_SAMA5
+	default 0xffffffff
+
 config SUPPORT_CALAO_DAB_MMX
 	bool
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
