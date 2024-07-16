Delivery-date: Tue, 16 Jul 2024 13:56:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgnh-005QpY-09
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:56:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgng-0000na-H2
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:56:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1ZrIIdv/b+jjYTxJLm/Q/d4RhTtGjAszQ7nSJmDwxGk=; b=MjbQnExmC1SgwEp1c4/eSynFrl
	/S7HLYPBvZn1XuNMiaro6nxQb0MjRzIwnk3okRQVE4fTYDRccoZEswUItmmT14vTm+FeR7jJyqSyg
	tkSzJefidq0mJccXUBB2LZimhBVG8A0qMGF553pQYoJ7wzOKUbbzSm2/p/6r+1soARt+vCULP3/vp
	uLqrWEIIpe+ByfFeSPW6SeeMFNNWpcT3YISdKqu+051LfUo+eHDpaQ6gknmBKek/B2qcMNNy7Txw9
	mtuA/bTavo9OgX6meZlN3kQHRtt1CRHM52y0n8oKYBhSDqAXIweszc3v293hEF9sbZPt1yj+7osCk
	HHm+sBrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgn6-0000000AJo5-3P7W;
	Tue, 16 Jul 2024 11:56:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgn3-0000000AJnL-1SI1
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:56:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgn1-0000a8-Sv; Tue, 16 Jul 2024 13:56:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgn1-0007YG-GU; Tue, 16 Jul 2024 13:56:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgn1-008CFW-1L;
	Tue, 16 Jul 2024 13:56:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:56:14 +0200
Message-Id: <20240716115614.1953608-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045617_403374_B1EE3C04 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] misc: port: bump down debugging print from notice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This was a left-over from development, which doesn't need to be printed
on every boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/port.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/port.c b/drivers/misc/port.c
index ddc443eb16df..e93df2907ebf 100644
--- a/drivers/misc/port.c
+++ b/drivers/misc/port.c
@@ -151,7 +151,7 @@ static int port_init(void)
 	if (ret)
 		return ret;
 
-	pr_notice("I/O port base %p\n", PCI_IOBASE);
+	pr_debug("I/O port base %p\n", PCI_IOBASE);
 
 	return platform_driver_register(&port_drv);
 }
-- 
2.39.2



