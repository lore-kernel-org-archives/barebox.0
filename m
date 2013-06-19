Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpPOY-0005an-1Z
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 20:54:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Jun 2013 22:53:42 +0200
Message-Id: <1371675222-25433-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371675222-25433-1-git-send-email-s.hauer@pengutronix.de>
References: <1371675222-25433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] menu: Make action callback optional
To: barebox@lists.infradead.org

Someone calling menu_show might only be interested in the entry the user
selected without having something in the action callback. Make it optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/menu.c b/common/menu.c
index d516db4..ef56190 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -361,7 +361,8 @@ int menu_show(struct menu *m)
 				break;
 			clear();
 			gotoXY(1,1);
-			m->selected->action(m, m->selected);
+			if (m->selected->action)
+				m->selected->action(m, m->selected);
 			if (m->selected->non_re_ent)
 				return m->selected->num;
 			else
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
