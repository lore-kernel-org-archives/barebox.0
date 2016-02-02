Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Ph-VQ
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:49 +0100
Message-Id: <1454424497-7157-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/34] ARM: i.MX: Add HABv3 Kconfig variables
To: Barebox List <barebox@lists.infradead.org>

For signing i.MX images with HABv3 we need several certificates. Add
their pathes to Kconfig variables to make them available to the build
system.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3f6dd77..c713e50 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -735,6 +735,28 @@ config HABV4_IMG_CRT_PEM
 
 endif
 
+config HABV3
+	tristate "HABv3 support"
+	depends on ARCH_IMX25
+	help
+	  High Assurance Boot, as found on i.MX25.
+
+if HABV3
+
+config HABV3_SRK_PEM
+	string "Path to SRK Certificate (PEM)"
+	default "../crts/SRK1_sha256_2048_65537_v3_ca_x509_crt.pem"
+
+config HABV3_CSF_CRT_DER
+	string "Path to CSF certificate"
+	default "../crts/CSF1_1_sha256_2048_65537_v3_ca_crt.der"
+
+config HABV3_IMG_CRT_DER
+	string "Path to IMG certificate"
+	default "../crts/IMG1_1_sha256_2048_65537_v3_usr_crt.der"
+
+endif
+
 endmenu
 
 endif
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
