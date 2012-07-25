Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwJA-0002Gt-DT
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 07:47:22 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 2C229FF96EE
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 09:52:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Jul 2012 09:47:31 +0200
Message-Id: <1343202453-16279-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343202453-16279-1-git-send-email-plagnioj@jcrosoft.com>
References: <1343202453-16279-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] complete: add missing EXPORT_SYMBOL for {command, device,
 empty, command}_var_complete
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/complete.c b/common/complete.c
index a8bde8d..6a871ef 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -149,6 +149,7 @@ int command_complete(struct string_list *sl, char *instr)
 
 	return 0;
 }
+EXPORT_SYMBOL(command_complete);
 
 int device_complete(struct string_list *sl, char *instr)
 {
@@ -169,6 +170,7 @@ int device_complete(struct string_list *sl, char *instr)
 
 	return COMPLETE_CONTINUE;
 }
+EXPORT_SYMBOL(device_complete);
 
 static int device_param_complete(char *begin, struct device_d *dev,
 				 struct string_list *sl, char *instr)
@@ -197,11 +199,13 @@ int empty_complete(struct string_list *sl, char *instr)
 {
 	return COMPLETE_END;
 }
+EXPORT_SYMBOL(empty_complete);
 
 int command_var_complete(struct string_list *sl, char *instr)
 {
 	return COMPLETE_CONTINUE;
 }
+EXPORT_SYMBOL(command_var_complete);
 
 static int env_param_complete(struct string_list *sl, char *instr, int eval)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
