Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNM96-0004Ld-7l
 for barebox@lists.infradead.org; Thu, 06 Aug 2015 14:27:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Aug 2015 16:27:24 +0200
Message-Id: <1438871244-16849-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] completion: fix device parameter completion
To: Barebox List <barebox@lists.infradead.org>
Cc: ukl@pengutronix.de

With device parameter completion the '.' separator between the device
name and the parameter was not handled correctly. For example with
a device named global a completion starting with "g." was completed to
"g.obal.". fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/complete.c | 35 +++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index f0ef576..aee21ea 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -169,15 +169,12 @@ int device_complete(struct string_list *sl, char *instr)
 }
 EXPORT_SYMBOL(device_complete);
 
-static int device_param_complete(char *begin, struct device_d *dev,
-				 struct string_list *sl, char *instr)
+static int device_param_complete(struct device_d *dev, struct string_list *sl,
+				 char *instr, int eval)
 {
 	struct param_d *param;
 	int len;
 
-	if (!instr)
-		instr = "";
-
 	len = strlen(instr);
 
 	list_for_each_entry(param, &dev->parameters, list) {
@@ -185,8 +182,8 @@ static int device_param_complete(char *begin, struct device_d *dev,
 			continue;
 
 		string_list_add_asprintf(sl, "%s%s.%s%c",
-			begin ? begin : "", dev_name(dev), param->name,
-			begin ? ' ' : '=');
+			eval ? "$" : "", dev_name(dev), param->name,
+			eval ? ' ' : '=');
 	}
 
 	return 0;
@@ -316,20 +313,26 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 	}
 
 	if (instr_param) {
+		char *devname;
+
 		len = (instr_param - instr);
+
+		devname = xstrndup(instr, len);
+
 		instr_param++;
-	} else {
-		len = strlen(instr);
-		instr_param = "";
+
+		dev = get_device_by_name(devname);
+		free(devname);
+		if (dev)
+			device_param_complete(dev, sl, instr_param, eval);
+		return 0;
 	}
 
+	len = strlen(instr);
+
 	for_each_device(dev) {
-		if (!strncmp(instr, dev_name(dev), len)) {
-			if (eval)
-				device_param_complete("$", dev, sl, instr_param);
-			else
-				device_param_complete(NULL, dev, sl, instr_param);
-		}
+		if (!strncmp(instr, dev_name(dev), len))
+			device_param_complete(dev, sl, "", eval);
 	}
 
 	return 0;
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
