Delivery-date: Fri, 17 Mar 2023 13:21:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd95C-003toO-A2
	for lore@lore.pengutronix.de; Fri, 17 Mar 2023 13:21:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd95B-0003z3-S7
	for lore@pengutronix.de; Fri, 17 Mar 2023 13:21:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ItuBXZqVW00TbVQajqRBWeB4RLKAOxvAil8Sg+1fGNQ=; b=qq23D6BdxoOh1Y
	yRLohcvLD7H8Vi/crB7QZAL6oqeeISTI7B8MKXfuEbqMfgbaaBOOjOv541DNxq2NQqVt0KB179nQN
	ERvhOO1JpY1wlzlpO1YTOKDAtlN/Nv+vWqNUhvn2h/D12qfRc+hrAkZJGTF3u8bqFbM31SYPfMVpg
	NIu9pov9DEscyIWQs5nv1b51yu+E7PRPTmSKQaS5vTUovoVCiDgMrKAZwVxb4B0V0hsWeVTpUHqAx
	UGDwkpcPTMubs7AxZsSrChhUZGafgzUmkJvClRy0rD2swTYhJ7l22NdSOzcXUwomS9yrXdC350Xmy
	3C4w72pi/lOAU9AkquIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd93q-002BQO-31;
	Fri, 17 Mar 2023 12:19:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd93o-002BPu-0k
	for barebox@lists.infradead.org;
	Fri, 17 Mar 2023 12:19:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1pd93k-0003de-0M; Fri, 17 Mar 2023 13:19:48 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1pd93j-004lmC-Cc; Fri, 17 Mar 2023 13:19:47 +0100
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1pd93i-0042Zg-LW; Fri, 17 Mar 2023 13:19:46 +0100
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Mar 2023 13:19:37 +0100
Message-Id: <20230317121937.958131-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_051952_269710_81789C67 
X-CRM114-Status: GOOD (  10.34  )
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
Cc: Johannes Zink <j.zink@pengutronix.de>, afa@pengutronix.de, jzi@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] Documentation: devicetree: list automatic boot argument fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Barebox automatically fixes up several properties to the root and
chosen node of the device tree passed to the booted system.

These entries contain information about the hardware, reset source
and the barebox version string.

Add documentation on how to query these information from the booted
linux system.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 Changelog:

 v1 -> v2: Correct errors in content spotted by Ahmad. While at it, fix some typos.

 Documentation/devicetree/index.rst | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index 36fa69058d1d..f85ce6608d14 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -151,3 +151,25 @@ Contents:
    bindings/regulator/*
    bindings/rtc/*
    bindings/watchdog/*
+
+Automatic Boot Argument Fixups to the Devicetree
+------------------------------------------------
+
+barebox automatically fixes up some boot and system information in the device tree.
+
+In the device tree root, barebox fixes up
+
+ * serial-number (if available)
+ * machine compatible (if overridden)
+
+In the ``chosen``-node, barebox fixes up
+
+ * barebox-version
+ * reset-source
+ * reset-source-instance (if available)
+ * reset-source-device (node-path, only if available)
+ * bootsource
+ * boot-hartid (only on RISC-V)
+
+These values can be read from the booted linux system in ``/proc/device-tree/``
+or ``/sys/firmware/devicetree/base``.
-- 
2.30.2



