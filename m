Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNXlg-000873-UU
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 08:47:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlg-0003Vd-3X
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:20 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-00017B-Fq
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Sep 2020 10:47:14 +0200
Message-Id: <20200930084716.4200-7-m.felsch@pengutronix.de>
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
Subject: [PATCH v2 6/8] ARM: i.MX: esdctl: add deep-probe support
To: barebox@lists.infradead.org

In case of deep-probe we have to ensure that the memory device is
available after the mem_initcall().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- convert to of_devices_ensure_probed_by_dev_id()
- drop use-less deep-probe include

 arch/arm/mach-imx/esdctl.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 426a96a3c4..1a3af9718b 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -703,7 +703,18 @@ static struct driver_d imx_esdctl_driver = {
 	.of_compatible = DRV_OF_COMPAT(imx_esdctl_dt_ids),
 };
 
-mem_platform_driver(imx_esdctl_driver);
+static int imx_esdctl_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&imx_esdctl_driver);
+	if (ret)
+		return ret;
+
+	return of_devices_ensure_probed_by_dev_id(of_get_root_node(),
+						  imx_esdctl_dt_ids);
+}
+mem_initcall(imx_esdctl_init);
 
 /*
  * The i.MX SoCs usually have two SDRAM chipselects. The following
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
