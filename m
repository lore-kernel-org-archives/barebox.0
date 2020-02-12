Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mm8-0002JC-Fi
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 07:49:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2020 08:49:33 +0100
Message-Id: <20200212074933.5228-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts: imx-usb-loader: Accept new header version
To: Barebox List <barebox@lists.infradead.org>

U-Boot generates images with the header version set to 0x41 instead of
0x40. We can accept them as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 70883bf883..8cc34b99eb 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1228,7 +1228,8 @@ static int is_header(const unsigned char *p)
 			return 1;
 		break;
 	case HDR_MX53:
-		if (hdr->header.tag == TAG_IVT_HEADER && hdr->header.version == IVT_VERSION)
+		if (hdr->header.tag == TAG_IVT_HEADER &&
+		    (hdr->header.version == IVT_VERSION || hdr->header.version == 0x41))
 			return 1;
 	}
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
