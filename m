Delivery-date: Thu, 04 Apr 2024 20:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS16-00AYdY-0x
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 20:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS15-00039n-4q
	for lore@pengutronix.de; Thu, 04 Apr 2024 20:40:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ua19pJt43XUe4FoKMgR3i/QrcVD1nMGZeMeukymywPA=; b=M2QSKXU35WYkJBN9mOUxp9fQGa
	F9nF6XEADxRAwBq95/suOdM7ekPhsM5/YrCPreZXwkblkj1fQp52cLwkShizwryu1m/3pkGFABmvm
	5aNJgrpwPWJz284WUamZM61+pvUnyoFRslB9gixMnEwusnmXnFG1nu6yvz6J9RqeWfW2wCaKvn7M9
	20OjXP5mWyEHcKQV2homPJrgtj7wrPaN8e2G6rB/LP//wRSD8GznMF8qJEiRr87ySlKhUQbFZbpSp
	yQQjGALBqbIE4baiooEchK34Nhy/MtMyb65mkYEenSoAQiijDtN6sEzb53YPOEjWyZZbGQ1aJdMfO
	IT8mXg8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0V-00000003sKY-0kkm;
	Thu, 04 Apr 2024 18:40:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0N-00000003sG8-1L4i
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 18:40:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0J-0001sn-7B; Thu, 04 Apr 2024 20:40:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-00AQR0-Op; Thu, 04 Apr 2024 20:40:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-006VVt-2C;
	Thu, 04 Apr 2024 20:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 20:40:00 +0200
Message-Id: <20240404184001.1532897-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_114007_444331_584445E6 
X-CRM114-Status: GOOD (  11.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/10] net: usb: smsc95xx: fix handling of multiple packets per urb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

len is the actual length of the USB bulk transfer, while size is the
length of the current packet, which may be different if we have multiple
packets per transfer.

We don't seem to run into this in barebox, perhaps because of our MTU,
but let's fix it anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/usb/smsc95xx.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index 1587128368ad..291e3c2f80f7 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -790,14 +790,17 @@ static int smsc95xx_rx_fixup(struct usbnet *dev, void *buf, int len)
 				return 1;
 			}
 
-			net_receive(&dev->edev, packet, len - 4);
+			net_receive(&dev->edev, packet, size - 4);
 		}
 
 		len -= size;
+		buf += size;
 
 		/* padding bytes before the next frame starts */
-		if (len)
+		if (len) {
 			len -= align_count;
+			buf += size;
+		}
 	}
 
 	if (len < 0) {
-- 
2.39.2



