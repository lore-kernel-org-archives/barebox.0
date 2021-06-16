Delivery-date: Wed, 16 Jun 2021 09:41:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB4-00010m-Np
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 09:41:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB3-00008t-TG
	for lore@pengutronix.de; Wed, 16 Jun 2021 09:41:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGe8FGc8LQWwbK3C3p4+aFNW/9QYDbirMmMSKi4570Q=; b=jJPfBULYCNkrXo
	6Rytxkzqkt6NQ14Gaew9+zCr/fm+BqhTO1jVN5kGk/08VEoCF5N7Euac8pi6nwUMkWYpnVrbj3TEE
	131GDO3ucZKGEyLNuBp457sqHA2z+xc7Iqv84ehxJG7FIIc4wxjVF8mDYrVhmqlKw+jeuwIDByiU4
	VIj1gi8DD42TbR2pLY54IblsZH8nwajznWL2I19xLrbG0ctlg7v8SpBmnnKhxXBIfmD94mSaT//Kn
	qyCb443BN+7hzsUXwMR9aJEJorz1Zl01z8xB9qEoj23MdxXYx1IF96l03gc7fQF9G/OHtw9Qknkvv
	oDwiFRtXDLufcDyNkNOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQ9n-005ERQ-IP; Wed, 16 Jun 2021 07:40:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQ9a-005EMr-D8
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:40:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9X-0007zd-FZ; Wed, 16 Jun 2021 09:39:59 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9W-0001qW-Ta; Wed, 16 Jun 2021 09:39:58 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-007rG8-Sf; Wed, 16 Jun 2021 09:39:57 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Graichen <michael.graichen@hotmail.com>
Date: Wed, 16 Jun 2021 09:39:57 +0200
Message-Id: <20210616073957.1872965-6-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616073957.1872965-1-m.tretter@pengutronix.de>
References: <20210616073957.1872965-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_004002_491940_F72E6C99 
X-CRM114-Status: UNSURE (   8.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] ARM: zynqmp: defconfig: enable MCI_ARASAN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ZynqMP has an arasan SD controller. Enable it in the respective
defconfig.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/configs/zynqmp_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 762103c54105..6f5612fa92a0 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -37,5 +37,7 @@ CONFIG_NET=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_ARASAN=y
 CONFIG_FIRMWARE_ZYNQMP_FPGA=y
 CONFIG_DIGEST=y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

