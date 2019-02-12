Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtZPP-0007XV-Bb
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 14:51:42 +0000
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Tue, 12 Feb 2019 15:51:10 +0100
Message-Id: <20190212145110.13119-1-tomaz.solc@tablix.org>
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
Subject: [PATCH] ARM: rpi: avoid NULL dereference on unknown rev.
To: barebox@lists.infradead.org
Cc: Tomaz Solc <tomaz.solc@tablix.org>

"model" pointer is NULL if current board revision isn't in the list of known
boards.
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 650b26ce7..b2febec99 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -180,7 +180,7 @@ const struct rpi_model rpi_models_new_scheme[] = {
 };
 
 static int rpi_board_rev = 0;
-const struct rpi_model *model;
+const struct rpi_model *model = NULL;
 
 static void rpi_get_board_rev(void)
 {
@@ -251,6 +251,9 @@ unknown_rev:
 
 static void rpi_model_init(void)
 {
+	if (!model)
+		return;
+
 	if (!model->init)
 		return;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
