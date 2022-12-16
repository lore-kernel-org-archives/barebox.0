Delivery-date: Fri, 16 Dec 2022 13:12:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p69aF-005ezn-7N
	for lore@lore.pengutronix.de; Fri, 16 Dec 2022 13:12:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p69aE-0004Aj-Fr
	for lore@pengutronix.de; Fri, 16 Dec 2022 13:12:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ibGs1xBBzIaSddZj0HDe0KmWyEE7fQrWFDED/5aWuOM=; b=45Yxblda7WlumRommanfKljxQ9
	pe1mlUelQWEtR/FdBZs+UF1UqMh6VUrO/WUIhW5C/8Aks1AlkIGfoWK06sApMIE4ow6WCLA+vDLuD
	mZ8OqX0Y6AC7UhCuBWFg8oTOZfK1BbSyh8aSkUAvPrPnAPIonfmGKLWlS07ipN3/6NVyTb2msw6UN
	Yzsh6l20+HKRyNavdkYjVtrwZrB1ZItfKkITTZ1E4WMZPTaSBhMuiztpeyUJ2tmF98uQTlppAiLgp
	glfFMf/iUGR7RB/KvfNInlDg8jn7UGcB6oOqUe0s8qoBAEg2syQIFL5XOnXG0xOmfxk2H9amUjeDl
	+B/7c4kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p69Yg-00EpEa-1m; Fri, 16 Dec 2022 12:11:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p69Yb-00EpBm-1m
	for barebox@lists.infradead.org; Fri, 16 Dec 2022 12:11:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p69YY-00043v-CD; Fri, 16 Dec 2022 13:11:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p69YW-004ueA-VA; Fri, 16 Dec 2022 13:11:13 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p69YW-007VXX-TO; Fri, 16 Dec 2022 13:11:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Dec 2022 13:11:11 +0100
Message-Id: <20221216121111.1789446-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221216121111.1789446-1-s.hauer@pengutronix.de>
References: <20221216121111.1789446-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_041117_130958_F7F6A404 
X-CRM114-Status: GOOD (  10.57  )
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
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] arm: zync: Use XZ for image compression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The zync images are currently limited to OCRAM size, so make the images
a bit smaller by using XZ instead of LZO.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/zynq_defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index 38662eeb5d..226942e6b4 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_ZYNQ=y
 CONFIG_MACH_ZEDBOARD=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0xf000
 CONFIG_MALLOC_SIZE=0x8000000
@@ -42,7 +43,7 @@ CONFIG_NET=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
+CONFIG_GPIO_ZYNQ=y
 # CONFIG_PINCTRL is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST=y
-CONFIG_GPIO_ZYNQ=y
-- 
2.30.2



