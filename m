Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdT9P-0000q8-D2
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 23:01:40 +0000
Received: by mail-ee0-f42.google.com with SMTP id c1so1037821eek.29
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 15:01:18 -0800 (PST)
Received: from mamamia.internal (a89-182-17-100.net-htp.de. [89.182.17.100])
 by mx.google.com with ESMTPSA id s3sm52362808eeo.3.2013.11.04.15.01.15
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Nov 2013 15:01:17 -0800 (PST)
From: Andre Heider <a.heider@gmail.com>
Date: Tue,  5 Nov 2013 00:01:01 +0100
Message-Id: <1383606064-30494-4-git-send-email-a.heider@gmail.com>
In-Reply-To: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH v2 3/6] gui: convert the bmp renderer to respect line_length
To: barebox@lists.infradead.org

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 lib/gui/bmp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 6bf8cd0..dcf3095 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -78,8 +78,8 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
-			adr = buf + ((y + starty) * sc->s.width + startx) *
-					(sc->info.bits_per_pixel >> 3);
+			adr = buf + (y + starty) * sc->info.line_length +
+					startx * (sc->info.bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
 				int pixel;
 
@@ -100,8 +100,8 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
-			adr = buf + ((y + starty) * sc->s.width + startx) *
-					(sc->info.bits_per_pixel >> 3);
+			adr = buf + (y + starty) * sc->info.line_length +
+					startx * (sc->info.bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
 				char *pixel;
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
