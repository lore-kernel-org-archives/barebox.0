Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:4065::2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAJa4-000388-OU
 for barebox@lists.infradead.org; Mon, 15 May 2017 17:14:50 +0000
Received: from port-92-204-74-254.dynamic.qsc.de ([92.204.74.254]
 helo=localhost.localdomain)
 by stcim.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_CBC_SHA256:128)
 (Exim 4.84_2) (envelope-from <contact@stefanchrist.eu>)
 id 1dAJZg-0004hT-LZ
 for barebox@lists.infradead.org; Mon, 15 May 2017 19:14:24 +0200
From: Stefan Lengfeld <contact@stefanchrist.eu>
Date: Mon, 15 May 2017 19:14:22 +0200
Message-Id: <20170515171422.1648-5-contact@stefanchrist.eu>
In-Reply-To: <20170515171422.1648-1-contact@stefanchrist.eu>
References: <20170515171422.1648-1-contact@stefanchrist.eu>
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
Subject: [PATCH 5/5] docs: render DIP switches as verbatim text
To: barebox@lists.infradead.org

Render images of DIP switches as <pre> html tags/verbatim text. This
fixes the sphinx errors:

    Documentation/boards/imx/Element14-WaRP7.rst:25: ERROR: Malformed table.
    Documentation/boards/imx/Element14-WaRP7.rst:36: ERROR: Malformed table.
    Documentation/boards/imx/Element14-WaRP7.rst:47: ERROR: Malformed table.

Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
---
 Documentation/boards/imx/Element14-WaRP7.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/imx/Element14-WaRP7.rst b/Documentation/boards/imx/Element14-WaRP7.rst
index d4e5e79..df14f84 100644
--- a/Documentation/boards/imx/Element14-WaRP7.rst
+++ b/Documentation/boards/imx/Element14-WaRP7.rst
@@ -20,7 +20,7 @@ vendor modified u-boot imximage.
 Barebox can be used as a drop-in replacement for the shipped bootloader.
 
 The WaRP7 IO Board has a double DIP switch where switch number two defines the
-boot source of the i.MX7 SoC:
+boot source of the i.MX7 SoC::
 
   +-----+
   |     |
@@ -31,7 +31,7 @@ boot source of the i.MX7 SoC:
   | 1 2 |
   +-----+
 
-Bootsource is the internal eMMC:
+Bootsource is the internal eMMC::
 
   +-----+
   |     |
@@ -42,7 +42,7 @@ Bootsource is the internal eMMC:
   | 1 2 |
   +-----+
 
-Bootsource is the USB:
+Bootsource is the USB::
 
   +-----+
   |     |
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
