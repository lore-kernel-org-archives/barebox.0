Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCgS-00039e-MW
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 16:53:15 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Tue,  4 Jun 2019 18:53:08 +0200
Message-Id: <20190604165308.15229-3-bst@pengutronix.de>
In-Reply-To: <20190604165308.15229-1-bst@pengutronix.de>
References: <20190604165308.15229-1-bst@pengutronix.de>
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
Subject: [PATCH 3/3] doc: boards: imx: add HAB section
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/boards/imx.rst | 59 ++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index abd9c76151..ba0a3b7988 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -83,6 +83,65 @@ The images can also always be started as second stage on the target:
 
   barebox@Board Name:/ bootm /mnt/tftp/barebox-freescale-imx51-babbage.img
 
+High Assurance Boot
+^^^^^^^^^^^^^^^^^^^
+
+HAB is a NXP ROM code feature which is able to authenticate software in
+external memory at boot time.
+This is done by verifying signatures as defined in the Command Sequence FILE
+(CSF) as compiled into the i.MX boot header.
+
+barebox supports generating signed images, signed USB images suitable for
+*imx-usb-loader* and encrypted images.
+
+In contrast to normal (unsigned) images booting signed images via
+imx-usb-loader requires special images:
+DCD data is invalidated (DCD pointer set to zero), the image is then signed and
+afterwards the DCD pointer is set to the DCD data again (practically making
+the signature invalid).
+This works because the imx-usb-loader transmits the DCD table setup prior to
+the actual image to set up the RAM in order to load the barebox image.
+Now the DCD pointer is set to zero (making the signature valid again) and the
+image is loaded and verified by the ROM code.
+
+Note that the device-specific Data Encryption Key (DEK) blob needs to be
+appended to the image after the build process for appropriately encrypted
+images.
+
+In order to generate these special image types barebox is equipped with
+corresponding static pattern rules in ``images/Makefile.imx``.
+Unlike the typical ``imximg`` file extension the following ones are used for
+these cases:
+
+* ``simximg``: generate signed image
+* ``usimximg``: generate signed USB image
+* ``esimximg``: generate encrypted and signed image
+
+The imx-image tool is then automatically called with the appropriate flags
+during image creation.
+This again calls Freescale's Code Signing Tool (CST) which must be installed in
+the path or given via the environment variable "CST".
+
+Assuming ``CONFIG_HAB`` and ``CONFIG_HABV4`` are enabled the necessary
+keys/certificates are expected in these config variables (assuming HABv4):
+
+.. code-block:: none
+
+  CONFIG_HABV4_TABLE_BIN
+  CONFIG_HABV4_CSF_CRT_PEM
+  CONFIG_HABV4_IMG_CRT_PEM
+
+A CSF template is located in
+``arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h`` which is preprocessed
+by barebox.
+It must be included in the board's flash header:
+
+.. code-block:: none
+
+  #include <mach/habv4-imx6-gencsf.h>
+
+Analogous to HABv4 options and a template exist for HABv3.
+
 Using GPT on i.MX
 ^^^^^^^^^^^^^^^^^
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
