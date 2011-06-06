Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.97.mail-out.ovh.net ([178.33.252.128]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QTYcl-0003AC-01
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 12:09:39 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 2F4B24A61D1
	for <barebox@lists.infradead.org>;
	Mon,  6 Jun 2011 14:09:57 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  6 Jun 2011 13:56:33 +0200
Message-Id: <1307361394-21649-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2 v4] complete: add device name complete support for devinfo
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |   41 +++++++++++++++++++++++++++++++++++------
 1 files changed, 35 insertions(+), 6 deletions(-)
v4:

	just complete the device name for devinfo

	the evaluation and param device setting will be add later

Best Regards,
J.

diff --git a/common/complete.c b/common/complete.c
index 46ba871..6f6e8a8 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -84,6 +84,27 @@ static int command_complete(struct string_list *sl, char *instr)
 	return 0;
 }
 
+static int device_complete(struct string_list *sl, char *instr)
+{
+	struct device_d *dev;
+	char cmd[128];
+	int len, len2;
+
+	len = strlen(instr);
+
+	for_each_device(dev) {
+		if (!strncmp(instr, dev_name(dev), len)) {
+			len2 = strlen(dev_name(dev));
+			strcpy(cmd, dev_name(dev));
+			cmd[len2] = ' ';
+			cmd[len2 + 1] = 0;
+			string_list_add(sl, cmd);
+		}
+	}
+
+	return 0;
+}
+
 static int tab_pressed = 0;
 
 void complete_reset(void)
@@ -117,12 +138,20 @@ int complete(char *instr, char **outstr)
 	instr = t;
 
 	/* get the completion possibilities */
-	if ((t = strrchr(t, ' '))) {
-		t++;
-		file_complete(&sl, t);
-		instr = t;
-	} else
-		command_complete(&sl, instr);
+	if (!strncmp(instr, "devinfo ", 8)) {
+		instr += 8;
+		device_complete(&sl, instr);
+	} else {
+		if ((t = strrchr(t, ' '))) {
+			t++;
+			file_complete(&sl, t);
+			instr = t;
+		} else {
+			command_complete(&sl, instr);
+		}
+	}
+
+	device_complete(&sl, instr);
 
 	pos = strlen(instr);
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
