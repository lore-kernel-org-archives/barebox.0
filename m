Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf9xt-0001sm-Cz
 for barebox@lists.infradead.org; Wed, 22 May 2013 14:24:30 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 22 May 2013 16:24:02 +0200
Message-Id: <1369232642-16009-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] defaultenv-2: Fix settings entry
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

There is no "settings-entries-edit" command. This results in a recursive call
to the settings menu. Use the missing "boot-entries-edit" command instead.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 defaultenv-2/menu/menu/settings | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv-2/menu/menu/settings b/defaultenv-2/menu/menu/settings
index 3b95d4c..db619af 100644
--- a/defaultenv-2/menu/menu/settings
+++ b/defaultenv-2/menu/menu/settings
@@ -7,7 +7,7 @@ while true; do
 
 	menu -e -a -R -m settings -c "$global.editcmd /env/network/eth0" -d "Network settings"
 	menu -e -a -R -m settings -c "$global.editcmd /env/config" -d "Config settings"
-	menu -e -a -m settings -c "settings-entries-edit" -d "Edit settings entries"
+	menu -e -a -m settings -c "boot-entries-edit" -d "Edit boot entries"
 	menu -e -a -m settings -c "init-entries-edit" -d "Edit init entries"
 	menu -e -a -R -m settings -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
 	menu -e -a -m settings -c "menu_exit=true" -d "back"
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
