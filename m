Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ByH-0007Y6-D3
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 10:43:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2020 11:43:33 +0100
Message-Id: <20200213104335.6057-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] scripts: imx-usb-loader: remove unnecessary check
To: Barebox List <barebox@lists.infradead.org>

file_base is the address where the image would be loaded to if we were
not skipping the unused space before the header in the image. I can't
see any reason why this should be higher than the download address.
Drop this superfluous check.

Tested on i.MX51, i.MX53 and i.MX6

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 16df1ec1d5..ebe0eea050 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1401,11 +1401,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		dladdr = header_addr;
 	}
 
-	if (file_base > dladdr) {
-		max_length -= (file_base - dladdr);
-		dladdr = file_base;
-	}
-
 	skip = dladdr - file_base;
 
 	image = buf + skip;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
