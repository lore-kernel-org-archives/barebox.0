Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNXlh-000874-1C
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 08:47:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlg-0003Ve-6F
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:20 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-00017E-Gf
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Sep 2020 10:47:15 +0200
Message-Id: <20200930084716.4200-8-m.felsch@pengutronix.de>
In-Reply-To: <20200930084716.4200-1-m.felsch@pengutronix.de>
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v2 7/8] ARM: stm32mp: ddrctrl: add deep-probe support
To: barebox@lists.infradead.org

In case of deep-probe we have to ensure that the memory device is
available after the mem_initcall().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- convert to of_devices_ensure_probed_by_dev_id()
- drop use-less deep-probe include

 arch/arm/mach-stm32mp/ddrctrl.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 646fe4401a..a7a87ef8f8 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -148,4 +148,15 @@ static struct driver_d stm32mp1_ddr_driver = {
 	.of_compatible = DRV_OF_COMPAT(stm32mp1_ddr_dt_ids),
 };
 
-mem_platform_driver(stm32mp1_ddr_driver);
+static int stm32mp1_ddr_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&stm32mp1_ddr_driver);
+	if (ret)
+		return ret;
+
+	return of_devices_ensure_probed_by_dev_id(of_get_root_node(),
+						  stm32mp1_ddr_dt_ids);
+}
+mem_initcall(stm32mp1_ddr_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
