Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnivU-0003Zj-1w
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:25:27 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 15:25:21 +0200
Message-Id: <20200623132521.4727-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200623132521.4727-1-a.fatoum@pengutronix.de>
References: <20200623132521.4727-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] clk: at91: remove now-duplicate crutch #defines
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

As the code comment describes, these #defines were only needed
temporarily till dts/ is synced vs Linux v5.8-rc1. This is now the case,
so drop them again.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/pmc.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index 9503202c5d03..4e6ec8231eae 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -219,10 +219,4 @@ static inline void pmc_register_id(u8 id) {}
 static inline void pmc_register_pck(u8 pck) {}
 #endif
 
-/* FIXME: can be dropped after v5.8-rc1 dts/include/dt-bindings sync */
-#define PMC_TYPE_PROGRAMMABLE	4
-#define PMC_PLLACK		7
-#define PMC_PLLBCK		8
-#define PMC_AUDIOPLLCK		9
-
 #endif /* __PMC_H_ */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
