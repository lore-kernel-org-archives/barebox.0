Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ5i7-0000qu-7A
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 16:20:28 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B1D0EFF8829
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 18:21:34 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Apr 2012 18:02:18 +0200
Message-Id: <1334419343-1121-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120414155623.GA30672@game.jcrosoft.org>
References: <20120414155623.GA30672@game.jcrosoft.org>
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
Subject: [PATCH 1/6] menu: enable the fancy color support only if HUSH is
 enabled
To: barebox@lists.infradead.org

So we can use the menu for the xloader too.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/menu.c |   21 +++++++++++++++------
 1 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 50af36e..83821ec 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -174,12 +174,17 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
 		puts("   ");
 	}
 
-	process_escape_sequence(me->display, m->display_buffer,
-				m->display_buffer_size);
+	if (IS_ENABLED(CONFIG_SHELL_HUSH))
+		process_escape_sequence(me->display, m->display_buffer,
+					m->display_buffer_size);
+
 	printf(" %d: ", me->num);
 	if (selected)
 		puts("\e[7m");
-	puts(m->display_buffer);
+	if (IS_ENABLED(CONFIG_SHELL_HUSH))
+		puts(m->display_buffer);
+	else
+		puts(me->display);
 
 	if (selected)
 		puts("\e[m");
@@ -236,9 +241,13 @@ static void print_menu(struct menu *m)
 	clear();
 	gotoXY(1, 2);
 	if(m->display) {
-		process_escape_sequence(m->display, m->display_buffer,
-					m->display_buffer_size);
-		puts(m->display_buffer);
+		if (IS_ENABLED(CONFIG_SHELL_HUSH)) {
+			process_escape_sequence(m->display, m->display_buffer,
+						m->display_buffer_size);
+			puts(m->display_buffer);
+		} else {
+			puts(m->display);
+		}
 	} else {
 		puts("Menu : ");
 		puts(m->name);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
