Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7X9a-00026q-Or
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 04:53:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Aug 2020 06:53:32 +0200
Message-Id: <20200817045332.28099-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200817045332.28099-1-a.fatoum@pengutronix.de>
References: <20200817045332.28099-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] video: simple-panel: don't error out on unhandled ioctl
 command
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Video devices propagate ioctls down the pipeline by calling vpl_ioctl
themselves. This also happens when propagating VPL_PREPARE.
simple-panel doesn't have anything special to do in VPL_PREPARE, so
it returned -ENOSYS so far. This leads vpl_ioctl to fail, which in
turn is propagated back through the pipeline.

For devices with multiple endpoints, vpl_ioctl passes the ioctl
to each one of them. An early exit by a simple-panel can thus cause
other endpoints to not prepare themselves leading to display
issues.

Fix this by having the simple panel ignore ioctls that aren't relevant
to it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/simple-panel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 1d05153d1669..2f904a7b2bee 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -135,7 +135,7 @@ static int simple_panel_ioctl(struct vpl *vpl, unsigned int port,
 	case VPL_GET_VIDEOMODES:
 		return simple_panel_get_modes(panel, ptr);
 	default:
-		return -ENOSYS;
+		return 0;
 	}
 }
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
