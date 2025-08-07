Delivery-date: Thu, 07 Aug 2025 17:54:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wK-0081zg-2D
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 17:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wK-0005Wn-5T
	for lore@pengutronix.de; Thu, 07 Aug 2025 17:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TExE1OCmmumMv5gR96c3AzHetyPHNN9yxO5YRG/UxCE=; b=kJ6+Oo1HuzODFzGPRxW06TSZJC
	ekjz6ZffHJpq6l0gGcB7Cbg0wrr0gZ3PbTdN6p3e1CRJrWItKq35eB218U6cJxoo3ln7DZcBrXv75
	sG61uUQB27QR3dLhOvgPH/bciRyzemsXE/s2V3iE+AtcMhxmyUUwojnC8vyksFrcpuyRddVYR8erV
	ee9L5SpxFl62mRNgIxrG99HwcjxUxhUHBoV2ogaJRusyIQUTSKN09j8+pcJ6jwvntpxtaxcTBx9UA
	EN/7FtMjKWPr2OgPdF2DSIz5FCkJm5P9/wa+LQrO4Y9LChbwnW2chLeM2MFWSGlrS1hxZfTuiv9lt
	A3RQI9Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vg-000000013Bw-0fOO;
	Thu, 07 Aug 2025 15:53:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vd-000000013AT-40Fa
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 15:53:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-0005FE-Bq; Thu, 07 Aug 2025 17:53:14 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-00COnG-0S;
	Thu, 07 Aug 2025 17:53:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-006PB8-0E;
	Thu, 07 Aug 2025 17:53:14 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Aug 2025 17:53:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250807-fix-rtl8152-dropped-packages-v1-4-a71d05b4d166@pengutronix.de>
References: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
In-Reply-To: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_085317_997688_9A4450AD 
X-CRM114-Status: UNSURE (   9.59  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] net: usb: add debug call in the receive path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is the equivalent of the debug call `usbnet_send` and useful to
detect problems in the receive path.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/usb/usbnet.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 6e3ee4d552be36fe6bb052ae29f04a0650b4567d..95862cc5b5962178f2ff5dc9bc30253ec3c3fa2d 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -129,6 +129,9 @@ static void usbnet_recv(struct eth_device *edev)
 	if (ret)
 		return;
 
+	dev_dbg(&edev->dev, "%s: ret: %d len: %d alen: %d\n", __func__, ret,
+		len, alen);
+
 	if (alen) {
 		if (info->rx_fixup)
 			info->rx_fixup(dev, dev->rx_buf, alen);

-- 
2.39.5



