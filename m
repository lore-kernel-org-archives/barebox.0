Delivery-date: Thu, 14 Jul 2022 09:29:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHW-007JWK-D7
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHT-0002FL-Jy
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5RlHsE70f4f/ZacaJ/e7Op5a3tE4Ewsou5eFdW/71II=; b=trrIfeVxO3fgVSTxNOBhW6FT+w
	NKU8fUCGN7XdmZ6mLikjSrIgMp2zHjMsevJrsuetR7fojUea52SFxZtKd6Qxi6WbTQ6q1xa0V85n0
	lRNBPTmk3ff+Y3ltU007vRXcgpU6zpfcgeaEf7LBijeIZXGkNSKPUflUe2Q92lGpDZtiJWPbkdG4s
	rxBMGtxnrcKrCtMxOgyzMiIekgfmL6Q397eUYWFVXejgK9z/S7WmEz+QIpvu2DSoe7f86Sg8S3rn4
	T/+8W8pIIJ7Sm0mRyIEgFu1zD8hdVD6YxYJKVP4my+yR9M+BHEfHaih6B8diiA5lpF27DD0WkmyWS
	oTwBJbmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtG5-00Boch-ES; Thu, 14 Jul 2022 07:27:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFx-00BoVK-Qk
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-0001fz-Ua; Thu, 14 Jul 2022 09:27:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFs-000rqJ-DK; Thu, 14 Jul 2022 09:27:24 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vv-Cc; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:17 +0200
Message-Id: <20220714072722.2863571-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002729_899320_15E95CCB 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/12] imx-usb-loader: Add i.MX8MP support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For the i.MX8MP NXP dropped the SDP protocol used on other SoCs.
Instead the image is just sent straight to the device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 37 +++++++++++++++++++++++++++---------
 1 file changed, 28 insertions(+), 9 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 5f7dc3bc0b..974ff741bf 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -74,6 +74,7 @@ struct mach_id {
 #define DEV_IMX		0
 #define DEV_MXS		1
 	unsigned char dev_type;
+	unsigned char hid_endpoint;
 };
 
 struct usb_work {
@@ -180,6 +181,14 @@ static const struct mach_id imx_ids[] = {
 		.header_type = HDR_MX53,
 		.mode = MODE_HID,
 		.max_transfer = 1024,
+	}, {
+		.vid = 0x1fc9,
+		.pid = 0x0146,
+		.name = "i.MX8MP",
+		.header_type = HDR_MX53,
+		.max_transfer = 1020,
+		.mode = MODE_HID,
+		.hid_endpoint = 1,
 	}, {
 		.vid = 0x1fc9,
 		.pid = 0x012b,
@@ -470,15 +479,22 @@ static int transfer(int report, unsigned char *p, unsigned cnt, int *last_trans)
 
 		if (report < 3) {
 			memcpy(&tmp[1], p, cnt);
-			err = libusb_control_transfer(usb_dev_handle,
-					CTRL_OUT,
-					HID_SET_REPORT,
-					(HID_REPORT_TYPE_OUTPUT << 8) | report,
-					0,
-					tmp, cnt + 1, 1000);
-			*last_trans = (err > 0) ? err - 1 : 0;
-			if (err > 0)
-				err = 0;
+			if (mach_id->hid_endpoint) {
+				int trans;
+				err = libusb_interrupt_transfer(usb_dev_handle,
+						mach_id->hid_endpoint, tmp, cnt + 1, &trans, 1000);
+				*last_trans = trans - 1;
+			} else {
+				err = libusb_control_transfer(usb_dev_handle,
+						CTRL_OUT,
+						HID_SET_REPORT,
+						(HID_REPORT_TYPE_OUTPUT << 8) | report,
+						0,
+						tmp, cnt + 1, 1000);
+				*last_trans = (err > 0) ? err - 1 : 0;
+				if (err > 0)
+					err = 0;
+			}
 		} else {
 			*last_trans = 0;
 			memset(&tmp[1], 0, cnt);
@@ -1353,6 +1369,9 @@ static int do_irom_download(struct usb_work *curr, int verify)
 
 	header_offset = ret;
 
+	if (mach_id->hid_endpoint)
+		return send_file(buf + header_offset, fsize - header_offset);
+
 	if (plugin && (!curr->plug)) {
 		printf("Only plugin header found\n");
 		ret = -1;
-- 
2.30.2



