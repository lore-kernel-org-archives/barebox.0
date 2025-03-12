Delivery-date: Wed, 12 Mar 2025 12:58:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsKjZ-00D6tt-1r
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 12:58:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsKjY-0001xF-AB
	for lore@pengutronix.de; Wed, 12 Mar 2025 12:58:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zxdL2LxmAvixie5tVh/ekMZsD+j81AjcBeD3RDbU/q0=; b=KaMwMPPPU5Gdn2IGlSWLPrUgxh
	QEGapDyJE0bophhfUGD/RLK5oYDSyDmFOGGyCjDnhP7GW01Ys9kd8LZGsINocDI9r6t0mVHhn2jWc
	uhbaw1Eyf/uG6S3a9btjRUniRxdgT4/P5hhWRcZz304+AL8vckAipbuZRcBn3yAdYiMcvVfhD5LwX
	GsfCLBhKDDsDII+X2PodqXzrommnF/F4LqM/LYPojX3+LmGqwxbYYLFVKehXlu5FOgH8m3GamaxDL
	HHg0gtox7383hR8sNRyoPgXsoB3u9Q4tUK2RX8b0RwqhNcl2+JHvNAdiScP8oC2HHAKI/fHn3s83j
	Glk95KpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKiw-00000008Kfh-45lF;
	Wed, 12 Mar 2025 11:58:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsK8z-00000008Er0-0BzP
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 11:21:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-0006Hf-F1; Wed, 12 Mar 2025 12:20:58 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-005Lib-0p;
	Wed, 12 Mar 2025 12:20:58 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-002OHt-0e;
	Wed, 12 Mar 2025 12:20:58 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 12 Mar 2025 12:20:56 +0100
Message-Id: <20250312112057.570001-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250312112057.570001-1-o.rempel@pengutronix.de>
References: <20250312112057.570001-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_042101_086341_515B8959 
X-CRM114-Status: GOOD (  10.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	WEIRD_QUOTING autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/3] Documentation: networking: Add DSA switch support documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add documentation for Distributed Switch Architecture (DSA) support in
Barebox. It introduces the `forwarding` parameter, which allows
configuring a DSA switch to operate in either isolated mode (default) or
forwarding mode.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/user/networking.rst | 74 +++++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 2306cb6a60d1..71703f064bee 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -186,3 +186,77 @@ barebox:
 The netconsole can be used just like any other console. Note, however, that the
 simple console protocol is UDP based, so there is no guarantee about packet
 loss.
+
+DSA (Distributed Switch Architecture) Support in Barebox
+--------------------------------------------------------
+
+Barebox includes support for DSA (Distributed Switch Architecture), allowing
+for basic configuration and management of network switches within the
+bootloader.
+
+DSA enables network devices to use a switch framework where each port of the
+switch is treated as a separate network interface, while still allowing packet
+forwarding between ports when enabled.
+
+DSA Configuration
+^^^^^^^^^^^^^^^^^
+
+DSA switches are managed through device parameters, similar to network
+interfaces. Each switch is identified as a separate device, typically named
+``switch0`` or ``switch@00`` depending on the bus address.
+
+Global Forwarding Control
+"""""""""""""""""""""""""
+
+A parameter, ``forwarding``, allows configuring whether a switch operates
+in **isolated mode** (default) or **forwarding mode**:
+
+- **Isolated Mode** (default): Each port is treated as an independent interface,
+  with no forwarding between ports.
+
+- **Forwarding Mode**: The switch allows forwarding of packets between ports,
+  acting as a traditional non-managed switch.
+
+To check the current DSA switch settings, use:
+
+.. code-block:: sh
+
+  barebox:/ devinfo switch0
+  Parameters:
+    forwarding: 0 (type: bool)
+
+To enable forwarding mode:
+
+.. code-block:: sh
+
+  dev.switch0.forwarding=1
+
+To disable forwarding and revert to isolated mode:
+
+.. code-block:: sh
+
+  dev.switch0.forwarding=0
+
+Persisting Configuration
+""""""""""""""""""""""""
+
+To ensure that the forwarding mode setting persists across reboots,
+it can be stored as a nonvolatile (nv) variable:
+
+.. code-block:: sh
+
+  nv dev.switch0.forwarding=1
+
+This will configure the switch to always boot in forwarding mode.
+
+Integration with Network Interfaces
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Each port of the DSA switch is exposed as an independent network interface in
+Barebox. However, when forwarding is enabled, packets can be forwarded between
+these interfaces without requiring intervention from the CPU.
+
+To configure network settings for individual ports, use standard network
+configuration variables (e.g., ``eth0.ipaddr``, ``eth0.mode``, etc.). These
+settings are applied per port and are independent of the global switch
+forwarding configuration.
-- 
2.39.5



