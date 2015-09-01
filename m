Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWett-0001U4-7Q
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 06:18:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Sep 2015 08:18:05 +0200
Message-Id: <1441088285-22965-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1441088285-22965-1-git-send-email-s.hauer@pengutronix.de>
References: <1441088285-22965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] param_enum: protect against invalid values
To: Barebox List <barebox@lists.infradead.org>

Since dev_add_param_enum is passed a pointer containing the actual value
it can contain an invalid value. Protect against it so that we do not
access invalid array elements.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/parameter.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 868b810..fd05b49 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -389,7 +389,7 @@ struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
 
 struct param_enum {
 	struct param_d param;
-	int *value;
+	unsigned int *value;
 	const char * const *names;
 	int num_names;
 	int (*set)(struct param_d *p, void *priv);
@@ -441,7 +441,11 @@ static const char *param_enum_get(struct device_d *dev, struct param_d *p)
 	}
 
 	free(p->value);
-	p->value = strdup(pe->names[*pe->value]);
+
+	if (*pe->value >= pe->num_names)
+		p->value = asprintf("invalid:%d", *pe->value);
+	else
+		p->value = strdup(pe->names[*pe->value]);
 
 	return p->value;
 }
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
