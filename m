Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDSZc-0007GV-8v
 for barebox@lists.infradead.org; Wed, 02 Sep 2020 13:13:13 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Sep 2020 15:13:07 +0200
Message-Id: <20200902131307.17613-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200902131307.17613-1-a.fatoum@pengutronix.de>
References: <20200902131307.17613-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 3/3] ARM: at91: sama5d27-giantboard: fix multi-image
 compatibility
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For multi-image compatibility, board code needs to be guarded by a check
against the compatible. Retrofit the check.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-giantboard/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/sama5d27-giantboard/board.c b/arch/arm/boards/sama5d27-giantboard/board.c
index 1d4453ede35b..006c6ffad5cd 100644
--- a/arch/arm/boards/sama5d27-giantboard/board.c
+++ b/arch/arm/boards/sama5d27-giantboard/board.c
@@ -3,9 +3,13 @@
 #include <init.h>
 #include <envfs.h>
 #include <bbu.h>
+#include <of.h>
 
 static int giantboard_device_init(void)
 {
+	if (!of_machine_is_compatible("groboards,sama5d27-giantboard"))
+		return 0;
+
 	bbu_register_std_file_update("microSD", BBU_HANDLER_FLAG_DEFAULT,
 				     "/mnt/mmc1.0/barebox.bin",
 				     filetype_arm_barebox);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
