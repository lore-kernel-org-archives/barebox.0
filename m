Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b08Kv-0007KS-M2
 for barebox@lists.infradead.org; Tue, 10 May 2016 14:08:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 16:08:05 +0200
Message-Id: <1462889289-24215-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
References: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] bootm: Add missing BOOTM_FORCE_SIGNED_IMAGES option
To: Barebox List <barebox@lists.infradead.org>

The code already tests for this option, but it does not
yet exist. Add the option to force using signed images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index aa257bf..0be7cda 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -627,6 +627,15 @@ config BOOTM_FITIMAGE_SIGNATURE
 	  Additionally the barebox device tree needs a /signature node with the
 	  public key with which the image has been signed.
 
+config BOOTM_FORCE_SIGNED_IMAGES
+	bool
+	prompt "Force booting of signed images"
+	depends on BOOTM_FITIMAGE_SIGNATURE
+	help
+	  With this option enabled only signed images can be booted, unsigned images
+	  are refused to boot. Effectively this means only FIT images can be booted
+	  since they are the only supported image type that support signing.
+
 config BLSPEC
 	depends on BLOCK
 	depends on FLEXIBLE_BOOTARGS
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
