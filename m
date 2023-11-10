Delivery-date: Fri, 10 Nov 2023 13:59:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6g-005rQy-35
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6g-000399-ON
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sdw1AN9U/gT4u1ffW9z6NSB04wu3zXeA+LO5kMvwUug=; b=NEnht+L8a5jTkvqomy7kTmswNn
	wX9N0OHUm0dgPHYs9c2bHdJdLf47RtizZJWXpK8uwhc6t4fOkKUGqWtyOZgYQzQcN6SGu2JYbTZmE
	U2o1uSJqWH6CVejneROeyeu+SYmfuxcHetq0rskEJbU/TaWxxIUx2KY8EmxCXYFcY6XOKC+Eju/6r
	chlhBJe0OzAkvEEyDmuv6jCfREvg6R3SbGriZw1pHTa+/VW/yo4YKQdUpuwJyK/8zdXaTvUoP94f2
	JIima45b0bwTXUHFmsG/MKihmdR3t12mVG+D+6qA8JNsyDQgHEgXjDanaSxBGPcYyKpb6DEKbUVwW
	UDbDWYPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5Z-008jz1-0d;
	Fri, 10 Nov 2023 12:58:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5O-008joP-0L
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00027J-SB; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-0081Xo-5O; Fri, 10 Nov 2023 13:58:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-008s2H-03;
	Fri, 10 Nov 2023 13:58:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:56 +0100
Message-Id: <20231110125800.1901232-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045810_164131_95168517 
X-CRM114-Status: GOOD (  14.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 21/25] imx-usb-loader: Add i.MX9 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

i.MX9 support is straight forward: Just upload the whole image
in one go.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index ece4603b2b..91a15345a2 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -76,6 +76,7 @@ struct mach_id {
 	unsigned short max_transfer;
 #define DEV_IMX		0
 #define DEV_MXS		1
+#define DEV_IMX9	2
 	unsigned char dev_type;
 	unsigned char hid_endpoint;
 };
@@ -214,6 +215,14 @@ static const struct mach_id imx_ids[] = {
 		.header_type = HDR_MX53,
 		.mode = MODE_HID,
 		.max_transfer = 1024,
+	}, {
+		.vid = 0x1fc9,
+		.pid = 0x014e,
+		.name = "i.MX9",
+		.mode = MODE_HID,
+		.max_transfer = 1020,
+		.hid_endpoint = 1,
+		.dev_type = DEV_IMX9,
 	},
 };
 
@@ -1350,6 +1359,23 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 	return -ENODEV;
 }
 
+static int imx9_load_file(struct usb_work *curr)
+{
+	void *buf;
+	size_t fsize = 0;
+	int ret;
+
+	buf = read_file(curr->filename, &fsize);
+	if (!buf)
+		return -errno;
+
+	ret = send_buf(buf, fsize);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
 static int do_irom_download(struct usb_work *curr, int verify)
 {
 	int ret;
@@ -1649,6 +1675,9 @@ int main(int argc, char *argv[])
 	if (mach_id->dev_type == DEV_MXS) {
 		ret = mxs_load_file(&w);
 		goto out;
+	} else if (mach_id->dev_type == DEV_IMX9) {
+		ret = imx9_load_file(&w);
+		goto out;
 	}
 
 	if (!mach_id->hid_endpoint) {
-- 
2.39.2



