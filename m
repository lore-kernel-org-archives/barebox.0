Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgwWf-0000gy-5f
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 16:45:54 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Thu, 23 Feb 2017 17:45:26 +0100
Message-Id: <20170223164527.29878-2-bst@pengutronix.de>
In-Reply-To: <20170223164527.29878-1-bst@pengutronix.de>
References: <20170223164527.29878-1-bst@pengutronix.de>
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
Subject: [PATCH 2/3] graphic_utils: do not allocate info in fb_open
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

info was errorneously allocated, but it really is a pointer to a fb_info
struct from the framebuffer. This fixes a memory leak.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 lib/gui/graphic_utils.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index f6ab5ea0d1..7d238e9ff9 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -277,8 +277,6 @@ struct screen *fb_open(const char * fbdev)
 	if (fd < 0)
 		return ERR_PTR(fd);
 
-	info = xzalloc(sizeof(*info));
-
 	ret = ioctl(fd, FBIOGET_SCREENINFO, &info);
 	if (ret) {
 		goto failed_screeninfo;
@@ -291,7 +289,6 @@ struct screen *fb_open(const char * fbdev)
 	}
 
 	sc->fd = fd;
-	sc->info = info;
 
 	return sc;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
