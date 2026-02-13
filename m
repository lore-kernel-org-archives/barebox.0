Delivery-date: Fri, 13 Feb 2026 20:13:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqybi-001Lbk-1g
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 20:13:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqybi-0007TR-Jk
	for lore@pengutronix.de; Fri, 13 Feb 2026 20:13:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgtzbnKHFAVmWyiNgOhu7LbFpTYL1NyZaTFwUoS1LVE=; b=4vusp/Y6TW4Bts
	U7Kozn7tqq0DjDKaZlTISJzUX9s2bhjJ9ZXMyBi162LEeVwmXbDrXdp0FSRvQWek8GNTCWLgdnqTf
	7XHgwF2YQT/Lz0CuyYBlX5tbMsODkwRRBhcSgceKUsMeuYxIIOrYWoCBpXsrZ4p4RE6BEYy7qV/RK
	4jnJtnkm5ktLbhhbG/OuIYR/KUxKUrr3rciA9Bx0GuVnh353kyfi/7QpzcmzBvbrWsySvrY4zuDQ8
	VhWLQapw29fUP6GXSmqC3yhcLXLyhD64VzpGXTImPaCF4mkqhUg7Fp1HGiIsNNVkFPS4iMkUbrxcx
	gtF5xGW1LrZ24Z+oxEqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyb9-00000003piJ-2qCI;
	Fri, 13 Feb 2026 19:13:03 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyb6-00000003pgC-3OR0
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 19:13:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=qgtzbnKHFAVmWyiNgOhu7LbFpTYL1NyZaTFwUoS1LVE=; b=Ii2Gt9x3heapA0ndxjHgwX3eee
	lXCOnxB871AOXz61E+/OqBseZmLwKp0mTXDWmyW4vd65Vs35aLeVKa94YHnwqMpQSd4nLBavu9vYN
	iGMjE2LmCywZmzYgrQeM4tH2tr+vF/weJ5C3s3qd6MBZuyEvTk18zPcryPgc8ng7tzz6TDVE2/QaP
	vAv0Cr4ZeYnGT3TGzFSkh9n671YWMpurzNvgg9qDx5cPnHanI8ZCR06Lr4cIKBtrXvXRJ7uYmrWqK
	dgLHv3ffpAX7pqlIwDFK+w5lDifQ6aDBXSR1Zgtfa7YS3fQRacUMV3yst/QA4XRKgPcD3uml2qgHc
	2l3kgMag==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1vqyax-000HNg-1y;
	Fri, 13 Feb 2026 20:12:51 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1vqyax-000J4V-0W;
	Fri, 13 Feb 2026 20:12:51 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Date: Fri, 13 Feb 2026 20:12:46 +0100
Message-Id: <20260213191247.1671231-4-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260213191247.1671231-1-rossi@amelchem.com>
References: <20260213191247.1671231-1-rossi@amelchem.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27911/Fri Feb 13 08:25:28 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_111301_078299_9550AF3F 
X-CRM114-Status: GOOD (  12.55  )
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
Cc: Giandomenico Rossi <rossi@amelchem.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/4] dt-bindings: display: panel: add Ilitek ILI9488 panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add device tree binding documentation for TFT LCD panels based on
the Ilitek ILI9488 controller connected via MIPI DBI Type-C Option 1
over SPI.

The binding documents panels such as the WF35-320480UD operating in
RGB666 (18-bit) pixel format and describes required GPIOs, power
supply, optional backlight and panel timing.

A 'rotation' property is provided to configure the display
orientation.

Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>
---
 .../display/panel/panel-ilitek-ili9488.yaml   | 120 ++++++++++++++++++
 1 file changed, 120 insertions(+)
 create mode 100644 dts/Bindings/display/panel/panel-ilitek-ili9488.yaml

diff --git a/dts/Bindings/display/panel/panel-ilitek-ili9488.yaml b/dts/Bindings/display/panel/panel-ilitek-ili9488.yaml
new file mode 100644
index 0000000000..ceb14a5c25
--- /dev/null
+++ b/dts/Bindings/display/panel/panel-ilitek-ili9488.yaml
@@ -0,0 +1,120 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/video/panel-ilitek-ili9488.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Ilitek ILI9488 TFT LCD Panel (MIPI DBI SPI)
+
+maintainers:
+  - Giandomenico Rossi <rossi@amelchem.com>
+
+description: |
+  Ilitek ILI9488 TFT LCD controller connected over MIPI DBI Type C
+  Option 1 using an SPI bus.
+
+  Specific panels such as the Winstar WF35-320480UD may provide a
+  vendor-specific compatible string followed by "ilitek,ili9488"
+  as fallback.
+
+  The controller supports RGB666 (18-bit) pixel format over SPI.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: winstar,wf35-320480ud
+          - const: ilitek,ili9488
+      - const: ilitek,ili9488
+
+  reg:
+    description: SPI chip select number
+    maxItems: 1
+
+  spi-max-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    maximum: 48000000
+    description: Maximum SPI clock frequency in Hz
+
+  reset-gpios:
+    description: Optional hardware reset GPIO
+    maxItems: 1
+
+  power-supply:
+    description: Regulator supplying panel power
+
+  backlight:
+    description: Phandle to a backlight device
+
+  rotation:
+    description: |
+      Display rotation in degrees clockwise.
+
+      The driver uses this value to configure the ILI9488
+      Memory Access Control (MADCTL) register.
+    enum: [0, 90, 180, 270]
+    default: 0
+
+  panel-timing:
+    description: |
+      Panel timing description.
+
+      For MIPI DBI panels the pixel clock and porch values are ignored,
+      but xactive/yactive must be provided.
+    type: object
+    properties:
+      clock-frequency:
+        description: Dummy pixel clock (may be 0)
+      hactive:
+        description: Horizontal resolution in pixels
+      vactive:
+        description: Vertical resolution in pixels
+      hfront-porch:
+        default: 0
+      hback-porch:
+        default: 0
+      hsync-len:
+        default: 0
+      vfront-porch:
+        default: 0
+      vback-porch:
+        default: 0
+      vsync-len:
+        default: 0
+
+    required:
+      - hactive
+      - vactive
+
+required:
+  - compatible
+  - reg
+  - panel-timing
+
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        display@0 {
+            compatible = "winstar,wf35-320480ud", "ilitek,ili9488";
+            reg = <0>;
+            spi-max-frequency = <40000000>;
+
+            reset-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+
+            power-supply = <&vcc_3v3>;
+            backlight = <&backlight>;
+
+            rotation = <90>;
+
+            panel-timing {
+                hactive = <480>;
+                vactive = <320>;
+                clock-frequency = <0>;
+            };
+        };
+    };
-- 
2.34.1



