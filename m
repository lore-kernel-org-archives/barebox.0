Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO4Kh-0005mQ-KZ
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 07:43:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 09:43:43 +0200
Message-Id: <1276501424-3224-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276501424-3224-1-git-send-email-s.hauer@pengutronix.de>
References: <1276501424-3224-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] parameter: set p->value to NULL to avoid freeing it again
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/parameter.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index a3d178f..0aa4193 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -129,8 +129,10 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 {
 	if (p->value)
 		free(p->value);
-	if (!val)
+	if (!val) {
+		p->value = NULL;
 		return 0;
+	}
 	p->value = strdup(val);
 	return 0;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
