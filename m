Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SYapo-0004A7-QU
 for barebox@lists.infradead.org; Sun, 27 May 2012 10:36:30 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 66BF0FF8598
 for <barebox@lists.infradead.org>; Sun, 27 May 2012 12:39:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 May 2012 12:36:32 +0200
Message-Id: <1338114992-13130-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] menu: export box state to menu_box_state when using a
 command
To: barebox@lists.infradead.org

this will allow to have different action based on the box state in shell

as example
menu -e -a -m boot -c 'export test=${menu_box_state}' -R -b 1 -d "yes/no"

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/menu.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 6c530b6..070170e 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -483,6 +483,11 @@ static void menu_action_command(struct menu *m, struct menu_entry *me)
 	int ret;
 	const char *s = getenv(e->command);
 
+	if (me->type == MENU_ENTRY_BOX)
+		export_env_ull("menu_box_state", me->box_state);
+	else
+		setenv("menu_box_state", "");
+
 	/* can be a command as boot */
 	if (!s)
 		s = e->command;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
