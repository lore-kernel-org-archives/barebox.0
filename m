Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x236.google.com ([2a00:1450:4013:c00::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZRSC-0004BD-Jy
 for barebox@lists.infradead.org; Thu, 24 Oct 2013 20:24:25 +0000
Received: by mail-ee0-f54.google.com with SMTP id t10so1186429eei.27
 for <barebox@lists.infradead.org>; Thu, 24 Oct 2013 13:24:02 -0700 (PDT)
Received: from mamamia.internal (a89-182-11-81.net-htp.de. [89.182.11.81])
 by mx.google.com with ESMTPSA id bn13sm8547646eeb.11.2013.10.24.13.24.01
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Thu, 24 Oct 2013 13:24:02 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Thu, 24 Oct 2013 22:23:43 +0200
Message-Id: <1382646226-24871-4-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 3/6] gui: convert the bmp renderer to respect the stride value
To: barebox@lists.infradead.org

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 lib/gui/bmp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 6bf8cd0..bb4de12 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -78,8 +78,8 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
-			adr = buf + ((y + starty) * sc->s.width + startx) *
-					(sc->info.bits_per_pixel >> 3);
+			adr = buf + (y + starty) * sc->info.stride +
+					startx * (sc->info.bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
 				int pixel;
 
@@ -100,8 +100,8 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
-			adr = buf + ((y + starty) * sc->s.width + startx) *
-					(sc->info.bits_per_pixel >> 3);
+			adr = buf + (y + starty) * sc->info.stride +
+					startx * (sc->info.bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
 				char *pixel;
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
