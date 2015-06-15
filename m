Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4UpP-0001lC-Js
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 13:53:33 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 15 Jun 2015 15:53:06 +0200
Message-Id: <1434376388-31137-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1434376388-31137-1-git-send-email-mkl@pengutronix.de>
References: <1434376388-31137-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 1/3] parameter: allow setting of string parameters of zero
 length
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 lib/parameter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 865ad9f4316f..09559b637ee3 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -225,7 +225,7 @@ static int param_string_set(struct device_d *dev, struct param_d *p, const char
 	char *value_save = *ps->value;
 
 	if (!val)
-		return -EINVAL;
+		val = "";
 
 	*ps->value = xstrdup(val);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
