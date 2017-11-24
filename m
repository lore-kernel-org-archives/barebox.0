Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96c-0008Jp-1R
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:31 +0100
Message-Id: <20171124081237.6830-16-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/21] net: ifup: Factor out a eth_discover function
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ifup.c | 38 ++++++++++++++++++++++++++------------
 1 file changed, 26 insertions(+), 12 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index bec254b64d..859cee717a 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -26,6 +26,30 @@
 #include <fs.h>
 #include <linux/stat.h>
 
+static int eth_discover(const char *name)
+{
+	char *cmd_discover;
+	struct stat s;
+	int ret;
+
+	cmd_discover = basprintf("/env/network/%s-discover", name);
+
+	ret = stat(cmd_discover, &s);
+	if (ret)
+		goto out;
+
+	ret = run_command(cmd_discover);
+	if (ret) {
+		pr_err("Running '%s' failed with %d\n", cmd_discover, ret);
+		goto out;
+	}
+
+out:
+	free(cmd_discover);
+
+	return ret;
+}
+
 static char *vars[] = {
 	"ipaddr",
 	"netmask",
@@ -48,9 +72,8 @@ static int eth_set_param(struct device_d *dev, const char *param)
 int ifup(const char *name, unsigned flags)
 {
 	int ret;
-	char *cmd, *cmd_discover;
+	char *cmd;
 	const char *ip;
-	struct stat s;
 	int i;
 	struct device_d *dev;
 	struct eth_device *edev = eth_get_byname(name);
@@ -66,7 +89,6 @@ int ifup(const char *name, unsigned flags)
 		setenv(vars[i], "");
 
 	cmd = basprintf("source /env/network/%s", name);
-	cmd_discover = basprintf("/env/network/%s-discover", name);
 
 	ret = run_command(cmd);
 	if (ret) {
@@ -74,14 +96,7 @@ int ifup(const char *name, unsigned flags)
 		goto out;
 	}
 
-	ret = stat(cmd_discover, &s);
-	if (!ret) {
-		ret = run_command(cmd_discover);
-		if (ret) {
-			pr_err("Running '%s' failed with %d\n", cmd, ret);
-			goto out;
-		}
-	}
+	eth_discover(name);
 
 	dev = get_device_by_name(name);
 	if (!dev) {
@@ -142,7 +157,6 @@ int ifup(const char *name, unsigned flags)
 out:
 	env_pop_context();
 	free(cmd);
-	free(cmd_discover);
 
 	return ret;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
