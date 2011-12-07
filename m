Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzy-0006A6-2Z
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:53:05 +0100
Message-Id: <1323262387-8012-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] arm eukrea boards: fix breakage after mach-types update
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 6355e3c..162c117 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -259,7 +259,7 @@ static int eukrea_cpuimx25_devices_init(void)
 			   IORESOURCE_MEM, &usb_pdata);
 
 	armlinux_set_bootparams((void *)0x80000100);
-	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX25);
+	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX25SD);
 
 	return 0;
 }
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 994f456..c419c73 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -217,7 +217,7 @@ static int eukrea_cpuimx27_devices_init(void)
 #endif
 
 	armlinux_set_bootparams((void *)0xa0000100);
-	armlinux_set_architecture(MACH_TYPE_CPUIMX27);
+	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX27);
 
 	return 0;
 }
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 5f654d4..20cfad4 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -169,7 +169,7 @@ static int eukrea_cpuimx35_devices_init(void)
 			   IORESOURCE_MEM, &usb_pdata);
 #endif
 	armlinux_set_bootparams((void *)0x80000100);
-	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35);
+	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35SD);
 
 	return 0;
 }
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
