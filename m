Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwJA-0002Gw-A4
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 07:47:20 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A72B9FF969C
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 09:52:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Jul 2012 09:47:33 +0200
Message-Id: <1343202453-16279-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] command: add missing EXPORT_SYMBOL for find_cmd
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/command.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/common/command.c b/common/command.c
index f21bcc2..c18998c 100644
--- a/common/command.c
+++ b/common/command.c
@@ -166,6 +166,7 @@ struct command *find_cmd (const char *cmd)
 
 	return NULL;	/* not found or ambiguous command */
 }
+EXPORT_SYMBOL(find_cmd);
 
 /*
  * Put all commands into a linked list. Without module support we could use
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
