Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJN1-0001lj-3H
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:49:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:48:49 +0100
Message-Id: <1387381729-8411-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] video: simplefb: Add a8r8g8b8 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/simplefb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb.c
index fcd7517..3572629 100644
--- a/drivers/video/simplefb.c
+++ b/drivers/video/simplefb.c
@@ -37,7 +37,15 @@ static const struct simplefb_mode simplefb_modes[] = {
 		.green	= { .length = 6, .offset = 5 },
 		.blue	= { .length = 5, .offset = 0 },
 		.transp	= { .length = 0, .offset = 0 },
+	}, {
+		.format	= "a8r8g8b8",
+		.bpp	= 32,
+		.red	= { .length = 8, .offset = 16 },
+		.green	= { .length = 8, .offset = 8 },
+		.blue	= { .length = 8, .offset = 0 },
+		.transp	= { .length = 8, .offset = 24 },
 	},
+
 };
 
 static bool simplefb_bitfield_cmp(const struct fb_bitfield *a,
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
