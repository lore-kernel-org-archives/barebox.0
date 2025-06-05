Delivery-date: Thu, 05 Jun 2025 12:14:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN7cW-003yYP-0L
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 12:14:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN7cV-0008Le-IZ
	for lore@pengutronix.de; Thu, 05 Jun 2025 12:14:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QiK6N2yntx9wJDEulcc+WRxvqMy90PVql9pS6RiIsLQ=; b=Yqawipg2mg9zqYQ7kJze8u2bKB
	zKhdqbuF95ZfPY67VECbWxPO5Qw1tTPy3y7ypibR4vmEcQWM2D8LzW6HVzc0kLfVtvcjU/iFwdQpv
	FVA360X4cBbno/EkQRQ1deYlYnrVeRagJ6bqZrYI3Fsc9RD5jdnIgCDHl3jY4xDiC/WfCYpeYQfsf
	TXT64oYdTndSl2mjyL9hlvanaTGPpUKnPzuNsDY4ZRGGHw+A0mJbJ3tUez90mFmn4FVDYizZkNQtM
	XF3byF6A82QZrP7ILeny0F+RIld3PM1yDFCSA9OGLY63vm/hvNZWNa0TuFsyiohivN+9pQz03rFp9
	j1MTxLrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN7c6-0000000FEKA-0iOh;
	Thu, 05 Jun 2025 10:14:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN7c3-0000000FEJi-0STI
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 10:14:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN7c1-0007uy-VX; Thu, 05 Jun 2025 12:14:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN7c1-001wPn-2X;
	Thu, 05 Jun 2025 12:14:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN7c1-001wZp-2A;
	Thu, 05 Jun 2025 12:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Jun 2025 12:14:16 +0200
Message-Id: <20250605101416.463490-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_031419_149429_E411FAC3 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: boards: k3: remove obsolete k3.rst
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

k3.rst describes the initial k3 documentation when we only had second
stage support after U-Boot. This is now obsolete and the full
documentation is in ti-k3.rst.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/k3.rst | 29 -----------------------------
 1 file changed, 29 deletions(-)
 delete mode 100644 Documentation/boards/k3.rst

diff --git a/Documentation/boards/k3.rst b/Documentation/boards/k3.rst
deleted file mode 100644
index f675c4510c..0000000000
--- a/Documentation/boards/k3.rst
+++ /dev/null
@@ -1,29 +0,0 @@
-Texas Instruments K3
-====================
-
-K3 is for Keystone 3 and denotes a family of SoCs from Texas Instruments. From these
-SoCs the AM62x is currently supported under barebox. The boot flow needs several images,
-only the last stage is supported by barebox. To start up the help of U-Boot is still
-needed.
-
-The board currently supported by barebox is the BeaglePlay board, see
-https://www.beagleboard.org/boards/beagleplay. The following examples assume
-this board is used.
-
-Building barebox
-----------------
-.. code-block:: sh
-
-  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> multi_v8_defconfig
-
-Running barebox
----------------
-
-barebox can be started from running U-Boot with:
-
-.. code-block:: sh
-
-  dhcp 0x82000000 <serverip>:barebox-beagleplay.img; bootm 0x82000000
-
-To start barebox from SD/eMMC replace the ``u-boot.img`` on a bootable SD/eMMC card
-with the content of ``images/barebox-beagleplay-fit.img``
-- 
2.39.5



