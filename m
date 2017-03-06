Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cksOS-0004Lk-Ip
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 13:09:42 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  6 Mar 2017 14:09:15 +0100
Message-Id: <20170306130915.11253-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] scripts: imx imx-usb-loader: add support for imx23
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

imx23 is supported by mxs-usb-loader, but it makes no sense
to maintain separate tool for this. Espesially if we need some identical
functionality like usb path filtering.

This code was rewrtitten from mxs-usb-loader.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 116 +++++++++++++++++++++++++++++++++++++------
 1 file changed, 101 insertions(+), 15 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index b2c9f8f5a..dfce3c0d9 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -69,6 +69,9 @@ struct mach_id {
 #define HDR_MX53	2
 	unsigned char header_type;
 	unsigned short max_transfer;
+#define DEV_IMX		0
+#define DEV_MXS		1
+	unsigned char dev_type;
 };
 
 struct usb_work {
@@ -87,7 +90,9 @@ struct mach_id imx_ids[] = {
 		.vid = 0x066f,
 		.pid = 0x3780,
 		.name = "i.MX23",
-		.mode = MODE_BULK,
+		.mode = MODE_HID,
+		.max_transfer = 1024,
+		.dev_type = DEV_MXS,
 	}, {
 		.vid = 0x15a2,
 		.pid = 0x0030,
@@ -180,6 +185,17 @@ struct sdp_command  {
 	uint8_t rsvd;
 } __attribute__((packed));
 
+#define MXS_CMD_FW_DOWNLOAD	0x02
+struct mxs_command {
+	uint32_t	sign;		/* Signature */
+	uint32_t	tag;		/* Tag */
+	uint32_t	size;		/* Payload size */
+	uint8_t		flags;		/* Flags (host to device) */
+	uint8_t		rsvd[2];	/* Reserved */
+	uint8_t		cmd;		/* Firmware download */
+	uint32_t	dw_size;	/* Download size */
+} __attribute__((packed));
+
 static struct mach_id *imx_device(unsigned short vid, unsigned short pid)
 {
 	int i;
@@ -1343,6 +1359,72 @@ static int write_mem(const struct config_data *data, uint32_t addr,
 	return modify_memory(addr, val, width, set_bits, clear_bits);
 }
 
+/* MXS section */
+static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
+{
+	static struct mxs_command dl_command;
+	int last_trans, err;
+	unsigned char tmp[64];
+	void *p;
+	int cnt;
+
+	dl_command.sign = htonl(0x424c5443); /* Signature: BLTC */
+	dl_command.tag = htonl(0x1);
+	dl_command.size = htonl(size);
+	dl_command.flags = 0;
+	dl_command.rsvd[0] = 0;
+	dl_command.rsvd[1] = 0;
+	dl_command.cmd = MXS_CMD_FW_DOWNLOAD;
+	dl_command.dw_size = htonl(size);
+
+	err = transfer(1, (unsigned char *) &dl_command, 20, &last_trans);
+	if (err) {
+		printf("transfer error at init step: err=%i, last_trans=%i\n",
+		       err, last_trans);
+		return err;
+	}
+
+	p = data;
+	cnt = size;
+
+	while (1) {
+		int now = get_min(cnt, usb_id->mach_id->max_transfer);
+
+		if (!now)
+			break;
+
+		err = transfer(2, p, now, &now);
+		if (err) {
+			printf("dl_command err=%i, last_trans=%i\n", err, now);
+			return err;
+		}
+
+		p += now;
+		cnt -= now;
+	}
+
+	err = transfer(3, tmp, sizeof(tmp), &last_trans);
+	if (err < 0)
+		printf("transfer error at final stage: err=%i, last_trans=%i\n",
+		       err, last_trans);
+
+	return err;
+}
+
+static int mxs_work(struct usb_work *curr)
+{
+	unsigned fsize = 0;
+	unsigned char *buf = NULL;
+	int ret;
+
+	ret = read_file(curr->filename, &buf, &fsize);
+	if (ret < 0)
+		return ret;
+
+	return mxs_load_file(usb_dev_handle, buf, fsize);
+}
+/* end of mxs section */
+
 static int parse_initfile(const char *filename)
 {
 	struct config_data data = {
@@ -1452,22 +1534,26 @@ int main(int argc, char *argv[])
 
 	usb_id->mach_id = mach;
 
-	err = do_status();
-	if (err) {
-		printf("status failed\n");
-		goto out;
-	}
-
-	if (initfile) {
-		err = parse_initfile(initfile);
-		if (err)
+	if (mach->dev_type == DEV_MXS) {
+		ret = mxs_work(&w);
+	} else {
+		err = do_status();
+		if (err) {
+			printf("status failed\n");
 			goto out;
-	}
+		}
 
-	err = do_irom_download(&w, verify);
-	if (err) {
-		err = do_status();
-		goto out;
+		if (initfile) {
+			err = parse_initfile(initfile);
+			if (err)
+				goto out;
+		}
+
+		err = do_irom_download(&w, verify);
+		if (err) {
+			err = do_status();
+			goto out;
+		}
 	}
 
 	ret = 0;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
