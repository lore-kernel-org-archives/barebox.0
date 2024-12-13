Delivery-date: Fri, 13 Dec 2024 22:01:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCmp-007jLT-1J
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 22:01:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCmp-0000tJ-CM
	for lore@pengutronix.de; Fri, 13 Dec 2024 22:01:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zyGYO+Z0asbdjDBi3AqHOpTxGAKzu7G72woVF4hcdro=; b=jmyGvZWQiFnnQUcMWWKXeXUywM
	QUDNAQkGGmIMVB/Q3iYYImagZukYZCV7ct8Ztx7RmIMYtfNqahZLbufCKh4X6ReIDkBqxOEnvqwgz
	ml29sx6+SShzLoBDSn3kXwTAbhs4CFE5Q24/27G9unE3anVOkq+d7CopqNgr7qagQhC3y6YcjUIM2
	Z5bvjOoDjzwgqzB/VN1SVXw8FM4UTxh983GKjmgNDvfHELe4DN+nDL4imXjf8j4/NPHAeGF5Gnk2z
	0ZU0EMArXKJyySmSvjc38lIzMoQ6kh6andJJ3NaUCBmvjgpz0S81VSF2jK5eY9tvejE4590Ri0hWi
	3HsH4MoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmQ-000000051cI-2Pcs;
	Fri, 13 Dec 2024 21:00:58 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmN-000000051ZM-0tHe
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 21:00:56 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 6F478E7407E; Fri, 13 Dec 2024 22:00:24 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id 5E172E74081
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 22:00:20 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 22:00:12 +0100
Message-ID: <20241213210015.357249-6-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241213210015.357249-1-dev@lynxeye.de>
References: <20241213210015.357249-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_130055_395016_FB9EA9A9 
X-CRM114-Status: GOOD (  10.06  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] ARM: zynq: enable some useful things in defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default bootsource for the Zedboard is the SD card.
Enable Arasan SDHCI, FAT support, Barebox update and
environment in FS support to be able to update the
Barebox image and store the environment on the card.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/zynq_defconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index 226942e6b40b..1a1378d3e079 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -37,13 +37,20 @@ CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_ARASAN=y
 CONFIG_GPIO_ZYNQ=y
 # CONFIG_PINCTRL is not set
 CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
 CONFIG_DIGEST=y
-- 
2.47.1



