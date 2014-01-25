Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W790M-0006z9-IU
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 19:35:00 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 25 Jan 2014 23:34:25 +0400
Message-Id: <1390678468-28378-9-git-send-email-shc_work@mail.ru>
In-Reply-To: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
References: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 09/12] ARM: at91: irq_fixup: Use __iomem specifier for memory
 pointer
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-at91/irq_fixup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/irq_fixup.c b/arch/arm/mach-at91/irq_fixup.c
index a9eebd7..9815ac2 100644
--- a/arch/arm/mach-at91/irq_fixup.c
+++ b/arch/arm/mach-at91/irq_fixup.c
@@ -15,7 +15,7 @@
  */
 void at91_rtt_irq_fixup(void *base)
 {
-	void *reg = base + AT91_RTT_MR;
+	void __iomem *reg = base + AT91_RTT_MR;
 	u32 mr = readl(reg);
 
 	writel(mr & ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN), reg);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
