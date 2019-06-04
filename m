Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCgS-00039c-MU
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 16:53:14 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Tue,  4 Jun 2019 18:53:06 +0200
Message-Id: <20190604165308.15229-1-bst@pengutronix.de>
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
Subject: [PATCH 1/3] scripts: imx-image: document -d, -e, -s, -u
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 scripts/imx/imx-image.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index a7f1421fa3..90be8a9b9b 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -363,6 +363,15 @@ static void usage(const char *prgname)
 		"-b           add barebox header to image. If used, barebox recognizes\n"
 		"             the image as regular barebox image which can be used as\n"
 		"             second stage image\n"
+		"-d           write DCD table only\n"
+		"-e           prepare image for encryption and use Freescale's Code Signing\n"
+		"             to encrypt image. Note that the device-specific encapsulated\n"
+		"             DEK as cryptgraphic blob needs to be appended afterwards\n"
+		"-s           use Freescale's Code Signing Tool (CST) to sign the image\n"
+		"             'cst' is expected to be in PATH or given via the environment\n"
+		"             variable 'CST'\n"
+		"-u           create USB image suitable for imx-usb-loader\n"
+		"             necessary for signed images (-s) only\n"
 		"-h           this help\n", prgname);
 	exit(1);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
