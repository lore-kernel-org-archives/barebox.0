Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OsaV3-00047I-Gi
	for barebox@lists.infradead.org; Mon, 06 Sep 2010 12:08:41 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  6 Sep 2010 14:07:48 +0200
Message-Id: <1283774869-6086-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] menu: shell fix do_menu_select
To: barebox@lists.infradead.org

invert the error report

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/menu.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index ab35cf9..2c9ddc3 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -203,7 +203,7 @@ static int do_menu_select(struct cmd_menu *cm)
 		return -EINVAL;
 	}
 
-	if (!menu_set_selected(m, cm->num)) {
+	if (menu_set_selected(m, cm->num) < 0) {
 		eprintf("Entry '%d' not found\n", cm->num);
 		return -EINVAL;
 	}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
