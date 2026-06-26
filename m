Delivery-date: Fri, 26 Jun 2026 19:45:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbs-00A9Zu-1h
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 19:45:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbr-0007YT-AS
	for lore@pengutronix.de; Fri, 26 Jun 2026 19:45:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OO5cpNo2vfdoWCxwO+AaGXy8yJVLU5+diym0hcBEZ9w=; b=QHitB5c5bEcGC0TQeyF3N+9ewZ
	sSrlvKXQ4u1qmI/OFRKxzn8eYkDg6kpZzsDx971g78IqCOcm/GzlykWeyM1n52yU7hE9MZaJCjh60
	qwr5cUcWRD8nAld1WmnIhLQp3KJvU8LwwBW2uSfpajeNcbTSAcz4iWK2ybCpg8wuWcykfbxxUAHBf
	b6Glmb+Ek7R1qLF+XyZ9Q45BnFpmfIKkhwb/HIOrxu3oJ4B+XWItxxDaE54EIhlui0LQLwU0OPoky
	yzqylP1vJ2jmDCNCYI9FQFEuJby6KTKU7BygkYLrF36w0BuZdUkRDjhleVNqDZfCutdf5HmaNlbPq
	qr/TeU6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAaj-0000000BiWd-0IFO;
	Fri, 26 Jun 2026 17:43:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAag-0000000BiV0-3mbu
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 17:43:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdAaf-0003ev-CT; Fri, 26 Jun 2026 19:43:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 19:31:39 +0200
Message-ID: <20260626174342.1923132-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626174342.1923132-1-a.fatoum@barebox.org>
References: <20260626174342.1923132-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_104346_938083_06F2B17A 
X-CRM114-Status: UNSURE (   7.75  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] usb: wait after setting device configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port over U-Boot commit f647bf0ba36a5236d4bc7f93d39bfacfb1cfe6c7:

|   usb: Wait after sending Set Configuration request
|
|   Some devices, like the SanDisk Cruzer Pop need some time to process
|   the Set Configuration request, so wait a little until they are ready.
|
|   Signed-off-by: Marek Vasut <marex@denx.de>
|   Cc: Chin Liang See <clsee@altera.com>
|   Cc: Dinh Nguyen <dinguyen@opensource.altera.com>
|   Cc: Hans de Goede <hdegoede@redhat.com>
|   Cc: Stefan Roese <sr@denx.de>
|   Cc: Stephen Warren <swarren@nvidia.com>

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/core/usb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index c6b3187de17d..145b85a28fab 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -539,6 +539,14 @@ int usb_new_device(struct usb_device *dev)
 		       dev->act_len, dev->status);
 		goto err_out;
 	}
+
+	/*
+	 * Wait until the Set Configuration request gets processed by the
+	 * device. This is required by at least SanDisk Cruzer Pop USB 2.0
+	 * and Kingston DT Ultimate 32GB USB 3.0 on DWC2 OTG controller.
+	 */
+	mdelay(10);
+
 	dev_dbg(&dev->dev, "new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
 		   dev->descriptor->iManufacturer, dev->descriptor->iProduct,
 		   dev->descriptor->iSerialNumber);
-- 
2.47.3



