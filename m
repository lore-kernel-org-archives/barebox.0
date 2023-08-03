Delivery-date: Thu, 03 Aug 2023 12:51:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvs-004wRm-CX
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvq-00023A-IS
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fxCTd+WNyO3oc46YyJYbBLDNQINaM0faLgOs9BeOTLo=; b=gDCtZt9yC3LiQuNAe4Jxw/E0//
	Ai3tv58tEaGcdmB4JrxRO0cjRErpUZqz/rGjSe4ZO699RYpMqe8Z3TSYt3H+r3YXrnuhGUl3niZWW
	bPVtZpsKLr6U1FY4MXx5fgxnP4iLGXjp58r/395N1uARjzFUpssCKW2WXAhU7WhpO0cs/z0FHB6cv
	d5Im29AJLJe6/4gTShYUvWUF6+PscWFawyWgg/7YaCPpkmjPlZ0LoLwRA8EguvaX475N0fWdSZVDm
	I+QpbBN5MMu3CfX9/dJu/KHRhzwl9q7zEQHcI5LiBc9+aY1nd5ND3bKrtquX5zoPBXEi48BtI3Td4
	4TMFmXMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuh-007UzU-35;
	Thu, 03 Aug 2023 10:50:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UYM-1M
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000vr-8P; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovb-IT; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HB07-Tl; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:50:02 +0200
Message-Id: <20230803105003.4088205-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035009_485610_F944B539 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 21/22] doc: K3: Add documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add some documentation for bringing up K3 SoCs, basically the BeaglePlay
for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/k3.rst | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/boards/k3.rst

diff --git a/Documentation/boards/k3.rst b/Documentation/boards/k3.rst
new file mode 100644
index 0000000000..f675c4510c
--- /dev/null
+++ b/Documentation/boards/k3.rst
@@ -0,0 +1,29 @@
+Texas Instruments K3
+====================
+
+K3 is for Keystone 3 and denotes a family of SoCs from Texas Instruments. From these
+SoCs the AM62x is currently supported under barebox. The boot flow needs several images,
+only the last stage is supported by barebox. To start up the help of U-Boot is still
+needed.
+
+The board currently supported by barebox is the BeaglePlay board, see
+https://www.beagleboard.org/boards/beagleplay. The following examples assume
+this board is used.
+
+Building barebox
+----------------
+.. code-block:: sh
+
+  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> multi_v8_defconfig
+
+Running barebox
+---------------
+
+barebox can be started from running U-Boot with:
+
+.. code-block:: sh
+
+  dhcp 0x82000000 <serverip>:barebox-beagleplay.img; bootm 0x82000000
+
+To start barebox from SD/eMMC replace the ``u-boot.img`` on a bootable SD/eMMC card
+with the content of ``images/barebox-beagleplay-fit.img``
-- 
2.39.2



