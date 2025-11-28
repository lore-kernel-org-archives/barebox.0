Delivery-date: Fri, 28 Nov 2025 19:49:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP3XW-005sU4-2h
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 19:49:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP3XW-0000TS-7T
	for lore@pengutronix.de; Fri, 28 Nov 2025 19:49:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i5vfJwL+rdUx/J4UnegJcELRYePSMvqctp1xQEeAiys=; b=VVuRa7XX6qAfzKTmzaRAe9tH6k
	rQaTVBnIN1AdZ0DTBqp4y9IVL3g0THto9mb1NCbNRedsK/S0QIkjFYB1xBI2v5bNdmVLHYzOxYe3M
	7v5U3k9VqD+MXcioLNyL/JSKSYenttBp8xjocM48BblcbM8T7d8QoGYZlDvB9QdTX4kmOGznOGk45
	zNfY22hEY827bWuD05i/Gm6JSTltweIHDV/wVz8WQ1Mj0VPGQmhrfvGs7rZDvl6UUP7TkDArPdnE+
	pDoRxTWq2dVHF//Xn18h1s/b6GegyVtJHlFsjj6FllraYgCOESGr74iZ9YAv8f/y8jHmEcfX1qhpS
	joOniDgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP3X6-00000000nC2-3xna;
	Fri, 28 Nov 2025 18:49:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP3X1-00000000n8O-03uS
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 18:49:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-0000Fs-Dt; Fri, 28 Nov 2025 19:49:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-003014-0l;
	Fri, 28 Nov 2025 19:49:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-00000000SVQ-0aKz;
	Fri, 28 Nov 2025 19:49:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 19:49:17 +0100
Message-ID: <20251128184920.109552-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128184920.109552-1-a.fatoum@pengutronix.de>
References: <20251128184920.109552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_104923_048539_57A6BFCA 
X-CRM114-Status: GOOD (  12.68  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: Rockchip: document changing console baud rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rkbin-specific parts originate from the U-Boot ts433
documentation[1].

As they are useful to barebox users as well, import them here and add
some more barebox-specific info on baudrate configuration.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/rockchip.rst | 49 +++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index eb1bbe81819a..34b0a0e5aa1a 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -126,3 +126,52 @@ MaskROM mode when no other bootsource contains a valid bootloader. This means to
 you have to make all other bootsources invalid by removing SD cards and shortcircuiting
 eMMCs. The RK3568 EVB has a pushbutton to disable the eMMC.
 On the Quartz64 boards, remove the eMMC module if present.
+
+Console Output
+--------------
+
+The DDR-init in the rkbin repository will set up a serial console
+at 1.5 MBaud, while barebox will set up the console with the baudrate it
+has been configured with in DT and/or Kconfig, which may be different.
+
+It can be useful for debugging to have the same baudrate for all components.
+
+The barebox baudrate is defined by device tree::
+
+  / {
+    chosen {
+      stdout-path = "serial0:1500000n8";
+    };
+  };
+
+and ``CONFIG_BAUDRATE`` controls the default if no baud rate is specified
+or the device tree has not been parsed yet:
+
+.. code-block:: console
+
+  $ scripts/config --file .config --set-str CONFIG_BAUDRATE 1500000
+
+
+The DDR-init baudrate can be modified by setting a ``uart baudrate``
+override in the ``ddrbin_param.txt`` file in the rkbin repository:
+
+.. code-block:: diff
+
+  diff --git a/tools/ddrbin_param.txt b/tools/ddrbin_param.txt
+  index 0d0f53884a72..f71e09aafc4c 100644
+  --- a/tools/ddrbin_param.txt
+  +++ b/tools/ddrbin_param.txt
+  @@ -11,7 +11,7 @@ lp5_freq=
+   
+   uart id=
+   uart iomux=
+  -uart baudrate=
+  +uart baudrate=115200
+   
+   sr_idle=
+   pd_idle=
+
+And after that the ``ddrbin_tool`` binary can be used to apply this
+modification to the relevant ddr init blob::
+
+$ tools/ddrbin_tool rk3568 tools/ddrbin_param.txt bin/rk35/rk3568_ddr_1560MHz_v1.21.bin
-- 
2.47.3



