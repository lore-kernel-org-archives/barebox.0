Delivery-date: Tue, 12 Jul 2022 07:06:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oB86t-003zNq-W9
	for lore@lore.pengutronix.de; Tue, 12 Jul 2022 07:06:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oB86s-0001Id-09
	for lore@pengutronix.de; Tue, 12 Jul 2022 07:06:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yypxNufew0rd5iV39uuMW6dlmd7Bc8Rsz8jAfJoGn3o=; b=OmoYBE0/7NE1MNkm1W139iVx3c
	VD2oYGPGxvh1FxrL9f4jZvSvWKw0jNyl1/iqycUqWFKkCnrh7i5ULuQfj5JQuY3ZKk2FFId56DmT1
	LX2JdNxF8VB8YU6Hmz4/HVqs+w3FDcAtYk74Ukwwf1NQ7edDHfaemLjGOLqzsPRlqLQYx2ffTHWBL
	qOSMM87pdMV0TNvOfluouILFGaS4cXEXpeUMn4Q81sgng3fd4t25UuWNdSz8llbwkoYHYtL9JT7vO
	t74ZK00VLeENhdCNVjwu9LYanu449oivfX6kKBjoih1UHy7o3ukkLqqOXUsS71bSdGrpkqcNs28GG
	jC6xpYZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB859-007epS-Ux; Tue, 12 Jul 2022 05:05:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB854-007ely-Qu
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 05:05:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1oB84y-000105-Vo; Tue, 12 Jul 2022 07:05:01 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oB84y-000RT0-9b; Tue, 12 Jul 2022 07:05:00 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oB84x-00F4o5-IO; Tue, 12 Jul 2022 07:04:59 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Tue, 12 Jul 2022 07:04:49 +0200
Message-Id: <20220712050449.3593253-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220711141246.3331160-2-j.zink@pengutronix.de>
References: <20220711141246.3331160-2-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_220506_913906_A8E3D13A 
X-CRM114-Status: GOOD (  12.42  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX7: add 96Boards Meerkat96 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a fixup for the documentation: fixed line breaks, whitespace changes 
and typos as requested.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 Documentation/boards/imx/meerkat96.rst | 28 ++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/Documentation/boards/imx/meerkat96.rst b/Documentation/boards/imx/meerkat96.rst
index 3cdb1beaf..3a51b9144 100644
--- a/Documentation/boards/imx/meerkat96.rst
+++ b/Documentation/boards/imx/meerkat96.rst
@@ -1,28 +1,40 @@
 Meerkat 96
 ==========
 
-The Meerkat96 is a single board computer based on an i.MX7D SoC by NXP, featuring a dual core ARM Cortex-A7 at 1 GHz and a Cortex-M4 at 266MHz and 512 MB DRAM. For further details on the board's features check the manufacturers page at https://www.96boards.org/product/imx7-96
+The Meerkat96 is a single board computer based on an i.MX7D SoC by NXP, 
+featuring a dual core ARM Cortex-A7 at 1 GHz and a Cortex-M4 at 266MHz 
+and 512 MB DRAM. For further details on the board's features check the 
+manufacturers page at https://www.96boards.org/product/imx7-96
 
 Serial console
 --------------
 
-UART6 of the i.MX7D is broken out to Pinheader J3, on the Silkscreen the Pins are labeled with B (Ground), W (UART 6 TX) and G (UART 6 RX). If you use the UART-To-Serial-Converter provided with the board, you can just connect the Black jumper to B, the White to W and the Green to G. The UART uses 3.3V levels. 
+UART6 of the i.MX7D is broken out to Pinheader J3, on the Silkscreen 
+the Pins are labeled with B (Ground), W (UART 6 TX) and G (UART 6 RX). 
+If you use the UART-To-USB-Converter provided with the board, you can 
+just connect the Black jumper to B, the White to W and the Green to G. 
+
+The UART uses 3.3V levels. 
 
 Building Barebox                                                        
 ----------------                                                        
                                                                         
-To build Barebox for ZII i.MX7 based boards do the following:           
-                                                                        
-.. code-block:: sh                                                      
-           
-  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> mrproper   
+To build Barebox for the meerkat96 board do the following:
+
+.. code-block:: sh
+
+  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> mrproper
   make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> imx_v7_defconfig
   make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix>
 
 Bringup
 -------
 
-flash the resulting barebox-meerkat96.img to an sdcard at address 0. Make sure the pmic is set to power-on state by setting the dipswitch SW3 on the boards bottom side to 1-1 (i.e. all switches on, which is the factory default).
+flash the resulting barebox-meerkat96.img to an sdcard at address 0. 
+
+Make sure the pmic is set to power-on state by setting the dipswitch 
+SW3 on the boards bottom side to 1-1 (i.e. all switches on, which is 
+the factory default).
 
 Schematics
 ----------
-- 
2.30.2



