Delivery-date: Sat, 14 Nov 2026 17:21:33 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xSGVR-00Apir-0f
	for lore@lore.pengutronix.de;
	Sat, 14 Nov 2026 17:21:33 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EAAAC202341
	for <lore@pengutronix.de>; Sat, 14 Nov 2026 17:21:32 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kMUUmLIz;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=c434ta7W;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794673293;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=X1VSAcNEyA4Mm/G2zM/TudB5HJ0DEPZK/OlPDvvAT/Q=;
	b=KLrGrY/b8CsP9wKSa+BcHFpmQ1zfquvTtp9ntGKDFL6dlT/HdmaeJsnewVmAqPNtTP1/fN
	jC0BCvjlUhHUj2kwaYFKE/jJRiFAMK3Acquxre5STSrbRktgPE0apT3eZLi7ieuXi/GSSG
	o2wZxdrsUtX/gytfev3Z0OrlaidxJyx2dha/D93+xS1dzKtTIPRRy+GHAMgSyKoBIDJygE
	uGBiO+ibYqGFUlKf5woFWL8KjnDTpU+0SseQbvQZfTvTBHfKtLl1VvXExmvyyk4i3TnJ/W
	R8N4pst9v+SFb9fJX2VfBxE4HkAva2dA9rKUmXcc4KG7Zc7XfCp3cR/Knb7QBg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794673293; a=rsa-sha256;
	cv=none;
	b=MajYv376J2Puscc1zA9DC1UwKDXUQQzX0fFemZotlvdamGSJvBYGKXn1ZosUnnycyc56Bi
	ottRMciXKx+rr979wEBbAGQ7vsYDo5iSlHdxqjrMbi6zb+wmz989G8OOvmpeYAR60PvMEM
	LABUoQEgIvbp3yW4jerE1z5teEFh/BpoED8uYM3imuLsh1B8/XFiJo0Od/hJr7+6JhT/Xl
	F1OIPddpU5qoSmQb5pTBGqvf4cIi69p5M2st69HPQeBrNFZFOCX5uM/fbd203AHmy9LL+Q
	SD7jJ6KF5ONYLlqw9EkVlw/7f2AVaRdlx7O8bbSgHPl0eiE8hXsRNhrCTouucg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kMUUmLIz;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=c434ta7W;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=X1VSAcNEyA4Mm/G2zM/TudB5HJ0DEPZK/OlPDvvAT/Q=; b=kMUUmLIzvuYqHK
	fBdghrrL2Ss3MrsvcRheyl1S4xNoNxzAfvtDPTO77GSq4r6Tn872V87yd1y+nRd/jdQ6/ev9rcaJP
	3TlkJzmDR2/xn5h1J1tYHhklx5XA3YafAOHNSdiCyWnVjvZ0TE/ppjjbv+lIffPIu6TXoE7d5qjvO
	xcy2TWFkWy5ISDltEZjN3R1pPzwW0FqXJPxs4+7GcE3GMtmytMTu8g4WMi6B38t9njQMuvcLCrd6x
	NfyHho3lwphOCyL1N/t7r56ZRsUlkuZfBcHTPazdquYK+6eojw+kPF7UkiFecjSjru89T5mSW36tx
	gUtHkmQKgn5c0FMcTyWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUK-0000000GRrt-2UfB;
	Sat, 14 Nov 2026 16:20:24 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUF-0000000GRox-1ZR2
	for barebox@lists.infradead.org;
	Sat, 14 Nov 2026 16:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=X1VSAcNEyA4Mm/G2zM/TudB5HJ0DEPZK/OlPDvvAT/Q=; b=c434ta7WEG2pTIdcxhLBDc+yNm
	1Ozau46GkcTpdXVyWD/iYWG9TJ3iN842ZbdhJSpSljigGTLj0Fqvj0oO59IjaPI7nrmyQU73fW581
	XsIL2U6Z6A05WSq5Rc7IovTdeXa1uBCulPpNfV+lBfbSDR1kRwoReZ+j+vq4YwYEJUwhKlyZ0DtQN
	jjkI+7mATfdZotmE2auL6Yyhh4zTcp096pne2QeSx66Cd1go6igT3fbRSzjkCbPsI8ni9G1YLgwWe
	DX3vI/W5ItU9k6eCmMC2lt4S5Pl4yNx53XiCFRnSjCb3X6J6Vl5ZYFbwxCtOOv4V2bSQZVXZmRVPa
	1Md3QTOg==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU7-0009mV-1a;
	Sat, 14 Nov 2026 17:20:11 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU7-000MCb-0a;
	Sat, 14 Nov 2026 17:20:11 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Cc: Giandomenico Rossi <rossi@amelchem.com>,
	Nicola Fontana <ntd@entidi.it>
