Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96c-0008JS-1X
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:18 +0100
Message-Id: <20171124081237.6830-3-s.hauer@pengutronix.de>
In-Reply-To: <20171124081237.6830-1-s.hauer@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/21] nvvar: when setting a nvvar to NULL just free the
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
index ee756e5140..59d299f019 100644
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
