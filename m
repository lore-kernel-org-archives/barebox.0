Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZHxm-0001g6-N3
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 15:06:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jan 2018 16:06:33 +0100
Message-Id: <20180110150633.30359-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] device parameters: Allow dots in device names for setenv
 aswell
To: Barebox List <barebox@lists.infradead.org>

Since

f5d77d80f5 Allow device parameters for devices with dots in name

Devices can have dots in their name and we can still read its
device parameters. Do the same change for writing parameters so
they can be written aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c | 54 +++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 35 insertions(+), 19 deletions(-)

diff --git a/common/env.c b/common/env.c
index df8a4dff60..80d3f7ab50 100644
--- a/common/env.c
+++ b/common/env.c
@@ -223,34 +223,50 @@ static int setenv_raw(struct list_head *l, const char *name, const char *value)
 	return 0;
 }
 
-int setenv(const char *_name, const char *value)
+static int dev_setenv(const char *name, const char *val)
 {
-	char *name = strdup(_name);
-	char *par;
-	int ret = 0;
-	struct list_head *list;
+	const char *pos, *dot, *varname;
+	char *devname;
+	struct device_d *dev;
 
-	if (value && !*value)
-		value = NULL;
+	pos = name;
+
+	while (1) {
+		dot = strchr(pos, '.');
+		if (!dot)
+			break;
+
+		devname = xstrndup(name, dot - name);
+		varname = dot + 1;
 
+		dev = get_device_by_name(devname);
 
-	if ((par = strchr(name, '.'))) {
-		struct device_d *dev;
+		free(devname);
 
-		*par++ = 0;
-		dev = get_device_by_name(name);
 		if (dev) {
-			ret = dev_set_param(dev, par, value);
-			if (ret)
-				eprintf("%s: set parameter %s: %s\n",
-						dev_name(dev), par, strerror(-ret));
-		} else {
-			ret = -ENODEV;
-			eprintf("set parameter: no such device %s\n", name);
+			if (get_param_by_name(dev, varname))
+				return dev_set_param(dev, varname, val);
 		}
 
-		errno = -ret;
+		pos = dot + 1;
+	}
+
+	return -ENODEV;
+}
+
+int setenv(const char *_name, const char *value)
+{
+	char *name = strdup(_name);
+	int ret = 0;
+	struct list_head *list;
+
+	if (value && !*value)
+		value = NULL;
 
+	if (strchr(name, '.')) {
+		ret = dev_setenv(name, value);
+		if (ret)
+			eprintf("Cannot set parameter: %s\n", strerror(-ret));
 		goto out;
 	}
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
