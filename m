Delivery-date: Wed, 09 Aug 2023 10:23:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTeTB-00DXGz-GZ
	for lore@lore.pengutronix.de; Wed, 09 Aug 2023 10:23:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTeT9-0004Tr-KW
	for lore@pengutronix.de; Wed, 09 Aug 2023 10:23:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8kpzYYgDR8ri3uKHJTTaUp7k6dwsP2rNkizp2NgLJ6s=; b=M9UotZ5Z7tF0MxlnYg4N8SRmlZ
	Quf/wMxOA6UNZSbhnySzFikzJVBOfD6X8Oo5CEVdad/nPU1W/9C9/3amK2RWfdhZW6DN3fRtK8EZn
	bQUHbtoPjOgudEXf4IK5IpjzSe0P3KZWYlg6BPD98hrUmSRqhLV4hrMrfTPG76UUtc3bxa0HWwhwy
	FrEWxP04K0qEeAyzSqxETFC28sjNzrPNK5pF6P7IQL0cRs11vqz3g4Rd2810vFlhWdT2GgcvGcwNf
	Z07brbRq8sZTpFtW7dSkxfjce1wjg4OYCn1T585r/WUV4xGEkht2n+JbL182Nxp6yzWcWwOIHu8ob
	//fyF/pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTeRq-004LkS-33;
	Wed, 09 Aug 2023 08:21:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTeRn-004Lk5-2z
	for barebox@lists.infradead.org;
	Wed, 09 Aug 2023 08:21:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qTeRl-0004MQ-CG; Wed, 09 Aug 2023 10:21:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qTeRk-002Acq-Ov; Wed, 09 Aug 2023 10:21:36 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qTeRj-00FMVt-Et; Wed, 09 Aug 2023 10:21:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  9 Aug 2023 10:21:34 +0200
Message-Id: <20230809082134.3661453-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_012139_967294_BAB23647 
X-CRM114-Status: GOOD (  10.02  )
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
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip_v8_defconfig: Enable PCI and RTL8169 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Needed for network on the Radxa Rock5.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rockchip_v8_defconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 7d1d41965e..ee81b759ba 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -6,7 +6,6 @@ CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
 CONFIG_BOARD_ARM_GENERIC_DT=y
-CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MMU=y
@@ -93,7 +92,7 @@ CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
-CONFIG_REALTEK_PHY=y
+CONFIG_DRIVER_NET_RTL8169=y
 CONFIG_SMSC_PHY=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
@@ -132,6 +131,7 @@ CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
 CONFIG_REGULATOR_ARM_SCMI=y
 CONFIG_REGULATOR_RK808=y
+CONFIG_PCI_ROCKCHIP=y
 CONFIG_ARM_SCMI_PROTOCOL=y
 CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
-- 
2.39.2



