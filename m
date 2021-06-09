Delivery-date: Wed, 09 Jun 2021 11:27:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquUr-0006SB-1g
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:27:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquUp-0001tm-FE
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:27:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LP7WSaaG/q3kf2WMjimA+aaCOSgqFZxUfd51Mfj44JE=; b=1zi/qCTaikfPlq
	V4iae8PudWRzgf50BbIJ2M51aWgEXGA9i2KoRr0rcd5xY7kM85gv/jwAMqtlyqveG2iDa/LSHQRjq
	LZZgbEO1l3Kuez7+g/lQzmMDcOYX0/eAR+0txAxCp9JQzRTzsl7hJ5eVNmEYUqIB7a4fvRX34MQIo
	ajBeTk/Pw5v88C3WvYG0bhIa8L+HjOm5PikU7vS/GR7u/5HFEbS2uE/9Ix33dWrjX8bX9enNj8R9b
	ansLJX5TC/cTK7k1mo/wIaYf/096xL5gDJGPeizMXnjK4O6QCHW/fVP9sYFdanFJnXFzocQYtEVwI
	WiMYz0JyVEutDBRV5p5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquTH-00CevI-VC; Wed, 09 Jun 2021 09:26:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqtzX-00CVXa-Mo
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 08:55:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzW-0005bJ-0z; Wed, 09 Jun 2021 10:55:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0006FJ-HF; Wed, 09 Jun 2021 10:55:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jun 2021 10:55:11 +0200
Message-Id: <20210609085512.3865-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210609085512.3865-1-a.fatoum@pengutronix.de>
References: <20210609085512.3865-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_015515_885037_76F49F76 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] fixup! net: eqos: Rockchip support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Network adapter needs to be halted on shutdown, thus define a remove
callback that triggers the halt.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index 09b53e2cc08d..fb37243f6993 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -343,6 +343,7 @@ static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 static struct driver_d dwc_ether_driver = {
 	.name = "designware_eqos",
 	.probe = dwc_ether_probe,
+	.remove = eqos_remove,
 	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
 };
 device_platform_driver(dwc_ether_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

