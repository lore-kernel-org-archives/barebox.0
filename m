Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bsPHk-0000ob-IE
 for barebox@lists.infradead.org; Fri, 07 Oct 2016 07:09:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Oct 2016 09:09:07 +0200
Message-Id: <20161007070908.14855-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] Allow device parameters for devices with dots in name
To: Barebox List <barebox@lists.infradead.org>

Devices can have a dot in the name, so we can't expect to find the
full device name before the first dot. Currently parameters of devices
with a dot in the name are inaccessible from the shell.
Fix this by iterating over the possible device name / parameter name
combinations to find a existing combination.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c | 48 ++++++++++++++++++++++++++++++++++--------------
 1 file changed, 34 insertions(+), 14 deletions(-)

diff --git a/common/env.c b/common/env.c
index 6f736d5..df8a4df 100644
--- a/common/env.c
+++ b/common/env.c
@@ -135,26 +135,46 @@ static const char *getenv_raw(struct list_head *l, const char *name)
 	return NULL;
 }
 
-const char *getenv (const char *name)
+static const char *dev_getenv(const char *name)
 {
-	struct env_context *c;
-	const char *val;
+	const char *pos, *val, *dot, *varname;
+	char *devname;
+	struct device_d *dev;
+
+	pos = name;
+
+	while (1) {
+		dot = strchr(pos, '.');
+		if (!dot)
+			break;
+
+		devname = xstrndup(name, dot - name);
+		varname = dot + 1;
+
+		dev = get_device_by_name(devname);
+
+		free(devname);
 
-	if (strchr(name, '.')) {
-		const char *ret = NULL;
-		char *devstr = strdup(name);
-		char *par = strchr(devstr, '.');
-		struct device_d *dev;
-		*par = 0;
-		dev = get_device_by_name(devstr);
 		if (dev) {
-				par++;
-				ret = dev_get_param(dev, par);
+			val = dev_get_param(dev, varname);
+			if (val)
+				return val;
 		}
-		free(devstr);
-		return ret;
+
+		pos = dot + 1;
 	}
 
+	return NULL;
+}
+
+const char *getenv(const char *name)
+{
+	struct env_context *c;
+	const char *val;
+
+	if (strchr(name, '.'))
+		return dev_getenv(name);
+
 	c = context;
 
 	val = getenv_raw(&c->local, name);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
