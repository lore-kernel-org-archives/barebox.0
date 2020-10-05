Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPMxX-0003PK-Ot
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 09:39:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Oct 2020 11:39:02 +0200
Message-Id: <20201005093901.5983-1-a.fatoum@pengutronix.de>
In-Reply-To: <20201005081058.2572-1-a.fatoum@pengutronix.de>
References: <20201005081058.2572-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: stm32mp: migrate board initcalls to board drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Driver code know does the compatible check for us, so drop the
no longer needed explicit check.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/seeed-odyssey/board.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boards/seeed-odyssey/board.c b/arch/arm/boards/seeed-odyssey/board.c
index fd077c02b273..8c011898a33e 100644
--- a/arch/arm/boards/seeed-odyssey/board.c
+++ b/arch/arm/boards/seeed-odyssey/board.c
@@ -12,9 +12,6 @@ static int odyssey_som_probe(struct device_d *dev)
 	int flags;
 	int instance = bootsource_get_instance();
 
-	if (!of_machine_is_compatible("seeed,stm32mp157c-odyssey-som"))
-		return 0;
-
 	flags = instance == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
 	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
