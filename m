Delivery-date: Tue, 12 Apr 2022 21:55:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neMbU-00HSq1-I7
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 21:55:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neMbS-0007bD-56
	for lore@pengutronix.de; Tue, 12 Apr 2022 21:55:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCDNcjhuSOkmJ6yCr7U40uWsnlasCwJLnrjWz71hHLQ=; b=LQ41xN0pABmAKa
	YrxtJ5YFG7WbQVcKdV8Q6rWd/ilrYeKosAnpOnM0g6pKSx5j6P4GTly46Wt3dwkNCq0xlk+ji/Gzd
	Yo4bGCqq/0qmeSqz55GJcRpn4qkUDUldYoilfqWiYi6NKzzv5VHHDlFzJQHhYLHeryxW/+KOPbtU8
	JlCfR+p3LhtBGL78sckV9FR4LPmzhH7erywOLFb6XNIB7tIro+gkS1ulmpqZOYtjgEC7l2Zj8COL9
	AfTYXHEZqOYkRifoPJoPXcWh/vI2pJDvLiagH/CBbbv3364kicIcADR75sfTe9DSfauuakNAgvtvP
	2zewrb10Kxj2xZF0w93A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neMZs-00FdS5-D9; Tue, 12 Apr 2022 19:53:28 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neMZm-00FdQY-TM
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 19:53:25 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id 40FCAE74225; Tue, 12 Apr 2022 21:52:46 +0200 (CEST)
Received: from astat.fritz.box (a89-183-68-148.net-htp.de [89.183.68.148])
 by lynxeye.de (Postfix) with ESMTPA id C7A00E74214
 for <barebox@lists.infradead.org>; Tue, 12 Apr 2022 21:52:44 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 12 Apr 2022 21:52:41 +0200
Message-Id: <20220412195241.126535-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220412195241.126535-1-l.stach@pengutronix.de>
References: <20220412195241.126535-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_125323_130448_10C9A76C 
X-CRM114-Status: UNSURE (   9.95  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] usb: dwc3: of-simple: add i.MX8MP compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The DWC3 DT node in the i.MX8MP is contained in a wrapper node for
the glue logic. Linux uses this wrapper for wakeup handling, but we
don't need this functionality in Barebox, so we can just handle it
with the of-simple DWC3 driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 1f42cde37f22..6261122a127f 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -68,6 +68,7 @@ static const struct of_device_id of_dwc3_simple_match[] = {
 	{.compatible = "rockchip,rk3399-dwc3"},
 	{.compatible = "xlnx,zynqmp-dwc3"},
 	{.compatible = "fsl,ls1046a-dwc3"},
+	{.compatible = "fsl,imx8mp-dwc3"},
 	{.compatible = "cavium,octeon-7130-usb-uctl"},
 	{.compatible = "sprd,sc9860-dwc3"},
 	{.compatible = "amlogic,meson-axg-dwc3"},
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

