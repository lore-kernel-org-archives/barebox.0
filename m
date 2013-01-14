Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eta-ori.net ([176.31.99.10] helo=orion.eta-ori.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TuZFz-0005Bf-Nb
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 01:54:36 +0000
Received: from localhost.localdomain (p5B06EB72.dip.t-dialin.net
 [91.6.235.114])
 by orion.eta-ori.net (Postfix) with ESMTPSA id 91A7F600C4
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 02:54:32 +0100 (CET)
From: Daniel Mierswa <d.mierswa@phytec.de>
Date: Mon, 14 Jan 2013 02:54:16 +0100
Message-Id: <315822d6c1eb34af01e0047077f6fd1855dc6265.1358127379.git.d.mierswa@phytec.de>
In-Reply-To: <cover.1358127379.git.d.mierswa@phytec.de>
References: <cover.1358127379.git.d.mierswa@phytec.de>
In-Reply-To: <cover.1358127379.git.d.mierswa@phytec.de>
References: <cover.1358127379.git.d.mierswa@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] graphic_utils: always initialize offscreenbuf member
To: barebox@lists.infradead.org

If offscreen was not passed to the function the resulting
offscreenbuf was a dangling pointer and the free() call
in fd_close would result in undefined behaviour.

Signed-off-by: Daniel Mierswa <d.mierswa@phytec.de>
---
 lib/gui/graphic_utils.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 3800ee2..79200de 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -226,6 +226,8 @@ int fb_open(const char * fbdev, struct screen *sc, bool offscreen)
 		 * on the framebuffer
 		 */
 		sc->offscreenbuf = malloc(sc->fbsize);
+	} else {
+		sc->offscreenbuf = NULL;
 	}
 
 	return sc->fd;
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
