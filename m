Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gz7-0005JC-LB
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:54:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2019 08:54:05 +0200
Message-Id: <20190822065408.29279-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] startup: allow ctrl+c abort during boot sequence
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

At the moment e.g. a wait for an ARP response during net boot can only
aborted if the auto boot countdown was aborted. Otherwise ctrl+c is
without effect. For better user experience allow code querying for ctrl+c
to see it even if barebox had not dropped into a shell.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 92bf94f849f1..d2f1b4846752 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -310,11 +310,11 @@ static int run_init(void)
 
 	autoboot = do_autoboot_countdown();
 
+	console_ctrlc_allow();
+
 	if (autoboot == AUTOBOOT_BOOT)
 		run_command("boot");
 
-	console_ctrlc_allow();
-
 	if (autoboot == AUTOBOOT_MENU)
 		run_command(MENUFILE);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
