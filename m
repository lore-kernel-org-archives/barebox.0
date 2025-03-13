Delivery-date: Thu, 13 Mar 2025 10:22:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tselP-00DVda-2m
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 10:22:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tselO-0007Br-L2
	for lore@pengutronix.de; Thu, 13 Mar 2025 10:22:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mTIAATftNF7+MioTXBhCZGLAX93NRdIqi0tXs+hvHm8=; b=eDpa4DKb3wv424j/ww8ZWTzptf
	EiMEmnkKn3GbyIRYr1hgHC5pS339rBbZopgrAqLs5AlPdPqho23f5gNBoUkTMmB4Uc2tiN0yanrZD
	ngW7WvCQw2kqqMYn/x/to5gYFengfQZDpZX76HMeRX0ZkxJCvTddESrvpeuxXdaKAf+2rbez8Q13G
	B9mbHAAiDuSurXjGafMG1sVeZEjzcEnwh3S4BCiVdZd5Gsj3eqVse8P6CUu1Ey3E+u8NYLV5a3Muk
	fiVAYvqDPsWUqmZO3Ay8OrTmorCWoQajrOrD8f9R/CwbT2NXAHc82VQhCozMjp3Xl7Ve9vvKU0ewp
	VUt4lQ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tseku-0000000AiQ6-3qdp;
	Thu, 13 Mar 2025 09:21:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tseks-0000000AiOn-0kg2
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 09:21:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tsekp-00070K-Kh; Thu, 13 Mar 2025 10:21:27 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 13 Mar 2025 10:21:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250313-pca9450-wdog-v2-2-28e97e7da480@pengutronix.de>
References: <20250313-pca9450-wdog-v2-0-28e97e7da480@pengutronix.de>
In-Reply-To: <20250313-pca9450-wdog-v2-0-28e97e7da480@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2372; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=mv4oxdceHn2YXp/pcLZOndhoZu8KKkHS0aIOBHb1/JE=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYki/tHg66zFrf4fQxOtBVZue/ennfvDrV1y2c+IbxyJ/0
 259240rO0pZGMQ4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABPZk8XIsDnhmcXto8fZt+dd
 Y43jlz90b/G8uJTUMHvlYz0cLA92CzP8FVaZ114W03lP6Pk0+7sbd9lumO2nvnfznNobNbMeWT5
 ZywYA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_022130_219284_A6960706 
X-CRM114-Status: GOOD (  10.42  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] ARM: boards: remove obsolete PCA9450_RESET_CTRL
 setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since a previous commit, PCA9450_RESET_CTRL is initialized to 0xA1 in
pca9450_probe; explicitly setting this in board.c has no effect anymore.

Remove the setup of this register from the
pca9450_register_init_callback of the two imx93 boards we currently
have.

Configuration of this register in power_init_board() in lowlevel.c of
the imx8 boards remains untouched for now. This is because there, the
register is configured even if the pca9450 driver is not enabled.
Furthermore, the power_init_board() functions initialize a larger array
of pmic registers which I haven't compared against other pmic and
-driver defaults.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-imx93/board.c | 9 ---------
 arch/arm/boards/tqma93xx/board.c             | 3 ---
 2 files changed, 12 deletions(-)

diff --git a/arch/arm/boards/phytec-phycore-imx93/board.c b/arch/arm/boards/phytec-phycore-imx93/board.c
index 149248ca654624826d0e8f6fe0f1f42c2747e248..03ba8cb5026d2a9eaa054fcfc69e18872fcd658e 100644
--- a/arch/arm/boards/phytec-phycore-imx93/board.c
+++ b/arch/arm/boards/phytec-phycore-imx93/board.c
@@ -6,23 +6,14 @@
 #include <init.h>
 #include <linux/kernel.h>
 #include <environment.h>
-#include <mfd/pca9450.h>
 #include <deep-probe.h>
 #include <mach/imx/bbu.h>
 #include <linux/pinctrl/consumer.h>
 
-static void phycore_imx93_init_pmic(struct regmap *map)
-{
-	/* set WDOG_B_CFG to cold reset */
-	regmap_write(map, PCA9450_RESET_CTRL, 0xA1);
-}
-
 static int phycore_imx93_probe(struct device *dev)
 {
 	struct device_node *np;
 
-	pca9450_register_init_callback(phycore_imx93_init_pmic);
-
 	/*
 	 * The phy on the EQOS has its MDIO lines connected to the FEC. The phy
 	 * registers can only be successfully read when the EQOS pinctrl setup
diff --git a/arch/arm/boards/tqma93xx/board.c b/arch/arm/boards/tqma93xx/board.c
index b181784079cf12e5a112d13f95c87c2cf5ebeba6..b4de6c2f6c347cb255537a3784a667a9c2607de3 100644
--- a/arch/arm/boards/tqma93xx/board.c
+++ b/arch/arm/boards/tqma93xx/board.c
@@ -27,9 +27,6 @@ static void tqma93xx_init_pmic(struct regmap *map)
 
 	/* I2C_LT_EN*/
 	regmap_write(map, 0xa, 0x3);
-
-	/* set WDOG_B_CFG to cold reset */
-	regmap_write(map, PCA9450_RESET_CTRL, 0xA1);
 }
 
 static int tqma93xx_probe(struct device *dev)

-- 
2.39.5



