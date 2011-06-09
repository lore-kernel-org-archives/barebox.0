Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.97.mail-out.ovh.net ([46.105.44.177]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUgrD-0000BP-EN
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 15:09:17 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 5C3E04AA61B
	for <barebox@lists.infradead.org>;
	Thu,  9 Jun 2011 17:09:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Jun 2011 16:55:49 +0200
Message-Id: <1307631354-5553-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110609145028.GH17584@game.jcrosoft.org>
References: <20110609145028.GH17584@game.jcrosoft.org>
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
Subject: [PATCH 1/6] complete: add var and device param complete support
To: barebox@lists.infradead.org

with $xx or xx= or if device $xx.yy or xx.yy=

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |  111 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 110 insertions(+), 1 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 46ba871..9d9f166 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -27,6 +27,7 @@
 #include <libgen.h>
 #include <command.h>
 #include <stringlist.h>
+#include <environment.h>
 
 static int file_complete(struct string_list *sl, char *instr)
 {
@@ -84,6 +85,110 @@ static int command_complete(struct string_list *sl, char *instr)
 	return 0;
 }
 
+static int device_param_complete(char begin, struct device_d *dev,
+				 struct string_list *sl, char *instr)
+{
+	struct param_d *param;
+	char cmd[128];
+	char *tmp = cmd;
+	int len, len2;
+
+	len = strlen(instr);
+	if (begin) {
+		tmp[0] = begin;
+		tmp++;
+	}
+	strcpy(tmp, dev_name(dev));
+	len2 = strlen(dev_name(dev));
+	tmp += len2;
+	tmp[0] = '.';
+	tmp++;
+
+	list_for_each_entry(param, &dev->parameters, list) {
+		memset(tmp, 0x0, 128 - (int)(tmp - cmd));
+		if (!strncmp(instr, param->name, len)) {
+			strcpy(tmp, param->name);
+			len2 = strlen(param->name);
+			if (begin)
+				tmp[len2] = ' ';
+			else
+				tmp[len2] = '=';
+			tmp[len2 + 1] = 0;
+			string_list_add(sl, cmd);
+		}
+	}
+
+	return 0;
+}
+
+static int env_param_complete(struct string_list *sl, char *instr, int eval)
+{
+	struct device_d *dev;
+	struct variable_d *var;
+	struct env_context *c, *current_c;
+	char cmd[128];
+	char *instr_param;
+	char *tmp = cmd;
+	int len, len2;
+	char end = '=';
+
+	if (eval) {
+		cmd[0] = '$';
+		tmp++;
+		end = ' ';
+	}
+
+	instr_param = strrchr(instr, '.');
+	len = strlen(instr);
+
+	current_c = get_current_context();
+	var = current_c->local->next;
+	while (var) {
+		if (!strncmp(instr, var_name(var), len)) {
+			len2 = strlen(var_name(var));
+			strcpy(tmp, var_name(var));
+			tmp[len2] = end;
+			tmp[len2 + 1] = 0;
+			string_list_add(sl, cmd);
+		}
+		var = var->next;
+	}
+
+	c = get_current_context();
+	while(c) {
+		var = c->global->next;
+		while (var) {
+			if (!strncmp(instr, var_name(var), len)) {
+				len2 = strlen(var_name(var));
+				strcpy(tmp, var_name(var));
+				tmp[len2] = end;
+				tmp[len2 + 1] = 0;
+				string_list_add(sl, cmd);
+			}
+			var = var->next;
+		}
+		c = c->parent;
+	}
+
+	if (instr_param) {
+		len = (instr_param - instr);
+		instr_param++;
+	} else {
+		len = strlen(instr);
+	}
+
+	for_each_device(dev) {
+		if (!strncmp(instr, dev_name(dev), len)) {
+			if (eval)
+				device_param_complete('$', dev, sl, instr_param);
+			else
+				device_param_complete(0, dev, sl, instr_param);
+		}
+	}
+
+	return 0;
+}
+
 static int tab_pressed = 0;
 
 void complete_reset(void)
@@ -121,8 +226,12 @@ int complete(char *instr, char **outstr)
 		t++;
 		file_complete(&sl, t);
 		instr = t;
-	} else
+	} else {
 		command_complete(&sl, instr);
+		env_param_complete(&sl, instr, 0);
+	}
+	if (*instr == '$')
+		env_param_complete(&sl, instr + 1, 1);
 
 	pos = strlen(instr);
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
