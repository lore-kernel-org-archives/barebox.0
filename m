Delivery-date: Mon, 11 Oct 2021 10:05:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJH-0007Oe-Ov
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 10:05:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJF-0006jx-CU
	for lore@pengutronix.de; Mon, 11 Oct 2021 10:05:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Cz28DCCaHCf/Qk3tkxXMN1ITWqpyNjh0h4qGg5d9LE=; b=NWWIYGA5nwsMHN
	2ZJdtSTqC4Enzmkxpm9lpzBPoKw8nKnCPNQlk/Qz9IgE2VbyQEzae0lq5jIMIhRAL6J9ltmqXg03X
	i9D1Dfi58VqBA6ytFEeiJg9qH0CVm1TiTDvN3Subi2NnlB9k57qv47nRiYxlWWYkOqRxqhglkssQQ
	jeWS28nV6bq5pPWqyCCuiAMQscZKQjWi00bcePM8iWSAqo4pM7rRj7v+ubb0Nq31PJswn6IcnWJJd
	9ZedN7l37cvXWi2BehRD/J8vgV2y1g2Be31tMxhH4cx2w6b6vSz715b1QgdDbpoLASsP1TJSTQd2z
	8AZ05P8HxEcg2Mh+puUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZqHs-008DMO-7I; Mon, 11 Oct 2021 08:03:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZqHl-008DJm-8W
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 08:03:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0006Dm-VX; Mon, 11 Oct 2021 10:03:47 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0009ht-7U; Mon, 11 Oct 2021 10:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Oct 2021 10:03:39 +0200
Message-Id: <20211011080346.37197-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011080346.37197-1-s.hauer@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_010349_330851_606FAC9D 
X-CRM114-Status: GOOD (  10.33  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] ARM: Rockchip rk3568 EVB: Enable deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The rk3568 EVB board is successfully tested with deep probe support,
enable it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/rockchip-rk3568-evb/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index 9cd84d7fb9..2d472d1331 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -10,6 +10,7 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <magicvar.h>
+#include <deep-probe.h>
 
 static bool machine_is_rk3568_evb = false;
 
@@ -45,6 +46,8 @@ static struct driver_d rk3568_evb_board_driver = {
 };
 coredevice_platform_driver(rk3568_evb_board_driver);
 
+BAREBOX_DEEP_PROBE_ENABLE(rk3568_evb_of_match);
+
 static int rk3568_evb_detect_hwid(void)
 {
 	int ret;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

