Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 23.97.mail-out.ovh.net ([87.98.169.92] helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QTXlM-0002Lz-V0
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 11:14:29 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 922FE4B217D
	for <barebox@lists.infradead.org>;
	Mon,  6 Jun 2011 13:14:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  6 Jun 2011 13:01:23 +0200
Message-Id: <1307358084-16231-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2 v3] complete: add device name complete support for devinfo
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |   40 ++++++++++++++++++++++++++++++++++------
 1 files changed, 34 insertions(+), 6 deletions(-)

v3:

	just complete the device name for devinfo

	the evaluation and param device setting will be add later

Best Regards,
J.

diff --git a/common/complete.c b/common/complete.c
index 46ba871..c3a05f1 100644
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
@@ -117,12 +138,19 @@ int complete(char *instr, char **outstr)
 	instr = t;
 
 	/* get the completion possibilities */
-	if ((t = strrchr(t, ' '))) {
-		t++;
-		file_complete(&sl, t);
-		instr = t;
-	} else
-		command_complete(&sl, instr);
+	if (!strcmp(instr, "devinfo ")) {
+		device_complete(&sl, instr + 8);
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
