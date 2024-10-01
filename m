Delivery-date: Tue, 01 Oct 2024 10:53:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svYdU-004tyo-2I
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 10:53:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svYdV-0005IR-4m
	for lore@pengutronix.de; Tue, 01 Oct 2024 10:53:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cmVadchjiyyJvsxpvAoXyaUrH8Y1984qtAtXg3qQKBY=; b=wPre9TQFZQRZWHLY0dp2L9tSZ2
	HM6DX6pEPBoFL3ira77mf2yC1A494HfmMEHMzuLfIFDM5H5pGJWuImtyJmyOCvKWlRZxyikhAknzN
	WowqS2/dA54CpY6YDclce+eOTuHyYFZ9hfmiUTghnhBO6kjYSNPWjKsqKksnF1AwXfkWsSCvMforj
	16mlM3eaqAjBP6Vp/IQSzAKza/R5m+cb+/j+x78cCserE1a3MNuqQEWQRixVG6mQydXdpWeyYHvEQ
	EFWkKvC39KCEq2i+pV264kuaancvRV9PdcYLgLIipqgn2bP0ZRzMK4NFfRfNGPdNYUWZmH9p6nrLv
	H4oEmKvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svYd4-000000028WV-3P9r;
	Tue, 01 Oct 2024 08:53:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svYc9-000000028PA-0zPf
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 08:53:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svYc6-0004by-GF; Tue, 01 Oct 2024 10:52:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svYc6-002pqy-3l; Tue, 01 Oct 2024 10:52:10 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svYc6-002Bp4-00;
	Tue, 01 Oct 2024 10:52:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Oct 2024 10:52:08 +0200
Message-Id: <20241001085208.522095-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_015213_295619_4630F278 
X-CRM114-Status: GOOD (  14.99  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] test: arm: qemu-sabrelite: Use qemu specific device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The sabrelite board has some GPIOs registered as buttons. These GPIOs
are not properly emulated in QEMU and read as low. The buttons are
active low as well, so in barebox we detect all buttons as pressed. One
of these buttons is registered as KEY_POWER. Depending on the
initialization order it can happen that barebox tries to power down the
board during startup. Avoid this pitfall by passing a device tree to
QEMU which has the gpio-keys driver disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile                           | 2 +-
 arch/arm/dts/imx6q-sabrelite-qemu.dts           | 5 +++++
 test/arm/qemu-sabrelite@multi_v7_defconfig.yaml | 2 +-
 3 files changed, 7 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-sabrelite-qemu.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 68585e1e4b..3b3236b416 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -127,7 +127,7 @@ lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
 lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4.dtb.o bcm2711-rpi-400.dtb.o bcm2711-rpi-cm4-io.dtb.o bcm2711-rpi-cm4s-io.dtb.o
-lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
+lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o imx6q-sabrelite-qemu.dtb.o
 lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o imx6dl-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
diff --git a/arch/arm/dts/imx6q-sabrelite-qemu.dts b/arch/arm/dts/imx6q-sabrelite-qemu.dts
new file mode 100644
index 0000000000..a16a882543
--- /dev/null
+++ b/arch/arm/dts/imx6q-sabrelite-qemu.dts
@@ -0,0 +1,5 @@
+#include "imx6q-sabrelite.dts"
+
+&{/gpio-keys} {
+	status = "disabled";
+};
diff --git a/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml b/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
index 77b7f9e589..8dc137ee44 100644
--- a/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
@@ -15,6 +15,6 @@ targets:
       BareboxTestStrategy: {}
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-  imx6q-sabreliste.dtb: !template "$LG_BUILDDIR/arch/arm/dts/imx6q-sabrelite.dtb"
+  imx6q-sabreliste.dtb: !template "$LG_BUILDDIR/arch/arm/dts/imx6q-sabrelite-qemu.dtb"
 imports:
   -  ../strategy.py
-- 
2.39.5



