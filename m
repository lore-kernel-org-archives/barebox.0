Delivery-date: Thu, 05 Aug 2021 17:24:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBfEO-0006Id-SS
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 17:24:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBfEN-0003wx-KT
	for lore@pengutronix.de; Thu, 05 Aug 2021 17:24:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Xkd2C7uEZQg0uetlwGTYFCK19oMMA1fuFly74q6pRM=; b=nzYp6vLoZDqVXa
	XVwrbjZCWMGIL0pZU9XONjFl369m1aJSMaL9ZaCNnZZ/QqexS/Zp83LSKxxHGw9iGoP7n3JsI9/es
	DO5C51fzv2BzyJ/EANpPRQfjJuvnhYFjIFpyAKIMXflFY8p66R/HvV62Xp+Kl4IUzRqC6dJUVWk9P
	ZH+I88gs8nQQP8RkCejWUy0U4cudJdAW4ux+QqR4LlGEGTawnf6yNmUtWKQsu37u+a8vjpOe9IQPx
	+LAj/S9ygx/sRfg3cxyZkWMPv5R3DFveYQ8a7z4hGXqH1jaHBPqxXKmJTgktYcMOWmh4jbWJzfbmB
	0QjyqpOKlhFpqTcMXI6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBfD7-00A2yq-9o; Thu, 05 Aug 2021 15:23:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBfCy-00A2w6-Nv
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 15:22:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCx-0003iv-5S; Thu, 05 Aug 2021 17:22:55 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCw-0003I6-Ln; Thu, 05 Aug 2021 17:22:54 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mBfCw-0001RV-L7; Thu, 05 Aug 2021 17:22:54 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>
Date: Thu,  5 Aug 2021 17:22:50 +0200
Message-Id: <20210805152251.1902158-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=Yj60y1I9axANHMdTHpOWNzEENoprGtJE0Qfe8YiePdA=;
 m=b1JhiGCNKwY1/aTscIwUZcKhQbpwLK5WEJFFdleTZhU=;
 p=NLYS2jmoyeqvAYj6RPjyPy9awuZLPpNwT+i4KkgNYsY=;
 g=ccc74d439524a9cc5806d39056f1a55a1d8e488a
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmEMAkIACgkQwfwUeK3K7AkdTwf/erN
 IwcdKJaFrSGWSzduuJFI1h1h5ifNwwasnFR1k3e0C9Go2UwD1brweBiXza6QffJHiHnd7+5yakAhK
 7ZMTxaF57E4fN4m5tqG7kJPE3JY5WjhIShSKf8jeQUNp9H4woEU6546jGmuV9AbBdnwchkEDGmuVz
 XG6im0cO93ozeMkB7mOamXt8pF8JsABSMXY3k4pjOCgc0x7XivRif/uETB5he90HIBNAvGyXeh0BX
 vI9VzYSH5ZOCMmqNm0pNZT/6dJ+PNm4y/rX+aamnwbqJtmQ7sDniVl/4gmbtq2xb85WwSdXk+W6CA
 gWrIkGGHeamjnO7PQZ6GT9Mi73J1ohQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_082257_011518_21388D39 
X-CRM114-Status: GOOD (  15.32  )
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
Subject: [PATCH 1/2] imx-usb-loader: Drop nearly unused struct usb_id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>

Only one of the two members of struct usb_id is actually used. So
replace struct usb_id by a struct mach_id.

Signed-off-by: Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 51 ++++++++++++------------------------
 1 file changed, 17 insertions(+), 34 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index cff77f27f264..3e96c86f2f29 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -52,7 +52,7 @@
 
 int verbose;
 static struct libusb_device_handle *usb_dev_handle;
