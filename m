Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKsZy-00044h-IO
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 19:33:51 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id 277D026C2001
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 21:32:57 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 21:32:48 +0200
Message-Id: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/5] commands: menu: check return pointer properly
To: barebox@lists.infradead.org

The called functions return error codes encoded in the pointer,
so the NULL check will never be true.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 commands/menu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/menu.c b/commands/menu.c
index 9ec2d57..e1079fd 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -83,7 +83,7 @@ static int do_menu_entry_add(struct cmd_menu *cm)
 	else
 		me = menu_add_command_entry(m, cm->description, cm->command,
 					    cm->type);
-	if (!me)
+	if (IS_ERR(me))
 		return PTR_ERR(me);
 
 	me->box_state = cm->box_state > 0 ? 1 : 0;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
