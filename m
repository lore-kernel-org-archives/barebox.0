Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RxJVt-0007oq-Va
 for barebox@lists.infradead.org; Tue, 14 Feb 2012 14:37:53 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 88F37FFAA3A
 for <barebox@lists.infradead.org>; Tue, 14 Feb 2012 15:40:10 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Feb 2012 15:31:19 +0100
Message-Id: <1329229881-26751-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
References: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] readkey: add define for Ascii keys
To: barebox@lists.infradead.org

this will simplify the usage of gpio keyboard

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/menu.c     |    6 +++---
 include/readkey.h |    4 ++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 5291fcb..fd21e52 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -296,7 +296,7 @@ int menu_show(struct menu *m)
 
 	do {
 		if (m->auto_select >= 0)
-			ch = '\n';
+			ch = KEY_ENTER;
 		else
 			ch = getc();
 
@@ -339,8 +339,8 @@ int menu_show(struct menu *m)
 				m->selected->action(m, m->selected);
 			print_menu_entry(m, m->selected, 1);
 			break;
-		case '\n':
-		case '\r':
+		case KEY_ENTER:
+		case KEY_RETURN:
 			clear();
 			gotoXY(1,1);
 			m->selected->action(m, m->selected);
diff --git a/include/readkey.h b/include/readkey.h
index aabb835..f134846 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -3,6 +3,10 @@
 
 #define CTL_CH(c)		((c) - 'a' + 1)
 
+/* Ascii keys */
+#define KEY_ENTER		'\n'
+#define KEY_RETURN		'\r'
+
 /* Misc. non-Ascii keys */
 #define KEY_UP			CTL_CH('p')	/* cursor key Up	*/
 #define KEY_DOWN		CTL_CH('n')	/* cursor key Down	*/
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