-static struct usb_id *usb_id;
+static const struct mach_id *mach_id;
 
 struct mach_id {
 	struct mach_id * next;
@@ -79,11 +79,6 @@ struct usb_work {
 	unsigned char plug;
 };
 
-struct usb_id {
-	const struct mach_id *mach_id;
-	struct usb_work *work;
-};
-
 static const struct mach_id imx_ids[] = {
 	{
 		.vid = 0x066f,
@@ -507,8 +502,8 @@ static int read_file(const char *name, unsigned char **buffer, unsigned *size)
 static int transfer(int report, unsigned char *p, unsigned cnt, int *last_trans)
 {
 	int err;
-	if (cnt > usb_id->mach_id->max_transfer)
-		cnt = usb_id->mach_id->max_transfer;
+	if (cnt > mach_id->max_transfer)
+		cnt = mach_id->max_transfer;
 
 	if (verbose > 4) {
 		printf("report=%i\n", report);
@@ -516,7 +511,7 @@ static int transfer(int report, unsigned char *p, unsigned cnt, int *last_trans)
 			dump_bytes(p, cnt, 0);
 	}
 
-	if (usb_id->mach_id->mode == MODE_BULK) {
+	if (mach_id->mode == MODE_BULK) {
 		*last_trans = 0;
 		err = libusb_bulk_transfer(usb_dev_handle,
 					   (report < 3) ? 1 : 2 + EP_IN, p, cnt, last_trans, 1000);
@@ -602,7 +597,7 @@ static int do_status(void)
 			break;
 	}
 
-	if (usb_id->mach_id->mode == MODE_HID) {
+	if (mach_id->mode == MODE_HID) {
 		err = transfer(4, tmp, sizeof(tmp), &last_trans);
 		if (err)
 			printf("4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
@@ -810,7 +805,7 @@ static int load_file(void *buf, unsigned len, unsigned dladdr,
 
 	retry = 0;
 
-	if (usb_id->mach_id->mode == MODE_BULK) {
+	if (mach_id->mode == MODE_BULK) {
 		err = transfer(3, tmp, sizeof(tmp), &last_trans);
 		if (err)
 			printf("in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
@@ -821,7 +816,7 @@ static int load_file(void *buf, unsigned len, unsigned dladdr,
 	cnt = len;
 
 	while (1) {
-		int now = get_min(cnt, usb_id->mach_id->max_transfer);
+		int now = get_min(cnt, mach_id->max_transfer);
 
 		if (!now)
 			break;
@@ -839,7 +834,7 @@ static int load_file(void *buf, unsigned len, unsigned dladdr,
 	if (mode_barebox)
 		return transfer_size;
 
-	if (usb_id->mach_id->mode == MODE_HID) {
+	if (mach_id->mode == MODE_HID) {
 		err = transfer(3, tmp, sizeof(tmp), &last_trans);
 		if (err)
 			printf("3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
@@ -1233,7 +1228,7 @@ static int is_header(const unsigned char *p)
 	const struct imx_flash_header_v2 *hdr =
 		(const struct imx_flash_header_v2 *)p;
 
-	switch (usb_id->mach_id->header_type) {
+	switch (mach_id->header_type) {
 	case HDR_MX51:
 		if (ohdr->app_code_barker == 0xb1)
 			return 1;
@@ -1253,7 +1248,7 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 	int ret = 0;
 
-	switch (usb_id->mach_id->header_type) {
+	switch (mach_id->header_type) {
 	case HDR_MX51:
 		ret = write_dcd_table_old(ohdr, file_start, cnt);
 		ohdr->dcd_block_len = 0;
@@ -1274,7 +1269,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 		unsigned *header_addr)
 {
 	const unsigned char *file_end = file_start + cnt;
-	switch (usb_id->mach_id->header_type) {
+	switch (mach_id->header_type) {
 	case HDR_MX51:
 	{
 		struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
@@ -1315,7 +1310,7 @@ static int get_payload_start(const unsigned char *p, uint32_t *ofs)
 {
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 
-	switch (usb_id->mach_id->header_type) {
+	switch (mach_id->header_type) {
 	case HDR_MX51:
 		return -EINVAL;
 
@@ -1430,7 +1425,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 
 		memcpy(verify_buffer, image, 64);
 
-		if ((type == FT_APP) && (usb_id->mach_id->mode != MODE_HID)) {
+		if ((type == FT_APP) && (mach_id->mode != MODE_HID)) {
 			type = FT_LOAD_ONLY;
 			verify = 2;
 		}
@@ -1469,7 +1464,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		}
 	}
 
-	if (usb_id->mach_id->mode == MODE_HID && type == FT_APP) {
+	if (mach_id->mode == MODE_HID && type == FT_APP) {
 		printf("jumping to 0x%08x\n", header_addr);
 
 		ret = sdp_jump_address(header_addr);
@@ -1532,7 +1527,7 @@ static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
 	cnt = size;
 
 	while (1) {
-		int now = get_min(cnt, usb_id->mach_id->max_transfer);
+		int now = get_min(cnt, mach_id->max_transfer);
 
 		if (!now)
 			break;
@@ -1591,7 +1586,6 @@ static void usage(const char *prgname)
 
 int main(int argc, char *argv[])
 {
-	const struct mach_id *mach;
 	libusb_device **devs;
 	libusb_device *dev;
 	int r;
@@ -1663,7 +1657,7 @@ int main(int argc, char *argv[])
 		goto out;
 	}
 
-	dev = find_imx_dev(devs, &mach, devpath, devtype);
+	dev = find_imx_dev(devs, &mach_id, devpath, devtype);
 	if (!dev) {
 		fprintf(stderr, "no supported device found\n");
 		goto out;
@@ -1682,15 +1676,7 @@ int main(int argc, char *argv[])
 		goto out;
 	}
 
-	usb_id = malloc(sizeof(*usb_id));
-	if (!usb_id) {
-		perror("malloc");
-		exit(1);
-	}
-
-	usb_id->mach_id = mach;
-
-	if (mach->dev_type == DEV_MXS) {
+	if (mach_id->dev_type == DEV_MXS) {
 		ret = mxs_work(&w);
 		goto out;
 	}
@@ -1715,9 +1701,6 @@ int main(int argc, char *argv[])
 
 	ret = 0;
 out:
-	if (usb_id)
-		free(usb_id);
-
 	if (usb_dev_handle)
 		libusb_close(usb_dev_handle);
 

base-commit: 72424fd057d135ec0e41139fe4cb5740471d33a5
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

