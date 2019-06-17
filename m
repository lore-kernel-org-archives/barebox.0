Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000SA-MM
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j7-6p
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002GR-Hj
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:48 +0200
Message-Id: <20190617150751.3421-10-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 09/12] ARM: psci: fix erroneous call of ->system_reset on
 system_off
To: barebox@lists.infradead.org

Both psci_system_reset and psci_system_off call psci_ops->system_reset,
which seems like a copy-paste error as there is an unused ->system_off
as well.

Adjust psci_system_off to use ->system_off instead. This won't matter
for the existing i.MX7 PSCI implementation because it defines neither
callback, but it will for the upcoming STM32MP PSCI support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 5c662cd0b992..a976ddbb5c65 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -138,8 +138,8 @@ static unsigned long psci_system_off(void)
 {
 	psci_printf("%s\n", __func__);
 
-	if (psci_ops->system_reset)
-		psci_ops->system_reset();
+	if (psci_ops->system_off)
+		psci_ops->system_off();
 
 	while(1);
 
@@ -293,4 +293,4 @@ BAREBOX_CMD_START(smc)
 	BAREBOX_CMD_DESC("secure monitor test command")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 BAREBOX_CMD_END
-#endif
\ No newline at end of file
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
