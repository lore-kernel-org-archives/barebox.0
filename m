Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNcaW-0008Ns-8D
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 13:56:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 15:56:03 +0200
Message-Id: <20200930135603.8250-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master] ARM: psci: fix NULL pointer dereference on CPU idle
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>, jbe@pengutronix.de

We guard against cpu_off being NULL, but dereference cpu_suspend
instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: lst@pengutronix.de
Cc: jbe@pengutronix.de
Cc: jlu@pengutronix.de
---
 arch/arm/cpu/psci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 436561f8649f..d1056e0659da 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -89,7 +89,7 @@ static unsigned long psci_cpu_suspend(u32 power_state, unsigned long entry,
 {
 	psci_printf("%s\n", __func__);
 
-	if (psci_ops->cpu_off)
+	if (psci_ops->cpu_suspend)
 		return psci_ops->cpu_suspend(power_state, entry, context_id);
 
 	return ARM_PSCI_RET_NOT_SUPPORTED;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
