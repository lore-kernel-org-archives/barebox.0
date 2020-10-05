Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPLXK-0003oH-6y
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 08:07:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Oct 2020 10:07:55 +0200
Message-Id: <20201005080755.25618-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! magicvar: Replace BAREBOX_MAGICVAR_NAMED with
 BAREBOX_MAGICVAR
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

BAREBOX_MAGICVAR_NAMED was renamed, but this last instance remains.
Fix it up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/reboot-mode.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 313ba6dc3af7..df3be03edf33 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -225,9 +225,7 @@ const char *reboot_mode_get(void)
 }
 EXPORT_SYMBOL_GPL(reboot_mode_get);
 
-BAREBOX_MAGICVAR_NAMED(global_system_reboot_mode_prev,
-		       global.system.reboot_mode.prev,
-		       "reboot-mode: Mode set previously, before barebox start");
-BAREBOX_MAGICVAR_NAMED(global_system_reboot_mode_next,
-		       global.system.reboot_mode.next,
-		       "reboot-mode: Mode to set next, to be evaluated after reset");
+BAREBOX_MAGICVAR(global.system.reboot_mode.prev,
+		 "reboot-mode: Mode set previously, before barebox start");
+BAREBOX_MAGICVAR(global.system.reboot_mode.next,
+		 "reboot-mode: Mode to set next, to be evaluated after reset");
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
