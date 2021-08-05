Delivery-date: Thu, 05 Aug 2021 17:24:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBfEM-0006I4-DQ
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 17:24:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBfEL-0003wR-Eg
	for lore@pengutronix.de; Thu, 05 Aug 2021 17:24:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSWrc0OPfUig4BrQfLoP75wDyBw/QStV0KoE1lKV85M=; b=eTVJaQbHIxO0eK
	aNvF8eAhvV5QYp3/bSsK9Andnf1a+IpDFSelgM09873ip+YwLD3aOsZbh7+5qrXrY0MRLJ+V7i6PA
	+0l1Abr4XRJe8fnSEYWe/GD+2J/SEmHv21rBFEIOg+oUj6JBB++bbw/NEGbVkWpVX9iWp9oXjayNZ
	JQLUmtKfH4RTSpEfznmK/WMx59jRRnotnVdkNarDbdwffn7bbfsGM4hLETUsMjSRDiRLu409eaFnY
	iItYxVOhEbMqs9B4Cr+BGiK2+3DmKPfCqQbM+ptnA+HJzyVyMRAfmy5+X5PrOb4WgJHkYxCUa+5bT
	e0csjmdNUSRJSzHalqNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBfD4-00A2xd-HR; Thu, 05 Aug 2021 15:23:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBfCy-00A2w3-Nw
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 15:22:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCx-0003iw-AN; Thu, 05 Aug 2021 17:22:55 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCw-0003I9-QT; Thu, 05 Aug 2021 17:22:54 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCw-0001Rb-Pl; Thu, 05 Aug 2021 17:22:54 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>
Date: Thu,  5 Aug 2021 17:22:51 +0200
Message-Id: <20210805152251.1902158-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210805152251.1902158-1-u.kleine-koenig@pengutronix.de>
References: <20210805152251.1902158-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=vbobtKCAUbP+Kqz+5TejieV595Z1SXjTvxx2i8smR1Q=;
 m=vzQ/UllLGsArhdN7a+SQbDnME7Bi1Ipmu8JyUYigESc=;
 p=iTneJxTJqdV8zh1vJpEQOsOvKLyYSfQi2pxO3z4aPK8=;
 g=51e2af649965956b4fa834ced78ab3ad2a00088e
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmEMAkYACgkQwfwUeK3K7Al4/wf/afS
 5NMnQD3AfolNC2LYNS7dkzY2spzpiK2o8Kh4X4Z+WzguIrN7OHMZImxaSQ9KIFwNvNxN5d0kCFJ0W
 AoS63iSQIRlqNUNlLDRQY28wQP/zvhoNYuu3dORBrAwh9RbA5XvxXbagsDjdzsHoSCP5R4189yRa4
 6f1SPQ/mztWbzv82gF3dV1oXlwO847vyYpW9UkqJyLxyGaOTQmfgF5NZz+N2zjDVOlPBNcR3HXq/V
 G6BeLqrO5hlDS8rdq9zSvj75aMeYgIDV7Q/5mLQ5SCspC52swcjEu9cvagHaUYum+JO2NEYPThWKz
 vHmrA6YmvkYgXF85m+o5W1RD+sDwzNA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_082256_827428_78CC7BE2 
X-CRM114-Status: GOOD (  18.20  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] imx-usb-loader: Add support for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>

The i.MX8MP uses a protocol similar to the MXS. The relevant differences
are:

 - Maximal transfer size is 1020
 - HID reports must be sent to EP1 instead of using a control transfer
 - The FW_DOWNLOAD command must not be send.

Signed-off-by: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 65 +++++++++++++++++++++++-------------
 1 file changed, 42 insertions(+), 23 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 3e96c86f2f29..40a85ee26105 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -71,6 +71,7 @@ struct mach_id {
 #define DEV_IMX		0
 #define DEV_MXS		1
 	unsigned char dev_type;
+	unsigned char hid_endpoint;
 };
 
 struct usb_work {
@@ -177,6 +178,13 @@ static const struct mach_id imx_ids[] = {
 		.header_type = HDR_MX53,
 		.mode = MODE_HID,
 		.max_transfer = 1024,
+	}, {
+		.vid = 0x1fc9,
+		.pid = 0x0146,
+		.name = "i.MX8MP",
+		.max_transfer = 1020,
+		.dev_type = DEV_MXS,
+		.hid_endpoint = 1,
 	}, {
 		.vid = 0x1fc9,
 		.pid = 0x012b,
@@ -522,15 +530,24 @@ static int transfer(int report, unsigned char *p, unsigned cnt, int *last_trans)
 
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
+				if (err == 0 && last_trans)
+					*last_trans = trans - 1;
+			} else {
+				err = libusb_control_transfer(usb_dev_handle,
+						CTRL_OUT,
+						HID_SET_REPORT,
+						(HID_REPORT_TYPE_OUTPUT << 8) | report,
+						0,
+						tmp, cnt + 1, 1000);
+				if (err > 0) {
+					*last_trans = err - 1;
+					err = 0;
+				}
+			}
 		} else {
 			*last_trans = 0;
 			memset(&tmp[1], 0, cnt);
@@ -1507,20 +1524,22 @@ static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
 	void *p;
 	int cnt;
 
-	dl_command.sign = htonl(0x424c5443); /* Signature: BLTC */
-	dl_command.tag = htonl(0x1);
-	dl_command.size = htonl(size);
-	dl_command.flags = 0;
-	dl_command.rsvd[0] = 0;
-	dl_command.rsvd[1] = 0;
-	dl_command.cmd = MXS_CMD_FW_DOWNLOAD;
-	dl_command.dw_size = htonl(size);
-
-	err = transfer(1, (unsigned char *) &dl_command, 20, &last_trans);
-	if (err) {
-		printf("transfer error at init step: err=%i, last_trans=%i\n",
-		       err, last_trans);
-		return err;
+	if (!mach_id->hid_endpoint) {
+		dl_command.sign = htonl(0x424c5443); /* Signature: BLTC */
+		dl_command.tag = htonl(0x1);
+		dl_command.size = htonl(size);
+		dl_command.flags = 0;
+		dl_command.rsvd[0] = 0;
+		dl_command.rsvd[1] = 0;
+		dl_command.cmd = MXS_CMD_FW_DOWNLOAD;
+		dl_command.dw_size = htonl(size);
+
+		err = transfer(1, (unsigned char *) &dl_command, 20, &last_trans);
+		if (err) {
+			printf("transfer error at init step: err=%i, last_trans=%i\n",
+					err, last_trans);
+			return err;
+		}
 	}
 
 	p = data;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

