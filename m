Delivery-date: Fri, 30 Apr 2021 13:57:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcRm2-0004r1-FW
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 13:57:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcRm1-0004o4-Nr
	for lore@pengutronix.de; Fri, 30 Apr 2021 13:57:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hMUdMkMU6bA2pbhaQrxfJh8rTZ/6P9f92XaTh1zQ6Oc=; b=L4vOoZjyPUFXYjSb9nWTW6tfI
	1qkpmnxFITWx0eloMKr5A3VaBBXGXexA6RgBWOwoUobS3u3+pjFwoC4fZRaZDq5zIzPmkuGMTFfgx
	PMoTNkP6Gzsp+5Wa7trMnZBUDM/AFkEECLbTzBxsBpfayd3IfutyX9LhU5hAFfK7LoQRoMX0aW8O7
	X005JTto4ktAQVOYbOtP8x4tEOVGn78hT/ZAmLNOM3hpWA8aiiePhnURVoMlCj2zkDlXSmeBstmH2
	QKZmnDHBg3asOVVdahHx01DjU03+DN58TB2/Jc33NiaSOGqH/EQukH8KUb5tMehW5e4hV57TOwx/V
	5qxjb9yCA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcRlK-007la5-Sj; Fri, 30 Apr 2021 11:56:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcRlH-007lZr-W0
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 11:56:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=GizGHh3Qj3ZzuV/iCHq2yS+5h7Ubp5PdQXr/gEh0ad0=; b=kCaDmx45VhgjHOYWwkZpgoZQbn
 feQMCrI4CrkEVlPPSxeqG4v59KAezknXd7lFixRSOiTQX76YARp0j3XvYj3vDBB2qreqPlpVlmPEC
 VObH2Cg4TWBuZYBMpfQxvzbZ3vfoQdg38JNviI5BqB92tS5TmIi/ySs3ih+x20uG4drUPixTzWNvP
 igSzs/+02mJNCx1PyA0PAwdA6g/fEVP/0xYc1B3RgOAklcxtkgQdeDcUy9mCXew73Ht3BJ2xeUf6Y
 HQ28dl3eVP57ygciHJY9NcxtaJj/P+ikw7mliW1VIzcXn1DYFo1hStYjZr4654AbNri8Vbu6okcNG
 /xBM5aqA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcRlF-001LRO-JN
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 11:56:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lcRlE-0004bu-Bc; Fri, 30 Apr 2021 13:56:44 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Bastian Krause <bst@pengutronix.de>
Date: Fri, 30 Apr 2021 13:56:40 +0200
Message-Id: <20210430115640.21011-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430115640.21011-1-bst@pengutronix.de>
References: <20210430115640.21011-1-bst@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_045645_652315_D170E171 
X-CRM114-Status: GOOD (  11.13  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] scripts: imx-usb-loader: print USB VID/PID of excluded
 devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On hosts with multiple USB devices connected, multiple "excluded by
device path option" messages can be observed. Add the USB VID/PID to
these messages to give them some additional value.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
Changes since (implicit) v1:
- pass libusb_device_descriptor from find_imx_dev() instead of calling
  libusb_get_device_descriptor() again
---
 scripts/imx/imx-usb-loader.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 6f9104e816..cff77f27f2 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -267,7 +267,8 @@ static void list_imx_device_types(void)
 	}
 }
 
-static int device_location_equal(libusb_device *device, const char *location)
+static int device_location_equal(libusb_device *device, const char *location,
+		struct libusb_device_descriptor desc)
 {
 	uint8_t port_path[MAX_USB_PORTS];
 	uint8_t dev_bus;
@@ -315,7 +316,8 @@ static int device_location_equal(libusb_device *device, const char *location)
 	if (path_step == path_len)
 		result = 1;
 	else if (verbose)
-		fprintf(stderr, " excluded by device path option\n");
+		fprintf(stderr, "USB device [%04x:%04x] excluded by device path option\n",
+			desc.idVendor, desc.idProduct);
 
 done:
 	free(loc);
@@ -343,7 +345,7 @@ static libusb_device *find_imx_dev(libusb_device **devs, const struct mach_id **
 			return NULL;
 		}
 
-		if (location && !device_location_equal(dev, location)) {
+		if (location && !device_location_equal(dev, location, desc)) {
 			libusb_close(usb_dev_handle);
 			usb_dev_handle = NULL;
 			continue;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

