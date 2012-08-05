Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sxt2P-0001QW-Os
 for barebox@lists.infradead.org; Sun, 05 Aug 2012 05:06:03 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id EEF8CFF9782
 for <barebox@lists.infradead.org>; Sun,  5 Aug 2012 07:12:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  5 Aug 2012 07:06:00 +0200
Message-Id: <1344143160-14103-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] menu: add number key support
To: barebox@lists.infradead.org

Allow to use the number key to jump to entry.
if already on a entry % number_key jump to the next +10 one if exit

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/menu.c |   17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/common/menu.c b/common/menu.c
index 9f536d6..97c6b18 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -314,6 +314,23 @@ int menu_show(struct menu *m)
 		m->auto_select = -1;
 
 		switch (ch) {
+		case '0' ... '9': {
+			struct menu_entry *me;
+			int num = ch - '0';
+			int next_num = m->selected->num + 10;
+			if (!num)
+				num = 10;
+
+			if (ch_previous == ch && next_num <= m->nb_entries)
+				num = next_num;
+
+			me = menu_entry_get_by_num(m, num);
+			if (me) {
+				m->selected = me;
+				repaint = 1;
+			}
+			break;
+		}
 		case KEY_UP:
 			m->selected = list_entry(m->selected->list.prev, struct menu_entry,
 						 list);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