Subject: [PATCH 3/4] dt-bindings: usb: add STUSB4500 USB PD sink controller binding
Date: Sat, 14 Nov 2026 17:19:52 +0100
Message-Id: <20261114161953.1457428-4-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261114161953.1457428-1-rossi@amelchem.com>
References: <20261114161953.1457428-1-rossi@amelchem.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.6/28183/Sat Nov 14 07:24:17 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_082019_436120_CFD038FD 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add the Device Tree binding for the STMicroelectronics STUSB4500
    USB Power Delivery sink controller. The binding allows up to three Fixed
   Supply sink PDOs to be specified using the standard PDO_FIXED() encoding. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: amelchem.com]
                             [URI: aka700.net]
                             [URI: edgekey.net]
                             [URI: akamaiedge.net]
                             [URI: devicetree.org]
                             [URI: st.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-5.81 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[amelchem.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[amelchem.com:s=default2004];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DNSWL_BLOCKED(0.00)[78.47.199.104:received];
	DBL_PROHIBIT(0.00)[0.0.0.28:email];
	FROM_NEQ_ENVFROM(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amelchem.com:-];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: EAAAC202341
X-Rspamd-Server: mx1
X-Stat-Signature: rbzoincja1xwq4rccg9666mez7z8tzty

Add the Device Tree binding for the STMicroelectronics STUSB4500
USB Power Delivery sink controller.

The binding allows up to three Fixed Supply sink PDOs to be
specified using the standard PDO_FIXED() encoding.

Add the STUSB4500 node and its USB-C connector configuration to
the STM32MP151A SIPV2 Device Tree.

Reviewed-by: Nicola Fontana <ntd@entidi.it>
Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>
---
 .../bindings/misc/st,stusb4500.yaml           | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/st,stusb4500.yaml

diff --git a/Documentation/devicetree/bindings/misc/st,stusb4500.yaml b/Documentation/devicetree/bindings/misc/st,stusb4500.yaml
new file mode 100644
index 0000000000..29cb6f3b1f
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/st,stusb4500.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/st,stusb4500.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STUSB4500 USB Power Delivery sink controller
+
+maintainers:
+  - Giandomenico Rossi <rossi@amelchem.com>
+
+description: |
+  The STUSB4500 is an autonomous USB Type-C and Power Delivery sink
+  controller. It negotiates a power contract with the source in hardware,
+  using up to 3 Fixed Supply sink PDOs. This binding describes the sink
+  PDOs to advertise, provided through a child "connector" node using the
+  common USB connector binding.
+
+  https://www.st.com/resource/en/datasheet/stusb4500.pdf
+
+properties:
+  compatible:
+    const: st,stusb4500
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description:
+      ALERT# pin, active low, open-drain.
+
+  st,renegotiate-on-probe:
+    type: boolean
+    description:
+      Trigger a USB PD renegotiation when the driver probes, so the sink
+      PDOs described here take effect immediately instead of only after
+      the next attach. The renegotiation is done with a PD Soft Reset
+      message, which preserves VBUS (the source briefly returns to vSafe5V
+      during the transition). Omit this property to leave renegotiation to
+      board code or later software.
+
+  connector:
+    type: object
+    $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+    description:
+      The Type-C connector attached to this controller.
+    properties:
+      compatible:
+        const: usb-c-connector
+
+      power-role:
+        const: sink
+
+      sink-pdos:
+        minItems: 1
+        maxItems: 3
+        description:
+          One to three Fixed Supply sink PDOs, encoded with PDO_FIXED()
+          from dt-bindings/usb/pd.h, written into the STUSB4500
+          DPM_SNK_PDOx registers.
+
+          Per the datasheet, the first PDO's voltage is fixed to 5 V
+          (vSafe5V) in hardware; only the second and third PDOs have a
+          programmable voltage (5 V to 20 V, in 50 mV steps). The first
+          PDO must therefore be encoded as 5 V.
+
+    required:
+      - compatible
+      - power-role
+      - sink-pdos
+
+required:
+  - compatible
+  - reg
+  - connector
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/usb/pd.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        typec@28 {
+            compatible = "st,stusb4500";
+            reg = <0x28>;
+            st,renegotiate-on-probe;
+
+            connector {
+                compatible = "usb-c-connector";
+                label = "USB-C";
+                power-role = "sink";
+                sink-pdos = <PDO_FIXED(5000, 1500, 0)
+                             PDO_FIXED(20000, 2500, 0)>;
+            };
+        };
+    };
-- 
2.34.1



