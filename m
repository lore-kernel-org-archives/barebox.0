Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMDKj-0000OF-R9
 for barebox@lists.infradead.org; Thu, 21 Jan 2016 11:23:22 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 21 Jan 2016 12:22:39 +0100
Message-Id: <1453375359-22142-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH] ARM: cm-fx6: set proper hostname
To: barebox@lists.infradead.org

Set the hostname to "utilite" or "cm-fx6".

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/cm-fx6/board.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boards/cm-fx6/board.c b/arch/arm/boards/cm-fx6/board.c
index edef18f..f438062 100644
--- a/arch/arm/boards/cm-fx6/board.c
+++ b/arch/arm/boards/cm-fx6/board.c
@@ -84,9 +84,17 @@ late_initcall(cm_fx6_eeprom_init);
 
 static int cm_fx6_devices_init(void)
 {
+	const char *hostname;
+
 	if (!of_machine_is_compatible("compulab,cm-fx6"))
 		return 0;
 
+	if (of_machine_is_compatible("compulab,utilite"))
+		hostname = "utilite";
+	else
+		hostname = "cm-fx6";
+	barebox_set_hostname(hostname);
+
 	if (IS_ENABLED(CONFIG_PHYLIB))
 		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff, phy_fixup);
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
