Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYzL-0007UV-5P
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 10:38:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Nov 2019 11:38:00 +0100
Message-Id: <20191115103800.15564-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] filetype: mvebu: Fix kwbimage v1 detection
To: Barebox List <barebox@lists.infradead.org>
Cc: ukl@pengutronix.de

The kwbimage detection calculates a checksum over the first 31 bytes of
the image. This is correct for the v0 image format, but for the v1 image
format the checksum in the image also covers the extenstion headers.
These might not be completely present in the initial buffer provided to
file_detect_type(), so just drop the checksum calculation for v1 images.

Fixes: bf8b6d46db ("kwbimage_v0: add support to detect and boot a mvebu v0 image")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 4966c5e068..ad7f301d71 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -316,19 +316,21 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
 	    buf8[0x1] == 0 && buf8[0x2] == 0 && buf8[0x3] == 0 &&
 	    buf8[0x18] == 0 && buf8[0x1b] == 0 && buf8[0x1c] == 0) {
-		unsigned char sum = 0;
-		int i;
 
-		for (i = 0; i <= 0x1e; ++i)
-			sum += buf8[i];
+		if (buf8[0x8] == 0) {
+			unsigned char sum = 0;
+			int i;
 
-		if (sum == buf8[0x1f] && buf8[0x8] == 0)
-			return filetype_kwbimage_v0;
+			for (i = 0; i <= 0x1e; ++i)
+				sum += buf8[i];
 
-		if (sum == buf8[0x1f] &&
-		    buf8[0x8] == 1 && buf8[0x1d] == 0 &&
-		    (buf8[0x1e] == 0 || buf8[0x1e] == 1))
-			return filetype_kwbimage_v1;
+			if (sum == buf8[0x1f])
+				return filetype_kwbimage_v0;
+		} else if (buf8[0x8] == 1) {
+			if (sum == buf8[0x1f] && buf8[0x1d] == 0 &&
+			    (buf8[0x1e] == 0 || buf8[0x1e] == 1))
+				return filetype_kwbimage_v1;
+		}
 	}
 
 	if (is_sparse_image(_buf))
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
