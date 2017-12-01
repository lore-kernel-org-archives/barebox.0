Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPe-0003o0-D8
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:32 +0100
Message-Id: <20171201112256.20196-4-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/27] nvvar: when setting a nvvar to NULL just free the
 content
To: Barebox List <barebox@lists.infradead.org>

When a nvvar is about to be removed then it is set to NULL
by barebox. This means for the variable to free it's memory.
In this case also do not pass the value to the corresponding
globalvar, since that would set the globalvar to NULL aswell,
but we want to keep its current value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 77b89c1791..11cf6ce3fe 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -167,8 +167,10 @@ static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
 {
 	int ret;
 
-	if (!val)
-		val = "";
+	if (!val) {
+		free(p->value);
+		return 0;
+	}
 
 	ret = dev_set_param(&global_device, p->name, val);
 	if (ret)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
