Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hY-Bw
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:43 +0100
Message-Id: <20181109095246.15068-18-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/20] video: vpl: make locally used function static
To: Barebox List <barebox@lists.infradead.org>

of_find_vpl() is only used locally, so make it static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/vpl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index 99ad180eec..82ceeebada 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -36,7 +36,7 @@ int vpl_register(struct vpl *vpl)
 	return 0;
 }
 
-struct vpl *of_find_vpl(struct device_node *node)
+static struct vpl *of_find_vpl(struct device_node *node)
 {
 	struct vpl *vpl;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
