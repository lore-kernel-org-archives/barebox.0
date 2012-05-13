Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STXXO-0002jO-8F
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:04:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 13 May 2012 14:04:28 +0200
Message-Id: <1336910669-26908-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1336910669-26908-1-git-send-email-s.hauer@pengutronix.de>
References: <1336910669-26908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] parameter: return empty string for unset parameters
To: barebox@lists.infradead.org

Currently we return NULL for unset parameters. As we can't set them
back to NULL once set this is not very consistent. Return an empty
string instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/parameter.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index baf7720..c75c21e 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -135,7 +135,7 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 
 static const char *param_get_generic(struct device_d *dev, struct param_d *p)
 {
-	return p->value;
+	return p->value ? p->value : "";
 }
 
 static struct param_d *__dev_add_param(struct device_d *dev, const char *name,
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
