Delivery-date: Wed, 07 Dec 2022 23:11:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p32dl-00E4xx-NI
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 23:11:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p32dk-0006cZ-QO
	for lore@pengutronix.de; Wed, 07 Dec 2022 23:11:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ICQQFhT2ofVekGqKv6GUy81kR6DG34mBNvEpx+/lDK8=; b=SA0zT7UP1UUxwUd1ng9aJvsXO6
	7ysISajbMk0+HW4q8W2dO5POVsBJAPQkpiEWNy7a54KEPfYldv9BFtnkrMHQseruSi4M+MI5rhqFw
	qQpF0GKQL5G8xevraoJwGHHBWTpG40Hjw1kAS8ZjdTHf92PqcyzHhKNX0bcjzePAK7RLbEA0Ew3XX
	wekDo3MYcY84j0iSaTTRBQ96WJ0JY62VPBV/XFjHD3bQuC/3UmT1dJwnv0OU4aiyeq+UIiFksybay
	e+fajQJ1I0yfIQMupXZcLKrOdiCXRoTGF14YRAikGHIzH+CtvQjVsB7E0bG9x53z1GqXhoCOflsuE
	omX21zQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p32cR-00DnEn-7O; Wed, 07 Dec 2022 22:10:23 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p32cA-00Dmky-Fg
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 22:10:10 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 8E550E74013; Wed,  7 Dec 2022 23:09:31 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-163.net-htp.de [89.183.231.163])
	by lynxeye.de (Postfix) with ESMTPA id 78D16E74016
	for <barebox@lists.infradead.org>; Wed,  7 Dec 2022 23:09:28 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  7 Dec 2022 23:09:24 +0100
Message-Id: <20221207220924.148327-4-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221207220924.148327-1-l.stach@pengutronix.de>
References: <20221207220924.148327-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221207_141006_764113_C467C7F0 
X-CRM114-Status: GOOD (  10.78  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: phytec-som-imx8mq: include DDR firmware in image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This board uses the legacy DRAM initialization and doesn't call
imx8mq_ddr_init(), so there is no point where the DRAM firmware is
referenced from the image. Fix this by calling ddr_get_firmware()
from the legacy DRAM init.

Fixes: e770d18108de ("ARM: i.MX8M: include only necessary ddrphy firmwares in image")
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c b/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
index 2c84a0f5fd5a..2ed6578093af 100644
--- a/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
+++ b/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
@@ -12,6 +12,8 @@
 void ddr_cfg_phy(void) {
 	unsigned int tmp, tmp_t;
 
+	ddr_get_firmware(DRAM_TYPE_LPDDR4);
+
 	//Init DDRPHY register...
 	reg32_write(0x3c080440,0x2);
 	reg32_write(0x3c080444,0x3);
-- 
2.38.1



