Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrNw-00012I-14
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 17:03:53 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1iPrNt-0005cu-D7
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 18:03:49 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1iPrNt-0007qs-5a
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 18:03:49 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Oct 2019 18:03:39 +0100
Message-Id: <20191030170338.29446-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] parameter: strip leading and trailing whitespaces
To: barebox@lists.infradead.org

My initial bug was the following: I set the
global.boot.default="boot1 boot2 " and executed the 'boot' command. If
both targets are not bootable barebox starts to execute the boot scripts
found under /env/boot. This is because of the command/boot.c
implementation and the leading whitespace. Without the whitespace only
the two desired boot targets are tried.

IMHO leading and trailing whitespaces are error-prone in many cases. If
someone wants to concatenate strings he/she should add spaces on
purpose. So I fixed the bug above globally by always stripping leading
and trailing whitespaces.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 lib/parameter.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 00e9a9ff4e..fdbb2e71d1 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -253,11 +253,14 @@ static int param_string_set(struct device_d *dev, struct param_d *p, const char
 	struct param_string *ps = to_param_string(p);
 	int ret;
 	char *value_save = *ps->value;
+	char *value_new;
 
 	if (!val)
 		val = "";
 
-	*ps->value = xstrdup(val);
+	value_new = xstrdup(val);
+	value_new = strim(value_new);
+	*ps->value = value_new;
 
 	if (!ps->set)
 		return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
