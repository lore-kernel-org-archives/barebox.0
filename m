Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1Mh-0001Fo-Kg
 for barebox@lists.infradead.org; Thu, 18 Jul 2019 08:02:13 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Thu, 18 Jul 2019 10:02:00 +0200
Message-Id: <1563436921-362991-3-git-send-email-m.otto@phytec.de>
In-Reply-To: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
References: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v3 3/4] Kconfig: add selection for creation of
 signed/encrypted HABV4 images
To: barebox@lists.infradead.org

Insert in the Kconfig the selection for the build type signed, usb
signed, encrypted/signed and unsigned images for NXP i.MX HABV4

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v3:
    - nothing
Changes in v2:
    - was Patch 1/4 in v1
    - select of more different signed/encrypted image variants possible
---
 arch/arm/mach-imx/Kconfig | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6a6aab6..b4cdaad 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -851,6 +851,28 @@ config HABV4_IMG_CRT_PEM
 
 endif
 
+if HABV4
+
+config HABV4_IMAGE_SIGNED
+	bool "build signed images"
+	help
+	  enable the creation of a signed image, if the habv4-imx6-gencsf.h
+	  included in the flash-header and the NXP cst Tool is available
+
+config HABV4_IMAGE_SIGNED_USB
+	bool "build signed USB images"
+	help
+	  enable the creation of a usb signed image, if the habv4-imx6-gencsf.h
+	  included in the flash-header and the NXP cst Tool is available
+
+config HABV4_IMAGE_SIGNED_ENCRYPTED
+	bool "build signed encrypted images"
+	help
+	  enable the creation of the encrypted image, if the habv4-imx6-gencsf.h
+	  included in the flash-header and the NXP cst Tool is available
+
+endif
+
 config HABV3
 	tristate "HABv3 support"
 	select HAB
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
