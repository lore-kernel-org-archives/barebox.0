Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSibc-0008Ga-UV
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 13:13:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gSibP-0003ku-Uq
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 14:13:03 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Nov 2018 14:12:59 +0100
Message-Id: <20181130131303.2934-2-l.stach@pengutronix.de>
In-Reply-To: <20181130131303.2934-1-l.stach@pengutronix.de>
References: <20181130131303.2934-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: nxp-imx8mq-evk: add missing prototype for
 nxp_imx8mq_evk_ddr_cfg_phy
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/ddr.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddr.h b/arch/arm/boards/nxp-imx8mq-evk/ddr.h
index 2c25e3f98cd4..8f494ae7a223 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/ddr.h
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddr.h
@@ -19,6 +19,7 @@
 #define ddr_cfg_phy	nxp_imx8mq_evk_ddr_cfg_phy
 
 void nxp_imx8mq_evk_ddr_init(void);
+void nxp_imx8mq_evk_ddr_cfg_phy(void);
 
 #define FW_1D_IMAGE	imx_lpddr4_pmu_train_1d_imem_bin, \
 			imx_lpddr4_pmu_train_1d_dmem_bin
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
