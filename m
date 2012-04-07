Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGM8r-0005Qo-9F
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 03:16:46 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 50E1EFF8843
 for <barebox@lists.infradead.org>; Sat,  7 Apr 2012 05:17:33 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  7 Apr 2012 05:00:14 +0200
Message-Id: <1333767615-21555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] menu: fix double action when "\n\r" or "\r\n" is received
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/menu.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index fd21e52..e85a320 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -296,7 +296,7 @@ int menu_show(struct menu *m)
 
 	do {
 		if (m->auto_select >= 0)
-			ch = KEY_ENTER;
+			ch = KEY_RETURN;
 		else
 			ch = getc();
 
@@ -339,7 +339,6 @@ int menu_show(struct menu *m)
 				m->selected->action(m, m->selected);
 			print_menu_entry(m, m->selected, 1);
 			break;
-		case KEY_ENTER:
 		case KEY_RETURN:
 			clear();
 			gotoXY(1,1);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
