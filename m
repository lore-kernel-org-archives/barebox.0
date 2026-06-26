Delivery-date: Fri, 26 Jun 2026 20:15:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdB53-00AA7V-0H
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 20:15:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdB51-00062c-LV
	for lore@pengutronix.de; Fri, 26 Jun 2026 20:15:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ERxydOtUJbjL+VS1jdu1FrSvmMs0DR3NF6iz6kPF7g=; b=kF2ecnjOyJKRpgpA+ZHmwQUbYE
	suixwXt52MjHQsyr4Qm+ivE0D3aYgAYTvVQPCg2kFeWrZYg9MxOPbck66Pw8vfJst0C+NdsRKGCmf
	A1lUvXCd+RgL3zTO7ra8d68w/alF4vdRaohbI71E5cpmlYuSa5XqdVZTy6KL4G6i2DTJx0xyxtIMJ
	d+xyilSEHTGlUmwsVKVM2573sAvkUWn0oIf4VIX21rWF7Lgd9CxeO8CTSkra9DdngSIJQpsBgcJHw
	Or7+MI1wm9yVoCyyQqx/tBS+xyVZZZ0HpPsInYjI0Z/Hf5poZSw6yYoKr4YmGH4yZXBNuKAPsJ+C2
	MhXAjVlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAak-0000000BiX6-0gOM;
	Fri, 26 Jun 2026 17:43:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAag-0000000BiUz-3Og7
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 17:43:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdAae-0003ev-Vn; Fri, 26 Jun 2026 19:43:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 19:31:37 +0200
Message-ID: <20260626174342.1923132-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626174342.1923132-1-a.fatoum@barebox.org>
References: <20260626174342.1923132-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_104346_842629_F1AF4E29 
X-CRM114-Status: UNSURE (   7.83  )
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
Subject: [PATCH 1/5] usb: hub: wait after port reset recovery
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port over U-Boot commit b5999f8f6ca89223b70ec3038fcfe9dbb6c67475:

|   usb: hub: Add missing reset recovery delay
|
|   Some devices like YubiKeys need more time before SET_ADDRESS. The spec
|   says we need to wait 10ms.
|
|   Signed-off-by: Hector Martin <marcan@marcan.st>
|   Reviewed-by: Marek Vasut <marex@denx.de>

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/core/hub.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 70da8566b289..e969fc466a8e 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -282,6 +282,13 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port,
 		return;
 	}
 
+	/*
+	 * USB 2.0 7.1.7.5: devices must be able to accept a SetAddress()
+	 * request (refer to Section 11.24.2 and Section 9.4 respectively)
+	 * after the reset recovery time 10 ms
+	 */
+	mdelay(10);
+
 	dev->children[port] = usb;
 	usb->parent = dev;
 	usb->portnr = port + 1;
-- 
2.47.3



