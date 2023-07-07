Delivery-date: Fri, 07 Jul 2023 14:15:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHkN5-001a9K-O8
	for lore@lore.pengutronix.de; Fri, 07 Jul 2023 14:15:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHkN3-0004fG-BZ
	for lore@pengutronix.de; Fri, 07 Jul 2023 14:15:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9c6r8afrSB3X61tPYsynWlEc9JnRTCwBcIdJU9uao68=; b=MCL291dDzw0c+Q/wpZe8aqJGBt
	I2K84HIW1iKiJNKNGrpLebkLLUiwST6qyCzbUIJsynq/ASfk5msdkHykIdo5Js0mqDZ2yhhQ7YE4X
	JrweJbhjsHR0mrY1zZZywWm3knv6MYVwmSJZbQ1IWqPiKVOLlvh86f8NreQvKDqVfv26+OmWV8y17
	StSw1sh2c5wvumb7hZ1SVj8iHh/pYmDRXPy4ovwClmThCGEWE4Si2No0GkKuh68WiIlnR+H0x24W1
	j1aUhcllAtDQlL8NJfgUxsngG1cZhZDqatIk5+doWGeOCAyjrgiCwrAlD+Ro79fd/efUNapmjp3VU
	oCRm3AYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHkLf-004azq-2y;
	Fri, 07 Jul 2023 12:14:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHkLb-004ay6-1i
	for barebox@lists.infradead.org;
	Fri, 07 Jul 2023 12:14:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLU-0004Ds-2z; Fri, 07 Jul 2023 14:13:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLT-00Cj6Q-Db; Fri, 07 Jul 2023 14:13:55 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLT-00Dd3L-0F;
	Fri, 07 Jul 2023 14:13:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Jul 2023 14:13:53 +0200
Message-Id: <20230707121354.3248365-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230707121354.3248365-1-a.fatoum@pengutronix.de>
References: <20230707121354.3248365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_051403_613975_7769A04A 
X-CRM114-Status: GOOD (  11.76  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/3] commands: usbserial: prevent double free
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

usbserial -d may be called more than once, which now results in removal
of a driver that may already be removed leading to double frees.

usbgadget -d doesn't suffer from this as both usb_multi_register and
usb_multi_unregister keep around a global variable to check if the
gadget is currently registered. Let's do likewise for usb_serial_unregister.

Fixes: 14211ab8b0e1 ("usb: gadget: Update core to Linux-6.3-rc2")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/legacy/serial.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/legacy/serial.c b/drivers/usb/gadget/legacy/serial.c
index 46c41f6dea30..913d174a9177 100644
--- a/drivers/usb/gadget/legacy/serial.c
+++ b/drivers/usb/gadget/legacy/serial.c
@@ -247,8 +247,17 @@ static struct usb_composite_driver gserial_driver = {
 	.unbind		= gs_unbind,
 };
 
+static bool usb_serial_registered;
+
 int usb_serial_register(struct usb_serial_pdata *pdata)
 {
+	int ret;
+
+	if (usb_serial_registered) {
+		pr_err("USB serial gadget already registered\n");
+		return -EBUSY;
+	}
+
 	/* We *could* export two configs; that'd be much cleaner...
 	 * but neither of these product IDs was defined that way.
 	 */
@@ -273,10 +282,18 @@ int usb_serial_register(struct usb_serial_pdata *pdata)
 		device_desc.bDeviceClass = USB_CLASS_VENDOR_SPEC;
 	}
 
-	return usb_composite_probe(&gserial_driver);
+	ret = usb_composite_probe(&gserial_driver);
+	if (!ret)
+		usb_serial_registered = true;
+
+	return ret;
 }
 
 void usb_serial_unregister(void)
 {
+	if (!usb_serial_registered)
+		return;
+
 	usb_composite_unregister(&gserial_driver);
+	usb_serial_registered = false;
 }
-- 
2.39.2



