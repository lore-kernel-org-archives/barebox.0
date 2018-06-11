Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSUv4-0001VH-8O
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 22:04:11 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Tue, 12 Jun 2018 00:02:29 +0200
Message-Id: <20180611220235.15995-4-rohieb@rohieb.name>
In-Reply-To: <20180611220235.15995-1-rohieb@rohieb.name>
References: <20180611220235.15995-1-rohieb@rohieb.name>
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
Subject: [PATCH 3/9] doc: boards: Amazon Kindle 3: apply more formatting
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 Documentation/boards/imx/amazon-kindle-3.rst | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/imx/amazon-kindle-3.rst b/Documentation/boards/imx/amazon-kindle-3.rst
index 50592f2cb9..dffb7efb2d 100644
--- a/Documentation/boards/imx/amazon-kindle-3.rst
+++ b/Documentation/boards/imx/amazon-kindle-3.rst
@@ -14,7 +14,10 @@ vendor modified u-boot imximage.
 To upload and run a new bootloader the device can be put into USB-downloader
 mode by the SOC microcode when Vol+ is pressed during startup. A new USB
 device "SE Blank RINGO" should appear, barebox may be uploaded using
-$ scripts/imx/imx-usb-loader barebox.imximg
+
+::
+
+        $ scripts/imx/imx-usb-loader barebox.imximg
 
 Note: a USB serial ACM console will be launched by a barebox init script
 when the cursor select key is pressed during startup (e.g. before running
@@ -23,6 +26,7 @@ imx-usb-loader)
 Barebox may be used as drop-in replacement for the shipped bootloader.
 When installing the barebox imximg on the eMMC take care not to overwrite
 the partition table and vendor supplied serial numbers stored on the eMMC.
-e.g. just write the imx-header and the application section:
-memcpy -b -s barebox.imximg -d /dev/disk0.imx_header 1024 0 1024
-memcpy -b -s barebox.imximg -d /dev/disk0.self 4096 0 195584
+e.g. just write the imx-header and the application section::
+
+        memcpy -b -s barebox.imximg -d /dev/disk0.imx_header 1024 0 1024
+        memcpy -b -s barebox.imximg -d /dev/disk0.self 4096 0 195584
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
