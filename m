Delivery-date: Fri, 26 Jun 2026 19:45:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbt-00A9aS-2B
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 19:45:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdAbs-0007jk-N8
	for lore@pengutronix.de; Fri, 26 Jun 2026 19:45:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5i9aPTomQpf7X/Opd9l+13jrlQvp3M8RsFHrjVbO6rk=; b=CWjh8KmKhbtR8NHqnOJbZElpW5
	bHM/llNQ85Yfy2p2lsTm6BP1zPNJ+M8SkMtFFxJgxKEr+k/hXvjXGVMz2dTw0KtJD9iUJxiFoK38w
	a8szJTKOOLVvrSRC6kH5FOLHqlaO8i2QZoCVffOrPADlFyyILG1e1SzQrYzSge0QBI/W5W3BiSp49
	tqRBwntT/FG7lHkq0vcWSZmECMUnkEojkrELlY2rdqUFGRGtsNdXEX2PuafqfMFEfQeiSOolkkzUG
	UW8Z8RfaPynOTDS5e6bNGN0x/4rgzb4FQTLz+5U2FGZlYThqGCr46HzHTpecdS0NrIhHvzsKs/MZN
	rgF/wHFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAak-0000000BiXE-0zFi;
	Fri, 26 Jun 2026 17:43:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdAah-0000000BiV1-0edy
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 17:43:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdAaf-0003ev-Iu; Fri, 26 Jun 2026 19:43:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 19:31:40 +0200
Message-ID: <20260626174342.1923132-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626174342.1923132-1-a.fatoum@barebox.org>
References: <20260626174342.1923132-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_104347_189174_286F70D9 
X-CRM114-Status: UNSURE (   9.91  )
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
Subject: [PATCH 4/5] usb: separate descriptor and config requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port over U-Boot commit ef71290be9b70d8cfa63b506c7d93c5069f63c42:

|   usb: Assure Get Descriptor request is in separate microframe
|
|   The Kingston DT Ultimate USB 3.0 stick is sensitive to this first
|   Get Descriptor request and if the request is not in a separate
|   microframe, the stick refuses to operate. Add slight delay, which
|   is enough for one microframe to pass on any USB spec revision.
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
 drivers/usb/core/usb.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 145b85a28fab..3f379197dc0c 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -522,6 +522,15 @@ int usb_new_device(struct usb_device *dev)
 	le16_to_cpus(&dev->descriptor->idVendor);
 	le16_to_cpus(&dev->descriptor->idProduct);
 	le16_to_cpus(&dev->descriptor->bcdDevice);
+
+	/*
+	 * Kingston DT Ultimate 32GB USB 3.0 seems to be extremely sensitive
+	 * about this first Get Descriptor request. If there are any other
+	 * requests in the first microframe, the stick crashes. Wait about
+	 * one microframe duration here (1mS for USB 1.x , 125uS for USB 2.0).
+	 */
+	mdelay(1);
+
 	/* only support for one config for now */
 	length = usb_get_configuration_no(dev, buf, 0);
 	if (length < 0) {
-- 
2.47.3



