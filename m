Delivery-date: Tue, 03 Aug 2021 19:01:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAxnD-0008GP-Bu
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 19:01:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAxnC-0002Q9-CO
	for lore@pengutronix.de; Tue, 03 Aug 2021 19:01:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+x5grnKDtE80CYofDQ8cu0KJR4OmmluokxcrxwLJrdQ=; b=wGIpuE8KKdh0Lw
	/4AjObUxQIfon4AV2QovF2GDosDnWoD2UCVG9wJ2A5UGEgKztPPQ2Y9BpBLa3EvoVbtPRwxs4YN6+
	oxhan4khUMEjiMxEddv5Y1ipzLGzl6uIP4cH2US48wRAqGPWkeOEJy7+GVY2CQWQEXkCF/Wo/4Xl5
	D07ZxyBJX6+29DtsiQL1zXD0d3RFj3ggQe7kxRkJgdnC0eVBvDiVBS7MLojfVdVxfHOwTXAOwPD63
	MSrPfZs+DlTnodOXW9Sh6m4EeYwmG/3Nh0fCtrkuWbfkHyfZXqKmzklaLkbUQ8z+TUbzV5byYyNJ6
	BN3rKtYAAxbzdrj6ImHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAxlf-003hxD-Ki; Tue, 03 Aug 2021 16:59:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAxlY-003hv7-NS
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 16:59:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mAxlS-0001zM-Qy; Tue, 03 Aug 2021 18:59:38 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mAxlS-0008FQ-FG; Tue, 03 Aug 2021 18:59:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  3 Aug 2021 18:59:37 +0200
Message-Id: <20210803165937.31608-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210803165937.31608-1-a.fatoum@pengutronix.de>
References: <20210803165937.31608-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_095944_803896_624809F1 
X-CRM114-Status: GOOD (  15.87  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, David Jander <david@protonic.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8MM: add reboot to serial download mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX8MM reference manual follows long established tradition in not
documenting BootROM magic reboot codes. For older i.MX variants, the
values can be seen in the bmode tables of Freescale's U-Boot patches.

There are no such patches for the i.MX8M, but testing shows that

	mw 0x30390094 0x10 ; mw 0x30390098 0x40000000

is one of the configurations that trigger serial download on next warm
reset on an i.MX8MM. Describe this in the device tree, so

	gpr.reboot_mode.next=serial reset -r imxwd-warm

does the right thing for that SoC.

This all might work for other i.MX8M variants as well, but the dtsi
can be genericized later on when tested.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: David Jander <david@protonic.nl>
Cc: Lucas Stach <l.stach@pengutronix.de>
---
 Documentation/boards/imx.rst   | 29 +++++++++++++++++++++++++++++
 arch/arm/dts/imx8mm-evk.dts    |  1 +
 arch/arm/dts/imx8mm-prt8mm.dts |  1 +
 arch/arm/dts/imx8mm.dtsi       | 18 ++++++++++++++++++
 4 files changed, 49 insertions(+)
 create mode 100644 arch/arm/dts/imx8mm.dtsi

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 887b45c70881..4ce9d9808cc1 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -83,6 +83,35 @@ The images can also always be started as second stage on the target:
 
   barebox@Board Name:/ bootm /mnt/tftp/barebox-freescale-imx51-babbage.img
 
+BootROM Reboot mode codes (bmode)
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+For select SoCs, barebox supports communicating an alternative boot medium
+that BootROM should select after a warm reset::
+
+  barebox@FSL i.MX8MM EVK board:/ devinfo gpr.reboot_mode
+  Driver: syscon-reboot-mode
+  Bus: platform
+  Parent: 30390000.reset-controller@30390000.of
+  Parameters:
+    next: normal (type: enum) (values: "normal", "serial")
+    prev: normal (type: enum) (values: "normal", "serial")
+  Device node: /soc@0/bus@30000000/reset-controller@30390000/reboot-mode
+  reboot-mode {
+          compatible = "barebox,syscon-reboot-mode";
+          offset = <0x94 0x98>;
+          mask = <0xffffffff 0x40000000>;
+          mode-normal = <0x0 0x0>;
+          mode-serial = <0x10 0x40000000>;
+  };
+
+  barebox@FSL i.MX8MM EVK board:/ gpr.reboot_mode.next=serial reset -r imxwd-warm
+
+This will cause barebox to fall into serial download mode on an i.MX8MM.
+
+Different SoCs may have more possible reboot modes available.
+See the section on :ref:`Reboot modes<reboot_mode>` for more information.
+
 High Assurance Boot
 ^^^^^^^^^^^^^^^^^^^
 
diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
index 1e8619ccf584..304f150307a3 100644
--- a/arch/arm/dts/imx8mm-evk.dts
+++ b/arch/arm/dts/imx8mm-evk.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <arm64/freescale/imx8mm-evk.dts>
+#include "imx8mm.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm/dts/imx8mm-prt8mm.dts b/arch/arm/dts/imx8mm-prt8mm.dts
index bdcdd0806243..abd758f2856e 100644
--- a/arch/arm/dts/imx8mm-prt8mm.dts
+++ b/arch/arm/dts/imx8mm-prt8mm.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <arm64/freescale/imx8mm.dtsi>
+#include "imx8mm.dtsi"
 
 / {
 	model = "Protonic PRT8MM";
diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
new file mode 100644
index 000000000000..78bbacb2b1b2
--- /dev/null
+++ b/arch/arm/dts/imx8mm.dtsi
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/ {
+	aliases {
+		gpr.reboot_mode = &reboot_mode_gpr;
+	};
+};
+
+&src {
+	compatible = "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon", "simple-mfd";
+
+	reboot_mode_gpr: reboot-mode {
+		compatible = "barebox,syscon-reboot-mode";
+		offset = <0x94>, <0x98>; /* SRC_GPR{9,10} */
+		mask = <0xffffffff>, <0x40000000>;
+		mode-normal = <0>, <0>;
+		mode-serial = <0x00000010>, <0x40000000>;
+	};
+};
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

