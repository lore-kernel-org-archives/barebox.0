Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18lI-0005Zy-0T
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 13:06:05 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 52507FF80C
 for <barebox@lists.infradead.org>; Mon, 10 Feb 2020 13:05:50 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 10 Feb 2020 14:05:45 +0100
Message-Id: <20200210130545.6161-1-ahmad@a3f.at>
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
Subject: [PATCH] ARM: stm32mp: dk2: barebox_set_model to shorter name
To: barebox@lists.infradead.org

The full "STMicroelectronics STM32MP157C-DK2 Discovery Board" is a tad
too long. Abbreviate it to STM32MP157C-DK2 instead.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/stm32mp157c-dk2/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index 9cd5b4ee1ff4..6da99d9353ac 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -14,6 +14,8 @@ static int dk2_postcore_init(void)
 	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
 					 BBU_HANDLER_FLAG_DEFAULT);
 
+	barebox_set_model("STM32MP157C-DK2");
+
 	return 0;
 }
 postcore_initcall(dk2_postcore_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
