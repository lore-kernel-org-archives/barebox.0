Delivery-date: Tue, 28 May 2024 10:58:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsfY-000sk5-0U
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 10:58:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsfW-0001HL-OK
	for lore@pengutronix.de; Tue, 28 May 2024 10:58:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKSR+q+tmBe624+fduofTCuqXbgKirTb7Y1sI087Q7w=; b=iWmNS3dI2GGoS4
	7qA+jTkMadftNIc6m9gccpcbeFnVhojTQsQC/o+9NS8iDw8LoctfHsP4LfDD/rpRRsqiiI4NG7kL+
	++YNj/ayI2HhvEnhrY71QJJCXgXLu05DNuyYGMPMZUEKfHQkWhYBJxeBrrTdH/IuJrKtio1Cbo0z7
	77X8vfOTrHBTtr9x/jn4SUXh2w5tDY+vAMSaoO5r6yH7X/K54bUmDWyw5UCpQzbKWcHWBvTwVFWts
	VhsIvRNmV4Vus3wgbGzvgYOnAr4bWNNGWi08Tsd1AWTU7utYKHKG+2xgQKcbF98BmcyS8OsOyGCjW
	i0zZJEfvjxKYLi0UKFug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsey-0000000HYlH-0ULO;
	Tue, 28 May 2024 08:58:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsep-0000000HYgy-3jUz
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 08:58:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-0000qP-Vk; Tue, 28 May 2024 10:58:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-003IsX-HC; Tue, 28 May 2024 10:58:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-004v4p-1N;
	Tue, 28 May 2024 10:58:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 May 2024 10:58:05 +0200
Message-Id: <20240528085806.1172689-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528085806.1172689-1-s.hauer@pengutronix.de>
References: <20240528085806.1172689-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_015812_062419_EC29D40B 
X-CRM114-Status: GOOD (  12.29  )
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
Cc: jianqiang wang <wjq.sec@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 8/9] net: ks8851_mll: drop return value from ks8851_rx_frame()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The return value of ks8851_rx_frame() is unused, so let it return void.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/ks8851_mll.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 936191597a..4e2a05158e 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -672,7 +672,7 @@ static void ks_setup(struct ks_net *ks)
 	ks_wrreg16(ks, KS_RXCR1, w);
 }  /*ks_setup */
 
-static int ks8851_rx_frame(struct ks_net *ks)
+static void ks8851_rx_frame(struct ks_net *ks)
 {
 	struct device *dev = &ks->edev.dev;
 	u16 RxStatus, RxLen = 0;
@@ -726,9 +726,9 @@ static int ks8851_rx_frame(struct ks_net *ks)
 			dev_dbg(dev, "frame too long\n");
 		if (RxStatus & RXFSHR_RXMR)
 			dev_dbg(dev, "MII symbol error\n");
-	} else
+	} else {
 		dev_err(dev, "other RxStatus error 0x%04x\n", RxStatus);
-	return 0;
+	}
 }
 
 static int ks8851_eth_rx(struct eth_device *edev)
-- 
2.39.2



