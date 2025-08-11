Delivery-date: Mon, 11 Aug 2025 15:30:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulSbk-009Lkt-0I
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 15:30:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulSbj-00078o-I7
	for lore@pengutronix.de; Mon, 11 Aug 2025 15:30:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XsPp0K5bP47A4Kbv6EK1zpoYjWTXnczNJ7iIpOiFf94=; b=NbhUP4VRqabmqUAk3Gj0Cgzy7v
	h8Y+D1PoRLp70f4LgtDbEK0vwgxaYqLQSQrZJ4cIIe6eLlqUQIuIpdU4B2jqO2JpEkOrhJeXf+wa5
	mXkOSHsJpj14jffyJ47Db8DQB7B3n+6RcxSXkls6PHFtbojthnPJ7RX+wEThvw836hZMMz/T3V8Vb
	nI0p3FL2sOCm3oyWHYWTYSQDZ0kJWxKlsLyf2p9Fhj6GHjKT4KkBorMqSNIJKm6muh7vKedg5OrEO
	Yt5l8EvfzXogHpTNkhNeGdEa49dNu6F/Jfswoqv7kJv+JCOTFfP5+OL7XFOtOb+0eyBw5wL/FRUiH
	z8h0J7pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSbV-00000007pM0-3ODY;
	Mon, 11 Aug 2025 13:30:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dW2-3j5w
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdd-0004WP-Iu; Mon, 11 Aug 2025 14:28:29 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:52 +0200
Message-Id: <20250811122824.1667791-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052830_922127_5E9C5BA2 
X-CRM114-Status: UNSURE (   7.05  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 12/44] usb: drop dead iSerialNumber parameter addition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

iSerialNumber is already added for this device in the line before, so
this line is expected to fail. That's a good thing, because str is
uninitialized. Let's just drop this superfluous line then.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/core/usb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index f59b525f6276..ec487107584c 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -454,7 +454,6 @@ int usb_new_device(struct usb_device *dev)
 	void *buf;
 	struct usb_host *host = dev->host;
 	struct usb_device *parent = dev->parent;
-	char str[16];
 
 	if (parent)
 		dev_set_name(&dev->dev, "%s-%d", parent->dev.name,
@@ -559,7 +558,6 @@ int usb_new_device(struct usb_device *dev)
 			dev->descriptor->iProduct, "%u");
 	dev_add_param_uint32_fixed(&dev->dev, "iSerialNumber",
 			dev->descriptor->iSerialNumber, "%u");
-	dev_add_param_fixed(&dev->dev, "iSerialNumber", str);
 	dev_add_param_fixed(&dev->dev, "Manufacturer", dev->mf);
 	dev_add_param_fixed(&dev->dev, "Product", dev->prod);
 	dev_add_param_fixed(&dev->dev, "SerialNumber", dev->serial);
-- 
2.39.5



