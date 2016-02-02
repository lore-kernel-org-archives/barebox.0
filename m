Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Pm-VF
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:56 +0100
Message-Id: <1454424497-7157-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/34] scripts: imx-usb-loader: Move load_file up
To: Barebox List <barebox@lists.infradead.org>

To avoid forward declaration in a later patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 172 +++++++++++++++++++++----------------------
 1 file changed, 86 insertions(+), 86 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index d3de05f..dae49a1 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -585,6 +585,92 @@ static int write_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 	return err;
 }
 
+static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
+		void *buf, unsigned len, unsigned dladdr, unsigned char type)
+{
+	static unsigned char dl_command[] = {
+		0x04,
+		0x04,
+		V(0),		/* address */
+		0x00,		/* format */
+		V(0x00000020),	/* data count */
+		V(0),		/* data */
+		0xaa,		/* type */
+	};
+	int last_trans, err;
+	int retry = 0;
+	unsigned transfer_size = 0;
+	unsigned char tmp[64];
+	void *p;
+	int cnt;
+
+	dl_command[2] = (unsigned char)(dladdr >> 24);
+	dl_command[3] = (unsigned char)(dladdr >> 16);
+	dl_command[4] = (unsigned char)(dladdr >> 8);
+	dl_command[5] = (unsigned char)(dladdr);
+
+	dl_command[7] = (unsigned char)(len >> 24);
+	dl_command[8] = (unsigned char)(len >> 16);
+	dl_command[9] = (unsigned char)(len >> 8);
+	dl_command[10] = (unsigned char)(len);
+	dl_command[15] =  type;
+
+	for (;;) {
+		err = transfer(h, 1, dl_command, 16, &last_trans, p_id);
+		if (!err)
+			break;
+
+		printf("dl_command err=%i, last_trans=%i\n", err, last_trans);
+
+		if (retry > 5)
+			return -4;
+		retry++;
+	}
+
+	retry = 0;
+
+	if (p_id->mach_id->mode == MODE_BULK) {
+		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+		if (err)
+			printf("in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+	}
+
+	p = buf;
+	cnt = len;
+
+	while (1) {
+		int now = get_min(cnt, p_id->mach_id->max_transfer);
+
+		if (!now)
+			break;
+
+		err = transfer(h, 2, p, now, &now, p_id);
+		if (err) {
+			printf("dl_command err=%i, last_trans=%i\n", err, last_trans);
+			return err;
+		}
+
+		p += now;
+		cnt -= now;
+	}
+
+	if (p_id->mach_id->mode == MODE_HID) {
+		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+		if (err)
+			printf("3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+		err = transfer(h, 4, tmp, sizeof(tmp), &last_trans, p_id);
+		if (err)
+			printf("4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+	} else {
+		do_status(h, p_id);
+	}
+
+	return transfer_size;
+}
+
 static int write_dcd_table_ivt(struct libusb_device_handle *h, struct usb_id *p_id,
 		struct imx_flash_header_v2 *hdr, unsigned char *file_start, unsigned cnt)
 {
@@ -958,92 +1044,6 @@ static int process_header(struct libusb_device_handle *h, struct usb_id *p_id,
 	return -ENODEV;
 }
 
-static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
-		void *buf, unsigned len, unsigned dladdr, unsigned char type)
-{
-	static unsigned char dl_command[] = {
-		0x04,
-		0x04,
-		V(0),		/* address */
-		0x00,		/* format */
-		V(0x00000020),	/* data count */
-		V(0),		/* data */
-		0xaa,		/* type */
-	};
-	int last_trans, err;
-	int retry = 0;
-	unsigned transfer_size = 0;
-	unsigned char tmp[64];
-	void *p;
-	int cnt;
-
-	dl_command[2] = (unsigned char)(dladdr >> 24);
-	dl_command[3] = (unsigned char)(dladdr >> 16);
-	dl_command[4] = (unsigned char)(dladdr >> 8);
-	dl_command[5] = (unsigned char)(dladdr);
-
-	dl_command[7] = (unsigned char)(len >> 24);
-	dl_command[8] = (unsigned char)(len >> 16);
-	dl_command[9] = (unsigned char)(len >> 8);
-	dl_command[10] = (unsigned char)(len);
-	dl_command[15] =  type;
-
-	for (;;) {
-		err = transfer(h, 1, dl_command, 16, &last_trans, p_id);
-		if (!err)
-			break;
-
-		printf("dl_command err=%i, last_trans=%i\n", err, last_trans);
-
-		if (retry > 5)
-			return -4;
-		retry++;
-	}
-
-	retry = 0;
-
-	if (p_id->mach_id->mode == MODE_BULK) {
-		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
-		if (err)
-			printf("in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
-					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
-	}
-
-	p = buf;
-	cnt = len;
-
-	while (1) {
-		int now = get_min(cnt, p_id->mach_id->max_transfer);
-
-		if (!now)
-			break;
-
-		err = transfer(h, 2, p, now, &now, p_id);
-		if (err) {
-			printf("dl_command err=%i, last_trans=%i\n", err, last_trans);
-			return err;
-		}
-
-		p += now;
-		cnt -= now;
-	}
-
-	if (p_id->mach_id->mode == MODE_HID) {
-		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
-		if (err)
-			printf("3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
-					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
-		err = transfer(h, 4, tmp, sizeof(tmp), &last_trans, p_id);
-		if (err)
-			printf("4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
-					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
-	} else {
-		do_status(h, p_id);
-	}
-
-	return transfer_size;
-}
-
 static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 		struct usb_work *curr, int verify)
 {
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
