Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Os-29
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:54 +0100
Message-Id: <20181105155113.3434-4-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/22] ARM: at91rm9200ek: Use SoC specific defines
To: Barebox List <barebox@lists.infradead.org>

Use AT91RM9200_BASE_PIOC rather than AT91_BASE_PIOC so we can get rid of
the latter later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/lowlevel.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index a85a22e797..905f5999d6 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -86,11 +86,11 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 	 */
 
 	/* PIOC_ASR: Configure PIOC as peripheral (D16/D31) */
-	__raw_writel(CONFIG_SYS_PIOC_ASR_VAL, AT91_BASE_PIOC + PIO_ASR);
+	__raw_writel(CONFIG_SYS_PIOC_ASR_VAL, AT91RM9200_BASE_PIOC + PIO_ASR);
 	/* PIOC_BSR */
-	__raw_writel(CONFIG_SYS_PIOC_BSR_VAL, AT91_BASE_PIOC + PIO_BSR);
+	__raw_writel(CONFIG_SYS_PIOC_BSR_VAL, AT91RM9200_BASE_PIOC + PIO_BSR);
 	/* PIOC_PDR */
-	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL, AT91_BASE_PIOC + PIO_PDR);
+	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL, AT91RM9200_BASE_PIOC + PIO_PDR);
 
 	/* EBI_CSA : CS1=SDRAM */
 	at91_sys_write(AT91_EBI_CSA, CONFIG_SYS_EBI_CSA_VAL);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
