Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.97.mail-out.ovh.net ([178.33.110.29]
	helo=97.mail-out.ovh.net)
	by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QTCwA-0002TP-Cd
	for barebox@lists.infradead.org; Sun, 05 Jun 2011 13:00:15 +0000
Received: from 63.mail-out.ovh.net (8.63.mail-out.ovh.net [188.165.44.116])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 1EB08420ABA
	for <barebox@lists.infradead.org>;
	Sun,  5 Jun 2011 15:00:05 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  5 Jun 2011 14:46:52 +0200
Message-Id: <1307278012-17022-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] complete: add device complete support
To: barebox@lists.infradead.org

with param complete support if <devname>.[xx]

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |   68 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 68 insertions(+), 0 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 46ba871..398888a 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -84,6 +84,72 @@ static int command_complete(struct string_list *sl, char *instr)
 	return 0;
 }
 
+static int device_param_complete(struct device_d *dev, struct string_list *sl, char *instr)
+{
+	struct param_d *param;
+	char cmd[128];
+	char *tmp;
+	int len, len2;
+
+	len = strlen(instr);
+	strcpy(cmd, dev_name(dev));
+	len2 = strlen(dev_name(dev));
+	tmp = cmd + len2;
+	tmp[0] = '.';
+	tmp++;
+
+	list_for_each_entry(param, &dev->parameters, list) {
+		memset(tmp, 0x0, 128 - (int)(tmp - cmd));
+		if (!strncmp(instr, param->name, len)) {
+			strcpy(tmp, param->name);
+			len2 = strlen(param->name);
+			tmp[len2] = ' ';
+			tmp[len2 + 1] = 0;
+			string_list_add(sl, cmd);
+		}
+	}
+
+	return 0;
+}
+
+static int device_complete(struct string_list *sl, char *instr)
+{
+	struct device_d *dev;
+	char *instr_param;
+	char cmd[128];
+	int len, len2;
+
+	instr_param = strrchr(instr, '.');
+	if (instr_param) {
+		*instr_param = 0;
+		instr_param++;
+	}
+	len = strlen(instr);
+
+	if (instr_param) {
+		for_each_device(dev) {
+			if (!strcmp(instr, dev_name(dev)))
+				device_param_complete(dev, sl, instr_param);
+		}
+	} else {
+		for_each_device(dev) {
+			if (!strncmp(instr, dev_name(dev), len)) {
+				len2 = strlen(dev_name(dev));
+				strcpy(cmd, dev_name(dev));
+				cmd[len2] = ' ';
+				cmd[len2 + 1] = 0;
+				string_list_add(sl, cmd);
+			}
+		}
+	}
+	if (instr_param) {
+		instr_param--;
+		*instr_param = '.';
+	}
+
+	return 0;
+}
+
 static int tab_pressed = 0;
 
 void complete_reset(void)
@@ -124,6 +190,8 @@ int complete(char *instr, char **outstr)
 	} else
 		command_complete(&sl, instr);
 
+	device_complete(&sl, instr);
+
 	pos = strlen(instr);
 
 	*outstr = "";
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
