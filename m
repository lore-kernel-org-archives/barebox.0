Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKkT7-0003f2-GM
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:03:55 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 10CE3FF8AD2
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 08:05:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Apr 2012 07:44:50 +0200
Message-Id: <1334814298-11468-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120419053846.GA20601@game.jcrosoft.org>
References: <20120419053846.GA20601@game.jcrosoft.org>
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
Subject: [PATCH 03/11] complete: add var and device param complete support
To: barebox@lists.infradead.org

with $xx or xx= or if device $xx.yy or xx.yy=

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |   96 +++++++++++++++++++++++++++++++++++++++++++++++++---
 1 files changed, 90 insertions(+), 6 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 6d5349b..9d749e0 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -134,14 +134,95 @@ static int path_command_complete(struct string_list *sl, char *instr)
 static int command_complete(struct string_list *sl, char *instr)
 {
 	struct command *cmdtp;
-	char cmd[128];
+
+	if (!instr)
+		instr = "";
 
 	for_each_command(cmdtp) {
-		if (!strncmp(instr, cmdtp->name, strlen(instr))) {
-			strcpy(cmd, cmdtp->name);
-			cmd[strlen(cmdtp->name)] = ' ';
-			cmd[strlen(cmdtp->name) + 1] = 0;
-			string_list_add(sl, cmd);
+		if (strncmp(instr, cmdtp->name, strlen(instr)))
+			continue;
+
+		string_list_add_asprintf(sl, "%s ", cmdtp->name);
+	}
+
+	return 0;
+}
+
+static int device_param_complete(char *begin, struct device_d *dev,
+				 struct string_list *sl, char *instr)
+{
+	struct param_d *param;
+	int len;
+
+	if (!instr)
+		instr = "";
+
+	len = strlen(instr);
+
+	list_for_each_entry(param, &dev->parameters, list) {
+		if (strncmp(instr, param->name, len))
+			continue;
+
+		string_list_add_asprintf(sl, "%s%s.%s%c",
+			begin ? begin : "", dev_name(dev), param->name,
+			begin ? ' ' : '=');
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
+	char *instr_param;
+	int len;
+	char end = '=';
+	char *begin = "";
+
+	if (!instr)
+		instr = "";
+
+	if (eval) {
+		begin = "$";
+		end = ' ';
+	}
+
+	instr_param = strrchr(instr, '.');
+	len = strlen(instr);
+
+	current_c = get_current_context();
+	for(var = current_c->local->next; var; var = var->next) {
+		if (strncmp(instr, var_name(var), len))
+			continue;
+		string_list_add_asprintf(sl, "%s%s%c",
+			begin, var_name(var), end);
+	}
+
+	for (c = get_current_context(); c; c = c->parent) {
+		for (var = c->global->next; var; var = var->next) {
+			if (strncmp(instr, var_name(var), len))
+				continue;
+			string_list_add_asprintf(sl, "%s%s%c",
+				begin, var_name(var), end);
+		}
+	}
+
+	if (instr_param) {
+		len = (instr_param - instr);
+		instr_param++;
+	} else {
+		len = strlen(instr);
+		instr_param = "";
+	}
+
+	for_each_device(dev) {
+		if (!strncmp(instr, dev_name(dev), len)) {
+			if (eval)
+				device_param_complete("$", dev, sl, instr_param);
+			else
+				device_param_complete(NULL, dev, sl, instr_param);
 		}
 	}
 
@@ -188,7 +269,10 @@ int complete(char *instr, char **outstr)
 	} else {
 		command_complete(&sl, instr);
 		path_command_complete(&sl, instr);
+		env_param_complete(&sl, instr, 0);
 	}
+	if (*instr == '$')
+		env_param_complete(&sl, instr + 1, 1);
 
 	pos = strlen(instr);
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
