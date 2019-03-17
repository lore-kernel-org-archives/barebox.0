Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5TWb-0005oM-Nh
 for barebox@lists.infradead.org; Sun, 17 Mar 2019 11:00:19 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 17 Mar 2019 11:00:17 +0000
Message-Id: <20190317110017.23902-1-user@vserver64>
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
Subject: [PATCH] ARM: Makefile: restore kindle3 imxcfg-y setting
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

From: Alexander Kurz <akurz@blala.de>

Commit 45f38c1a846f ("ARM: Makefile: Drop unnecessary imxcfg-y settings")
dropped the imximg generation for the kindle3. This device is not covered
within multiimage support and can be configured with kindle3_defconfig.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9b0e34f50..48d8bcb2f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -259,6 +259,7 @@ imxcfg-$(CONFIG_MACH_FREESCALE_MX35_3STACK) += $(boarddir)/freescale-mx35-3ds/fl
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) += $(boarddir)/eukrea_cpuimx25/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) += $(boarddir)/eukrea_cpuimx35/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_PCM043) += $(boarddir)/phytec-phycore-imx35/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_KINDLE3) += $(boarddir)/kindle3/flash-header.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
