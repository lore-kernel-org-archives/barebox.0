Delivery-date: Tue, 11 Nov 2025 18:18:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIs0T-000DtG-2s
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 18:18:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIs0T-0005cv-A0
	for lore@pengutronix.de; Tue, 11 Nov 2025 18:18:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iYAeXY95cbIcBlfh7vCV+MHTjTdgzvjLZ13pL0BMIV8=; b=a8e3EE66e2B1aoLwZYv5Q7dHUZ
	wJzwYIhYKC+iHQO7ya+9VAEWhgP7am5iUtbZEKYdL7Q3g5iaa4EDCsFtSf7pZLPmZhFjCPSf6a4wd
	0P/oukA8aZ9iv1W/D3zCqQCti0lBPWhFK1cf8H8t+ZbLeEUpObet975ANPJprU3Lpzbz8IKm4Ck5/
	tVrDbRlXWA/5j/NpVjdmyyAb7v7HXPp5tThkDex8sFxyoUffgO5tE8jHGaCwNdz4QlyvRKlGYpGvL
	pTzsXWunKOfY60Z9SafT+B5HRfG6flZiBOWJMdBU4o3FXApWMlTiChr1I2pQI9tATxhb1d2/kthOn
	lbhNhYmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIrzo-00000007WQx-1Z98;
	Tue, 11 Nov 2025 17:17:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIrzk-00000007WQX-3vZK
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 17:17:31 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1vIrzi-0005S4-Vi; Tue, 11 Nov 2025 18:17:26 +0100
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Tue, 11 Nov 2025 18:16:23 +0100
Message-ID: <20251111171622.3528732-2-f.pfitzner@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_091728_980296_C472DB8E 
X-CRM114-Status: GOOD (  14.62  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: karo-tx6: enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have two baseboards using this SoM mainline sharing the same board
code that is not yet deep probe compatible, because they expect i2c0 to
be available at device_initcall level.

Make the board code deep probe compatible and enable deep probe for all
boards using this SoM. Out-of-tree board code will need to adapt
accordingly, so note that in the migration guide.

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 Documentation/migration-guides/migration-master.rst | 12 ++++++++++++
 arch/arm/boards/karo-tx6x/board.c                   |  2 ++
 arch/arm/dts/imx6dl-tx6u.dts                        |  2 +-
 arch/arm/dts/imx6q-tx6q.dts                         |  2 +-
 4 files changed, 16 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master.rst

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
new file mode 100644
index 0000000000..41b055d7fe
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.rst
@@ -0,0 +1,12 @@
+Release Unknown
+===============
+
+Board support
+-------------
+
+Karo TX6X
+^^^^^^^^^
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



