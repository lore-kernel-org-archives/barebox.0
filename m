Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m50-134.163.com ([123.125.50.134])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aquwr-0004gN-8U
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 04:01:41 +0000
From: DU HUANPENG <do_not_rep1y@163.com>
Date: Fri, 15 Apr 2016 12:01:09 +0800
Message-Id: <1460692869-18871-1-git-send-email-do_not_rep1y@163.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] menu: add vi like key support
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

add vi like key support:
        j: down
        k: up
  <Space>: select

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 common/menu.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 54f2c71..51b4cfc 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -327,6 +327,7 @@ int menu_show(struct menu *m)
 			}
 			break;
 		}
+		case 'k':
 		case BB_KEY_UP:
 			m->selected = list_entry(m->selected->list.prev, struct menu_entry,
 						 list);
@@ -336,6 +337,7 @@ int menu_show(struct menu *m)
 			}
 			repaint = 1;
 			break;
+		case 'j':
 		case BB_KEY_DOWN:
 			m->selected = list_entry(m->selected->list.next, struct menu_entry,
 						 list);
@@ -346,13 +348,13 @@ int menu_show(struct menu *m)
 			repaint = 1;
 			break;
 		case ' ':
-			if (m->selected->type != MENU_ENTRY_BOX)
-				break;
-			m->selected->box_state = !m->selected->box_state;
-			if (m->selected->action)
-				m->selected->action(m, m->selected);
-			repaint = 1;
-			break;
+			if (m->selected->type == MENU_ENTRY_BOX) {
+				m->selected->box_state = !m->selected->box_state;
+				if (m->selected->action)
+					m->selected->action(m, m->selected);
+				repaint = 1;
+			}
+			/* no break */
 		case BB_KEY_ENTER:
 			if (ch_previous == BB_KEY_RETURN)
 				break;
-- 
1.9.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
