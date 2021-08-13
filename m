Delivery-date: Fri, 13 Aug 2021 17:34:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEZCK-0006Cy-7s
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 17:34:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEZCG-00064o-MB
	for lore@pengutronix.de; Fri, 13 Aug 2021 17:34:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zfrj+eqnZ7gzPnLJUJn+litVy/oSeiRtVsE0K9RsRNY=; b=VRLDsJGx/QtjPC
	4nNPtJ/4KE8jMQ9wTMuAJ4hc0Glyr0SjqG8i10hDC9VGEaVi8ntW0FjWfiLHFo7kltpd9KLpfImXB
	EHgwm1JEjPCF4uUrrWC+dg+oYgco90yzchpW2CFIfrsRnLh4/i7cx39tzJEaQx2sFdHXD9LiZZg1/
	fnf/ZKYX9QboNVm69dbjYGWps0YNmVf3mc8Dy95tk7xZASUbuUGOI/HuBLmTc8ANZbGMk5hiGBJPA
	2N0BCVf4XGhGLy8z9hTKuAwWTbr54LQwXLsiymFOSOxPoLI7z1+1Cx+Xb2jdONbaF+xQ5aE+ABPVb
	eXjZHAP7cx5n9j/KH/UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZAh-00CyN7-C7; Fri, 13 Aug 2021 15:32:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZAa-00CyL8-NH
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 15:32:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZAZ-0005uS-8e; Fri, 13 Aug 2021 17:32:27 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZAY-0006VJ-Oo; Fri, 13 Aug 2021 17:32:26 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZAY-0003DR-O1; Fri, 13 Aug 2021 17:32:26 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Aug 2021 17:22:45 +0200
Message-Id: <20210813152245.15841-4-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
References: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=W8LcdqZSWr8FUYTxHiYhOmhWOn2MU4ngruhso4PeU/w=;
 m=4/yUk73oNHASss5FyDRdcPAADP9Aow0BD+Gw7e6r5Ns=;
 p=/hN0xR9h5p9ImxxYf2QXwnzzmRe25SPAonCN2mlWvkY=;
 g=4a5bec3aaf12ebb822d4da743dce3f09eb825b54
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmEWjkIACgkQwfwUeK3K7AmLIAgAlMj
 Fe2Dh5/USsDi0FUJ7mmFtFHQ14Y41F2dvd4MYCoqN9NYmVrnai4+OKjzTmnS1xjiyJzjalScRo8Fq
 jpeQ4wjuZWhrIczMHX4yxs29n/icbPnC5BJgyCONm3nSWo4aCmqYPyVmXirKLSVYFn5Z+DSBvUu6D
 BIc6tKeta2oMPeFOjA1wJsH+5on2f1cBMpcJ422PpbDpDwx3hA2gLlc57O09y7NE1LLxEVSjXAN7/
 3mBzGYDcESEccwrtRBmYprAa3/VX5sjsLtyWWjdyNyO8aMucsoDOgU60eM/XkApMDhSvzhKvKTp7M
 8pWUH+Y21y2VuVtnft7ZoCfAkmozNMw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_083228_799802_AA06303C 
X-CRM114-Status: GOOD (  21.64  )
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
Cc: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>, rcz@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] imx-usb-loader: Add support for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX8MP uses a protocol similar to the MXS. The relevant differences
are:

 - Maximal transfer size is 1020
 - HID reports must be sent to EP1 instead of using a control transfer
 - The FW_DOWNLOAD command must not be send.
 - The image to upload must start with the IVT header (usually at offset
   0x8000), so the barebox header isn't transferred.

Signed-off-by: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 80 +++++++++++++++++++++++++-----------
 1 file changed, 55 insertions(+), 25 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 3e96c86f2f29..cf87e0f91d65 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -71,6 +71,7 @@ struct mach_id {
 #define DEV_IMX		0
 #define DEV_MXS		1
 	unsigned char dev_type;
+	unsigned char hid_endpoint;
 };
 
 struct usb_work {
@@ -177,6 +178,14 @@ static const struct mach_id imx_ids[] = {
 		.header_type = HDR_MX53,
 		.mode = MODE_HID,
 		.max_transfer = 1024,
+	}, {
+		.vid = 0x1fc9,
+		.pid = 0x0146,
+		.name = "i.MX8MP",
+		.header_type = HDR_MX53,
+		.max_transfer = 1020,
+		.dev_type = DEV_MXS,
+		.hid_endpoint = 1,
 	}, {
 		.vid = 0x1fc9,
 		.pid = 0x012b,
@@ -522,15 +531,22 @@ static int transfer(int report, unsigned char *p, unsigned cnt, int *last_trans)
 
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
@@ -1500,32 +1516,46 @@ static int write_mem(const struct config_data *data, uint32_t addr,
 }
 
 /* MXS section */
-static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
+static int mxs_load_file(struct usb_work *curr, libusb_device_handle *dev, uint8_t *data, int size)
 {
 	static struct mxs_command dl_command;
 	int last_trans, err;
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
 	cnt = size;
 
+	if (mach_id->header_type != HDR_NONE) {
+		unsigned int dummy;
+		err = process_header(curr, p, cnt, &dummy, &dummy, &dummy);
+		if (err < 0) {
+			printf("Failed to find IVT header\n");
+			return err;
+		}
+
+		p += err;
+		cnt -= err;
+	}
+
 	while (1) {
 		int now = get_min(cnt, mach_id->max_transfer);
 
@@ -1555,7 +1585,7 @@ static int mxs_work(struct usb_work *curr)
 	if (ret < 0)
 		return ret;
 
-	return mxs_load_file(usb_dev_handle, buf, fsize);
+	return mxs_load_file(curr, usb_dev_handle, buf, fsize);
 }
 /* end of mxs section */
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

