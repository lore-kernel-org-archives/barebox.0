Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiVMn-0007YQ-Tf
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 18:15:14 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3D5AD1004EF1
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 19:16:20 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Jan 2012 19:08:59 +0100
Message-Id: <1325700539-4068-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325700449-3778-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325700449-3778-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2 v2] at91rm9200: fix lowlovel init PIOC base
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c |    6 +-
 2 files changed, 44 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index 8d9ae08..dc54bcf 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -101,11 +101,11 @@ void __naked __bare_init board_init_lowlevel(void)
 	 */
 
 	/* PIOC_ASR: Configure PIOC as peripheral (D16/D31) */
-	at91_sys_write(AT91_PIOC + PIO_ASR, CONFIG_SYS_PIOC_ASR_VAL);
+	__raw_writel(CONFIG_SYS_PIOC_ASR_VAL, AT91_BASE_PIOC + PIO_ASR);
 	/* PIOC_BSR */
-	at91_sys_write(AT91_PIOC + PIO_BSR, CONFIG_SYS_PIOC_BSR_VAL);
+	__raw_writel(CONFIG_SYS_PIOC_BSR_VAL, AT91_BASE_PIOC + PIO_BSR);
 	/* PIOC_PDR */
-	at91_sys_write(AT91_PIOC + PIO_PDR, CONFIG_SYS_PIOC_PDR_VAL);
+	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL, AT91_BASE_PIOC + PIO_PDR);
 
 	/* EBI_CSA : CS1=SDRAM */
 	at91_sys_write(AT91_EBI_CSA, CONFIG_SYS_EBI_CSA_VAL);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
