Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iQp-00069k-RX
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 08:43:13 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Fri, 15 Mar 2019 09:43:02 +0100
Message-Id: <20190315084302.11373-1-bst@pengutronix.de>
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
Subject: [PATCH] common: extend BOOTM_FITIMAGE_SIGNATURE help text
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>

This points out how to actually use BOOTM_FITIMAGE_SIGNATURE.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 common/Kconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 43b657019f..76632b324e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -630,7 +630,9 @@ config BOOTM_FITIMAGE_PUBKEY
 	default "../fit/pubkey.dtsi"
 	depends on BOOTM_FITIMAGE_SIGNATURE
 	help
-	  Set Path to a dts snippet which holds the public keys for FIT images.
+	  Set Path to a dts snippet which holds the public keys for FIT images. The
+	  snippet can then be included in a device tree with
+	  "#include CONFIG_BOOTM_FITIMAGE_PUBKEY".
 
 config BOOTM_FORCE_SIGNED_IMAGES
 	bool
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
