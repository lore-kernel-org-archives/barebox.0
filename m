Delivery-date: Fri, 26 Jun 2026 19:45:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbr-00A9Zc-3D
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 19:45:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbr-0007YK-4m
	for lore@pengutronix.de; Fri, 26 Jun 2026 19:44:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tQI6XFmoyT2QjqXnlyY6YDruGVfUUS5gJhuvEcu3JAE=; b=pVz4FmO5tanFNtBJhQiGTW3PmX
	xF4v8p3GGJuGBuc8/WbOGcE/cBbl2Rek0uQ7FrqhGpu/HLCK1JvwtKrYviZOxm3k8GxY91fLqmm44
	Q8kHsPs3IWdir9fcH1glGaztGDzAM3HUrmRnYG3r+AMf78AxoDMAJB4ywcIYAtbSaRrnBLWoYgK0b
	EM5UdQa2olIVQB6+UWI3y/Z6JMk81RV9ZApxbNpfq9zOyXolhUh+m4rcy7ETPUuEFwcV1kewnFVal
	udVWgOmk/M/0gxR1KuAQa+hk7PmpX9psYgSsLIbZZ/gGddDR6LKzJljAY3W0/Ii+dVpLZIHNRd62S
	fwsrx+9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAak-0000000BiXJ-1N3J;
	Fri, 26 Jun 2026 17:43:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAag-0000000BiUy-2zQR
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 17:43:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdAaf-0003ev-5y; Fri, 26 Jun 2026 19:43:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 19:31:38 +0200
Message-ID: <20260626174342.1923132-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626174342.1923132-1-a.fatoum@barebox.org>
References: <20260626174342.1923132-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_104346_750613_33A67039 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] usb: wait after initial device descriptor read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port over U-Boot commit 3406e9d8afcc8ade8cb3e697be2bcf9cc85c9d04:

|   usb: Add 1ms delay after first Get Descriptor request
|
|   Logitech Unifying Receiver 046d:c52b bcdDevice 12.10 seems
|   sensitive about the first Get Descriptor request. If there
|   are any other requests in the same microframe, the device
|   reports bogus data, first of the descriptor parts is not
|   sent to the host. Wait over one microframe duration before
|   issuing subsequent requests to avoid probe failure with
|   this device, since it can be used to connect USB keyboards.
|
|   Signed-off-by: Marek Vasut <marex@denx.de>
|   Tested-by: Janne Grunau <j@jannau.net>

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/core/usb.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ae87137447c7..c6b3187de17d 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -403,6 +403,17 @@ static int usb_setup_descriptor(struct usb_device *dev, bool do_read)
 		if (err)
 			return err;
 
+		/*
+		 * Logitech Unifying Receiver 046d:c52b bcdDevice 12.10 seems
+		 * sensitive about the first Get Descriptor request. If there
+		 * are any other requests in the same microframe, the device
+		 * reports bogus data, first of the descriptor parts is not
+		 * sent to the host. Wait over one microframe duration here
+		 * (1mS for USB 1.x , 125uS for USB 2.0) to avoid triggering
+		 * the issue.
+		 */
+		mdelay(1);
+
 		dev->epmaxpacketin[0] = dev->descriptor->bMaxPacketSize0;
 		dev->epmaxpacketout[0] = dev->descriptor->bMaxPacketSize0;
 	}
-- 
2.47.3



