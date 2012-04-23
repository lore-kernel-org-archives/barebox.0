Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMHh1-00027L-AT
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 11:44:32 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B1562FFAC41
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 13:46:02 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Apr 2012 13:24:50 +0200
Message-Id: <1335180291-26991-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] menu: fix support for "\n", "\n\r" and "\r"
To: barebox@lists.infradead.org

If "\n\r" or "\r\n" is ignore one.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/menu.c |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 83821ec..6c530b6 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -296,7 +296,7 @@ static int menu_alloc_display_buffer(struct menu *m)
 
 int menu_show(struct menu *m)
 {
-	int ch;
+	int ch, ch_previous = 0;
 	int escape = 0;
 	int countdown;
 	int auto_display_len = 16;
@@ -388,7 +388,12 @@ int menu_show(struct menu *m)
 				m->selected->action(m, m->selected);
 			print_menu_entry(m, m->selected, 1);
 			break;
+		case KEY_ENTER:
+			if (ch_previous == KEY_RETURN)
+				break;
 		case KEY_RETURN:
+			if (ch_previous == KEY_ENTER)
+				break;
 			clear();
 			gotoXY(1,1);
 			m->selected->action(m, m->selected);
@@ -399,6 +404,7 @@ int menu_show(struct menu *m)
 		default:
 			break;
 		}
+		ch_previous = ch;
 	} while(1);
 
 	return 0;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
