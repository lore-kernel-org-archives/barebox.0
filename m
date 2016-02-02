Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG1-0002Pr-Fv
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:49:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:02 +0100
Message-Id: <1454424497-7157-20-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/34] scripts: imx: make libusb variables global
To: Barebox List <barebox@lists.infradead.org>

No need to pass the libusb context through from function to function.
Make them globally visible.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 172 ++++++++++++++++++++-----------------------
 1 file changed, 81 insertions(+), 91 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index a398386..40a7200 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -44,6 +44,8 @@
 #define FT_LOAD_ONLY	0x00
 
 int verbose;
+static struct libusb_device_handle *usb_dev_handle;
+static struct usb_id *usb_id;
 
 struct mach_id {
 	struct mach_id * next;
@@ -301,12 +303,11 @@ static long get_file_size(FILE *xfile)
  * EP2IN - bulk in
  * (max packet size of 512 bytes)
  */
-static int transfer(struct libusb_device_handle *h, int report, unsigned char *p, unsigned cnt,
-		int* last_trans, struct usb_id *p_id)
+static int transfer(int report, unsigned char *p, unsigned cnt, int *last_trans)
 {
 	int err;
-	if (cnt > p_id->mach_id->max_transfer)
-		cnt = p_id->mach_id->max_transfer;
+	if (cnt > usb_id->mach_id->max_transfer)
+		cnt = usb_id->mach_id->max_transfer;
 
 	if (verbose > 4) {
 		printf("report=%i\n", report);
@@ -314,9 +315,10 @@ static int transfer(struct libusb_device_handle *h, int report, unsigned char *p
 			dump_bytes(p, cnt, 0);
 	}
 
-	if (p_id->mach_id->mode == MODE_BULK) {
+	if (usb_id->mach_id->mode == MODE_BULK) {
 		*last_trans = 0;
-		err = libusb_bulk_transfer(h, (report < 3) ? 1 : 2 + EP_IN, p, cnt, last_trans, 1000);
+		err = libusb_bulk_transfer(usb_dev_handle,
+					   (report < 3) ? 1 : 2 + EP_IN, p, cnt, last_trans, 1000);
 	} else {
 		unsigned char tmp[1028];
 
@@ -324,7 +326,7 @@ static int transfer(struct libusb_device_handle *h, int report, unsigned char *p
 
 		if (report < 3) {
 			memcpy(&tmp[1], p, cnt);
-			err = libusb_control_transfer(h,
+			err = libusb_control_transfer(usb_dev_handle,
 					CTRL_OUT,
 					HID_SET_REPORT,
 					(HID_REPORT_TYPE_OUTPUT << 8) | report,
@@ -336,7 +338,8 @@ static int transfer(struct libusb_device_handle *h, int report, unsigned char *p
 		} else {
 			*last_trans = 0;
 			memset(&tmp[1], 0, cnt);
-			err = libusb_interrupt_transfer(h, 1 + EP_IN, tmp, cnt + 1, last_trans, 1000);
+			err = libusb_interrupt_transfer(usb_dev_handle,
+							1 + EP_IN, tmp, cnt + 1, last_trans, 1000);
 			if (err >= 0) {
 				if (tmp[0] == (unsigned char)report) {
 					if (*last_trans > 1) {
@@ -358,7 +361,7 @@ static int transfer(struct libusb_device_handle *h, int report, unsigned char *p
 	return err;
 }
 
-int do_status(libusb_device_handle *h, struct usb_id *p_id)
+int do_status(void)
 {
 	int last_trans;
 	unsigned char tmp[64];
@@ -373,14 +376,14 @@ int do_status(libusb_device_handle *h, struct usb_id *p_id)
 	};
 
 	for (;;) {
-		err = transfer(h, 1, (unsigned char*)status_command, 16, &last_trans, p_id);
+		err = transfer(1, (unsigned char*)status_command, 16, &last_trans);
 
 		if (verbose > 2)
 			printf("report 1, wrote %i bytes, err=%i\n", last_trans, err);
 
 		memset(tmp, 0, sizeof(tmp));
 
-		err = transfer(h, 3, tmp, 64, &last_trans, p_id);
+		err = transfer(3, tmp, 64, &last_trans);
 
 		if (verbose > 2) {
 			printf("report 3, read %i bytes, err=%i\n", last_trans, err);
@@ -396,8 +399,8 @@ int do_status(libusb_device_handle *h, struct usb_id *p_id)
 			break;
 	}
 
-	if (p_id->mach_id->mode == MODE_HID) {
-		err = transfer(h, 4, tmp, sizeof(tmp), &last_trans, p_id);
+	if (usb_id->mach_id->mode == MODE_HID) {
+		err = transfer(4, tmp, sizeof(tmp), &last_trans);
 		if (err)
 			printf("4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
@@ -408,8 +411,7 @@ int do_status(libusb_device_handle *h, struct usb_id *p_id)
 
 #define V(a) (((a) >> 24) & 0xff), (((a) >> 16) & 0xff), (((a) >> 8) & 0xff), ((a) & 0xff)
 
-static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
-		unsigned addr, unsigned char *dest, unsigned cnt)
+static int read_memory(unsigned addr, unsigned char *dest, unsigned cnt)
 {
 	static unsigned char read_reg_command[] = {
 		1,
@@ -437,7 +439,7 @@ static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 	read_reg_command[10] = (unsigned char)(cnt);
 
 	for (;;) {
-		err = transfer(h, 1, read_reg_command, 16, &last_trans, p_id);
+		err = transfer(1, read_reg_command, 16, &last_trans);
 		if (!err)
 			break;
 		printf("read_reg_command err=%i, last_trans=%i\n", err, last_trans);
@@ -447,7 +449,7 @@ static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 		retry++;
 	}
 
-	err = transfer(h, 3, tmp, 4, &last_trans, p_id);
+	err = transfer(3, tmp, 4, &last_trans);
 	if (err) {
 		printf("r3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
 				err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
@@ -458,7 +460,7 @@ static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 
 	while (rem) {
 		tmp[0] = tmp[1] = tmp[2] = tmp[3] = 0;
-		err = transfer(h, 4, tmp, 64, &last_trans, p_id);
+		err = transfer(4, tmp, 64, &last_trans);
 		if (err) {
 			printf("r4 in err=%i, last_trans=%i  %02x %02x %02x %02x cnt=%u rem=%d\n",
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3], cnt, rem);
@@ -482,8 +484,7 @@ static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 	return err;
 }
 
-static int write_memory(struct libusb_device_handle *h, struct usb_id *p_id,
-		unsigned addr, unsigned val, int width)
+static int write_memory(unsigned addr, unsigned val, int width)
 {
 	int retry = 0;
 	int last_trans;
@@ -526,7 +527,7 @@ static int write_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 	write_reg_command[14] = (unsigned char)(val);
 
 	for (;;) {
-		err = transfer(h, 1, write_reg_command, 16, &last_trans, p_id);
+		err = transfer(1, write_reg_command, 16, &last_trans);
 		if (!err)
 			break;
 		printf("write_reg_command err=%i, last_trans=%i\n", err, last_trans);
@@ -538,7 +539,7 @@ static int write_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 
 	memset(tmp, 0, sizeof(tmp));
 
-	err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+	err = transfer(3, tmp, sizeof(tmp), &last_trans);
 	if (err) {
 		printf("w3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
 				err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
@@ -547,15 +548,14 @@ static int write_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 
 	memset(tmp, 0, sizeof(tmp));
 
-	err = transfer(h, 4, tmp, sizeof(tmp), &last_trans, p_id);
+	err = transfer(4, tmp, sizeof(tmp), &last_trans);
 	if (err)
 		printf("w4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
 				err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
 	return err;
 }
 
-static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
-		void *buf, unsigned len, unsigned dladdr, unsigned char type)
+static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char type)
 {
 	static unsigned char dl_command[] = {
 		0x04,
@@ -585,7 +585,7 @@ static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
 	dl_command[15] =  type;
 
 	for (;;) {
-		err = transfer(h, 1, dl_command, 16, &last_trans, p_id);
+		err = transfer(1, dl_command, 16, &last_trans);
 		if (!err)
 			break;
 
@@ -598,8 +598,8 @@ static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
 
 	retry = 0;
 
-	if (p_id->mach_id->mode == MODE_BULK) {
-		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+	if (usb_id->mach_id->mode == MODE_BULK) {
+		err = transfer(3, tmp, sizeof(tmp), &last_trans);
 		if (err)
 			printf("in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
@@ -609,12 +609,12 @@ static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
 	cnt = len;
 
 	while (1) {
-		int now = get_min(cnt, p_id->mach_id->max_transfer);
+		int now = get_min(cnt, usb_id->mach_id->max_transfer);
 
 		if (!now)
 			break;
 
-		err = transfer(h, 2, p, now, &now, p_id);
+		err = transfer(2, p, now, &now);
 		if (err) {
 			printf("dl_command err=%i, last_trans=%i\n", err, last_trans);
 			return err;
@@ -624,24 +624,23 @@ static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
 		cnt -= now;
 	}
 
-	if (p_id->mach_id->mode == MODE_HID) {
-		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+	if (usb_id->mach_id->mode == MODE_HID) {
+		err = transfer(3, tmp, sizeof(tmp), &last_trans);
 		if (err)
 			printf("3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
-		err = transfer(h, 4, tmp, sizeof(tmp), &last_trans, p_id);
+		err = transfer(4, tmp, sizeof(tmp), &last_trans);
 		if (err)
 			printf("4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
 	} else {
-		do_status(h, p_id);
+		do_status();
 	}
 
 	return transfer_size;
 }
 
-static int write_dcd_table_ivt(struct libusb_device_handle *h, struct usb_id *p_id,
-		struct imx_flash_header_v2 *hdr, unsigned char *file_start, unsigned cnt)
+static int write_dcd_table_ivt(struct imx_flash_header_v2 *hdr, unsigned char *file_start, unsigned cnt)
 {
 	unsigned char *dcd_end;
 	unsigned m_length;
@@ -703,7 +702,7 @@ static int write_dcd_table_ivt(struct libusb_device_handle *h, struct usb_id *p_
 			unsigned val = (dcd[4] << 24) | (dcd[5] << 16) | (dcd[6] << 8) | dcd[7];
 
 			dcd += 8;
-			err = write_memory(h, p_id, addr, val, 4);
+			err = write_memory(addr, val, 4);
 			if (err < 0)
 				return err;
 		}
@@ -758,8 +757,7 @@ static int get_dcd_range_old(struct imx_flash_header *hdr,
 	return 0;
 }
 
-static int write_dcd_table_old(struct libusb_device_handle *h, struct usb_id *p_id,
-		struct imx_flash_header *hdr, unsigned char *file_start, unsigned cnt)
+static int write_dcd_table_old(struct imx_flash_header *hdr, unsigned char *file_start, unsigned cnt)
 {
 	unsigned val;
 	unsigned char *dcd_end;
@@ -780,14 +778,14 @@ static int write_dcd_table_old(struct libusb_device_handle *h, struct usb_id *p_
 		case 1:
 			if (verbose > 1)
 				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
-			err = write_memory(h, p_id, addr, val, 1);
+			err = write_memory(addr, val, 1);
 			if (err < 0)
 				return err;
 			break;
 		case 4:
 			if (verbose > 1)
 				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
-			err = write_memory(h, p_id, addr, val, 4);
+			err = write_memory(addr, val, 4);
 			if (err < 0)
 				return err;
 			break;
@@ -804,8 +802,7 @@ static int write_dcd_table_old(struct libusb_device_handle *h, struct usb_id *p_
 	return err;
 }
 
-static int verify_memory(struct libusb_device_handle *h, struct usb_id *p_id,
-			 const void *buf, unsigned len, unsigned addr)
+static int verify_memory(const void *buf, unsigned len, unsigned addr)
 {
 	int ret, mismatch = 0;
 	void *readbuf;
@@ -815,7 +812,7 @@ static int verify_memory(struct libusb_device_handle *h, struct usb_id *p_id,
 	if (!readbuf)
 		return -ENOMEM;
 
-	ret = read_memory(h, p_id, addr, readbuf, len);
+	ret = read_memory(addr, readbuf, len);
 	if (ret < 0)
 		goto err;
 
@@ -843,12 +840,12 @@ err:
 	return ret;
 }
 
-static int is_header(struct usb_id *p_id, unsigned char *p)
+static int is_header(unsigned char *p)
 {
 	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 
-	switch (p_id->mach_id->header_type) {
+	switch (usb_id->mach_id->header_type) {
 	case HDR_MX51:
 		if (ohdr->app_code_barker == 0xb1)
 			return 1;
@@ -861,21 +858,20 @@ static int is_header(struct usb_id *p_id, unsigned char *p)
 	return 0;
 }
 
-static int perform_dcd(struct libusb_device_handle *h, struct usb_id *p_id, unsigned char *p,
-		unsigned char *file_start, unsigned cnt)
+static int perform_dcd(unsigned char *p, unsigned char *file_start, unsigned cnt)
 {
 	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 	int ret = 0;
 
-	switch (p_id->mach_id->header_type) {
+	switch (usb_id->mach_id->header_type) {
 	case HDR_MX51:
-		ret = write_dcd_table_old(h, p_id, ohdr, file_start, cnt);
+		ret = write_dcd_table_old(ohdr, file_start, cnt);
 		ohdr->dcd = 0;
 
 		break;
 	case HDR_MX53:
-		ret = write_dcd_table_ivt(h, p_id, hdr, file_start, cnt);
+		ret = write_dcd_table_ivt(hdr, file_start, cnt);
 		hdr->dcd_ptr = 0;
 
 		break;
@@ -884,13 +880,12 @@ static int perform_dcd(struct libusb_device_handle *h, struct usb_id *p_id, unsi
 	return ret;
 }
 
-static int clear_dcd_ptr(struct libusb_device_handle *h, struct usb_id *p_id,
-		unsigned char *p, unsigned char *file_start, unsigned cnt)
+static int clear_dcd_ptr(unsigned char *p, unsigned char *file_start, unsigned cnt)
 {
 	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 
-	switch (p_id->mach_id->header_type) {
+	switch (usb_id->mach_id->header_type) {
 	case HDR_MX51:
 		printf("clear dcd_ptr=0x%08x\n", ohdr->dcd);
 		ohdr->dcd = 0;
@@ -903,12 +898,12 @@ static int clear_dcd_ptr(struct libusb_device_handle *h, struct usb_id *p_id,
 	return 0;
 }
 
-static int get_dl_start(struct usb_id *p_id, unsigned char *p, unsigned char *file_start,
+static int get_dl_start(unsigned char *p, unsigned char *file_start,
 		unsigned cnt, unsigned *dladdr, unsigned *max_length, unsigned *plugin,
 		unsigned *header_addr)
 {
 	unsigned char* file_end = file_start + cnt;
-	switch (p_id->mach_id->header_type) {
+	switch (usb_id->mach_id->header_type) {
 	case HDR_MX51:
 	{
 		struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
@@ -950,8 +945,7 @@ static int get_dl_start(struct usb_id *p_id, unsigned char *p, unsigned char *fi
 	return 0;
 }
 
-static int process_header(struct libusb_device_handle *h, struct usb_id *p_id,
-		struct usb_work *curr, unsigned char *buf, int cnt,
+static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 		unsigned *p_dladdr, unsigned *p_max_length, unsigned *p_plugin,
 		unsigned *p_header_addr)
 {
@@ -964,17 +958,17 @@ static int process_header(struct libusb_device_handle *h, struct usb_id *p_id,
 
 	for (header_offset = 0; header_offset < header_max; header_offset += header_inc, p += header_inc) {
 
-		if (!is_header(p_id, p))
+		if (!is_header(p))
 			continue;
 
-		ret = get_dl_start(p_id, p, buf, cnt, p_dladdr, p_max_length, p_plugin, p_header_addr);
+		ret = get_dl_start(p, buf, cnt, p_dladdr, p_max_length, p_plugin, p_header_addr);
 		if (ret < 0) {
 			printf("!!get_dl_start returned %i\n", ret);
 			return ret;
 		}
 
 		if (curr->dcd) {
-			ret = perform_dcd(h, p_id, p, buf, cnt);
+			ret = perform_dcd(p, buf, cnt);
 			if (ret < 0) {
 				printf("!!perform_dcd returned %i\n", ret);
 				return ret;
@@ -987,7 +981,7 @@ static int process_header(struct libusb_device_handle *h, struct usb_id *p_id,
 		}
 
 		if (curr->clear_dcd) {
-			ret = clear_dcd_ptr(h, p_id, p, buf, cnt);
+			ret = clear_dcd_ptr(p, buf, cnt);
 			if (ret < 0) {
 				printf("!!clear_dcd returned %i\n", ret);
 				return ret;
@@ -1013,8 +1007,7 @@ static int process_header(struct libusb_device_handle *h, struct usb_id *p_id,
 	return -ENODEV;
 }
 
-static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
-		struct usb_work *curr, int verify)
+static int do_irom_download(struct usb_work *curr, int verify)
 {
 	static unsigned char jump_command[] = {0x0b,0x0b, V(0),  0x00, V(0x00000000), V(0), 0x00};
 
@@ -1067,7 +1060,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 
 	max_length = fsize;
 
-	ret = process_header(h, p_id, curr, buf, cnt,
+	ret = process_header(curr, buf, cnt,
 			&dladdr, &max_length, &plugin, &header_addr);
 	if (ret < 0)
 		goto cleanup;
@@ -1096,7 +1089,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 
 	type = (curr->plug || curr->jump_mode) ? FT_APP : FT_LOAD_ONLY;
 
-	if (p_id->mach_id->mode == MODE_BULK && type == FT_APP) {
+	if (usb_id->mach_id->mode == MODE_BULK && type == FT_APP) {
 		/* No jump command, dladdr should point to header */
 		dladdr = header_addr;
 	}
@@ -1128,7 +1121,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 
 		memcpy(verify_buffer, p, 64);
 
-		if ((type == FT_APP) && (p_id->mach_id->mode != MODE_HID)) {
+		if ((type == FT_APP) && (usb_id->mach_id->mode != MODE_HID)) {
 			type = FT_LOAD_ONLY;
 			verify = 2;
 		}
@@ -1137,7 +1130,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 	printf("loading binary file(%s) to %08x, skip=0x%x, fsize=%u type=%d...\n",
 			curr->filename, dladdr, skip, fsize, type);
 
-	ret = load_file(h, p_id, image, fsize, dladdr, type);
+	ret = load_file(image, fsize, dladdr, type);
 	if (ret < 0)
 		goto cleanup;
 
@@ -1146,7 +1139,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 	if (verify) {
 		printf("verifying file...\n");
 
-		ret = verify_memory(h, p_id, image, fsize, dladdr);
+		ret = verify_memory(image, fsize, dladdr);
 		if (ret < 0) {
 			printf("verifying failed\n");
 			goto cleanup;
@@ -1160,15 +1153,14 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 			 * so we load part of the image again with type FT_APP
 			 * this time.
 			 */
-			ret = load_file(h, p_id, verify_buffer, 64,
-					dladdr, FT_APP);
+			ret = load_file(verify_buffer, 64, dladdr, FT_APP);
 			if (ret < 0)
 				goto cleanup;
 
 		}
 	}
 
-	if (p_id->mach_id->mode == MODE_HID && type == FT_APP) {
+	if (usb_id->mach_id->mode == MODE_HID && type == FT_APP) {
 		printf("jumping to 0x%08x\n", header_addr);
 
 		jump_command[2] = (unsigned char)(header_addr >> 24);
@@ -1180,7 +1172,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 		retry = 0;
 
 		for (;;) {
-			err = transfer(h, 1, jump_command, 16, &last_trans, p_id);
+			err = transfer(1, jump_command, 16, &last_trans);
 			if (!err)
 				break;
 
@@ -1193,7 +1185,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 		}
 
 		memset(tmp, 0, sizeof(tmp));
-		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+		err = transfer(3, tmp, sizeof(tmp), &last_trans);
 
 		if (err)
 			printf("j3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
@@ -1220,7 +1212,6 @@ static void usage(const char *prgname)
 
 int main(int argc, char *argv[])
 {
-	struct usb_id *p_id = NULL;
 	struct mach_id *mach;
 	libusb_device **devs;
 	libusb_device *dev;
@@ -1228,7 +1219,6 @@ int main(int argc, char *argv[])
 	int err;
 	int ret = 1;
 	ssize_t cnt;
-	libusb_device_handle *h = NULL;
 	int config = 0;
 	int verify = 0;
 	struct usb_work w = {};
@@ -1276,7 +1266,7 @@ int main(int argc, char *argv[])
 		goto out;
 	}
 
-	err = libusb_open(dev, &h);
+	err = libusb_open(dev, &usb_dev_handle);
 	if (err) {
 		fprintf(stderr, "Could not open device vid=0x%x pid=0x%x err=%d\n",
 				mach->vid, mach->pid, err);
@@ -1285,44 +1275,44 @@ int main(int argc, char *argv[])
 
 	libusb_free_device_list(devs, 1);
 
-	libusb_get_configuration(h, &config);
+	libusb_get_configuration(usb_dev_handle, &config);
 
-	if (libusb_kernel_driver_active(h, 0))
-		 libusb_detach_kernel_driver(h, 0);
+	if (libusb_kernel_driver_active(usb_dev_handle, 0))
+		 libusb_detach_kernel_driver(usb_dev_handle, 0);
 
-	err = libusb_claim_interface(h, 0);
+	err = libusb_claim_interface(usb_dev_handle, 0);
 	if (err) {
 		printf("Claim failed\n");
 		goto out;
 	}
 
-	p_id = malloc(sizeof(*p_id));
-	if (!p_id) {
+	usb_id = malloc(sizeof(*usb_id));
+	if (!usb_id) {
 		perror("malloc");
 		exit(1);
 	}
 
-	p_id->mach_id = mach;
+	usb_id->mach_id = mach;
 
-	err = do_status(h, p_id);
+	err = do_status();
 	if (err) {
 		printf("status failed\n");
 		goto out;
 	}
 
-	err = do_irom_download(h, p_id, &w, verify);
+	err = do_irom_download(&w, verify);
 	if (err) {
-		err = do_status(h, p_id);
+		err = do_status();
 		goto out;
 	}
 
 	ret = 0;
 out:
-	if (p_id)
-		free(p_id);
+	if (usb_id)
+		free(usb_id);
 
-	if (h)
-		libusb_close(h);
+	if (usb_dev_handle)
+		libusb_close(usb_dev_handle);
 
 	libusb_exit(NULL);
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
