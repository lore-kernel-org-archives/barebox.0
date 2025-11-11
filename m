Delivery-date: Tue, 11 Nov 2025 12:50:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vImtd-0008hU-2l
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 12:50:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vImtd-0004ga-9n
	for lore@pengutronix.de; Tue, 11 Nov 2025 12:50:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Um2O18GX/XBn9JP5CRPAOrEMLGZ73W9H0ljChb2KreE=; b=RBeamhN7OwiZBvf1Z1s96BjUBh
	02HHgApwTyasZU+djf8qrvQHt51/BzFNIs85co8Kg/TC3PBCPugMmJYwctWUTVrbVhK81MWJsME/E
	tWzYsCkbXcgj+aIFEnbmH+5SXxWGP66rNFrsFDlmNxOh2QlXPiVul3e4qNVVnR3QOEwCGKsDloM7d
	LiVTQjg8qTzvUNyOJIkA0TcgfXtkN+v3K3NhJVTm98T5zDsb6RPbaCiPK2XuoTYzez/q3xMkcj3wK
	siZZJo6nIwLyd7mqSt9fjf9fsloKvSaPe3JVBg6t0oVjgv1DnKZPNZEm4rZsR2ObkpuMsg0MmEl7e
	GM+RZlqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vImt8-0000000776X-3ajv;
	Tue, 11 Nov 2025 11:50:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vImt6-0000000775k-0bTk
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 11:50:17 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1vImt3-0004ZK-4w; Tue, 11 Nov 2025 12:50:13 +0100
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Tue, 11 Nov 2025 12:49:16 +0100
Message-ID: <20251111114915.1289377-2-f.pfitzner@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_035016_182486_2BEA35C8 
X-CRM114-Status: GOOD (  11.60  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: karo-tx6: enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 Documentation/migration-guides/migration-2025.11.0.rst | 4 ++++
 arch/arm/boards/karo-tx6x/board.c                      | 2 ++
 arch/arm/dts/imx6dl-tx6u.dts                           | 2 +-
 arch/arm/dts/imx6q-tx6q.dts                            | 2 +-
 4 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
index a9c7abb66e..fa8140f615 100644
--- a/Documentation/migration-guides/migration-2025.11.0.rst
+++ b/Documentation/migration-guides/migration-2025.11.0.rst
@@ -18,3 +18,7 @@ Karo TX6X
 The barebox update handler for this SoM no longer unconditionally updates
 /dev/mmc3.boot0, but instead it now updates the inactive boot partition
 on /dev/mmc3 and then sets it as active allowing for power-fail safety.
+
+Deep probe has been enabled for this board. Out-of-tree board code for these
+SoMs must either ensure devices are available as the in-tree code does or they
+should add ``barebox,disable-deep-probe`` to their top level device tree node.
diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index 43e23f00cd..1924660c11 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -54,6 +54,8 @@ static int setup_pmic_voltages(void)
 	int bus = 0;
 	uint8_t reg;
 
+	of_device_ensure_probed_by_alias("i2c0");
+
 	adapter = i2c_get_adapter(bus);
 	if (!adapter) {
 		pr_err("i2c bus %d not found\n", bus);
diff --git a/arch/arm/dts/imx6dl-tx6u.dts b/arch/arm/dts/imx6dl-tx6u.dts
index 1055de9d80..c23673d729 100644
--- a/arch/arm/dts/imx6dl-tx6u.dts
+++ b/arch/arm/dts/imx6dl-tx6u.dts
@@ -8,6 +8,6 @@
 / {
 	model = "Ka-Ro electronics TX6U-801x Module";
 	compatible = "karo,imx6dl-tx6dl", "fsl,imx6dl";
-	barebox,disable-deep-probe;
+	barebox,deep-probe;
 };
 
diff --git a/arch/arm/dts/imx6q-tx6q.dts b/arch/arm/dts/imx6q-tx6q.dts
index c2aacfc415..daf9549ea5 100644
--- a/arch/arm/dts/imx6q-tx6q.dts
+++ b/arch/arm/dts/imx6q-tx6q.dts
@@ -8,6 +8,6 @@
 / {
 	model = "Ka-Ro electronics TX6Q Module";
 	compatible = "karo,imx6q-tx6q", "fsl,imx6q";
-	barebox,disable-deep-probe;
+	barebox,deep-probe;
 };
 
-- 
2.47.3



