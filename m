Delivery-date: Thu, 14 Jul 2022 09:29:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtI5-007JcN-OB
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtI2-0002Tv-70
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z2aHNJDP+M+cN7V7S6piJku02hoc9kdVajIAnHq6gfw=; b=wOEfyyS8DcHLo4abNp0yTZsHzi
	ZSP0XI0sVVySKkCpI61GptlMHBrvVzxzARFvjnA+JVZx9Sbjt9twYQh1ZSb/u8aEOhVJn5kNU+rh5
	j/G+EA7yIocMumgnp+rEsUC93xY5agpwUa1xzGHNBsdoCwIJatb3JUSgRlzcyHbnRiAwgbAN1LGfJ
	wgXEXYdhr3+ynsv2s+GwGReKSzUy5M/5D0yUJypoVB0ZlhajCjJWH5jgqWJiut60XKhjXw9SFDFyV
	+DT0F1dxBx4FuNEM24tN2NOvD68IgmlFHWQGyWv1qgm5a4P6toqMT7R/wknIX0CzeTjyTnWeWVPhA
	H4PiUHDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGd-00Bp2t-C8; Thu, 14 Jul 2022 07:28:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFy-00BoVa-4W
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFu-0001gV-8U; Thu, 14 Jul 2022 09:27:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-000rqd-Gx; Thu, 14 Jul 2022 09:27:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vp-BU; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:15 +0200
Message-Id: <20220714072722.2863571-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_367439_8277E3AF 
X-CRM114-Status: GOOD (  13.85  )
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
Subject: [PATCH 05/12] imx-usb-loader: Factor out common code to function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code to send a buffer straight to an endpoint is implemented twice.
Factor out the code to an extra function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 69 +++++++++++++++---------------------
 1 file changed, 29 insertions(+), 40 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 69df9bbe92..1d19ea0a81 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -713,6 +713,31 @@ static int modify_memory(unsigned addr, unsigned val, int width, int set_bits, i
 	return write_memory(addr, val, 4);
 }
 
+static int send_buf(void *buf, unsigned len)
+{
+	void *p = buf;
+	int cnt = len;
+	int err;
+
+	while (1) {
+		int now = get_min(cnt, mach_id->max_transfer);
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
+	return 0;
+}
+
 static int load_file(void *buf, unsigned len, unsigned dladdr,
 		     unsigned char type, bool mode_barebox)
 {
@@ -729,8 +754,6 @@ static int load_file(void *buf, unsigned len, unsigned dladdr,
 	int retry = 0;
 	unsigned transfer_size = 0;
 	unsigned char tmp[64];
-	void *p;
-	int cnt;
 
 	len = ALIGN(len, 4);
 
@@ -760,24 +783,9 @@ static int load_file(void *buf, unsigned len, unsigned dladdr,
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
 	}
 
-	p = buf;
-	cnt = len;
-
-	while (1) {
-		int now = get_min(cnt, mach_id->max_transfer);
-
-		if (!now)
-			break;
-
-		err = transfer(2, p, now, &now);
-		if (err) {
-			printf("dl_command err=%i, last_trans=%i\n", err, last_trans);
-			return err;
-		}
-
-		p += now;
-		cnt -= now;
-	}
+	err = send_buf(buf, len);
+	if (err)
+		return err;
 
 	if (mode_barebox)
 		return transfer_size;
@@ -1447,8 +1455,6 @@ static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
 {
 	static struct mxs_command dl_command;
 	int last_trans, err;
-	void *p;
-	int cnt;
 
 	dl_command.sign = htonl(0x424c5443); /* Signature: BLTC */
 	dl_command.tag = htonl(0x1);
@@ -1466,24 +1472,7 @@ static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
 		return err;
 	}
 
-	p = data;
-	cnt = size;
-
-	while (1) {
-		int now = get_min(cnt, mach_id->max_transfer);
-
-		if (!now)
-			break;
-
-		err = transfer(2, p, now, &now);
-		if (err) {
-			printf("dl_command err=%i, last_trans=%i\n", err, now);
-			return err;
-		}
-
-		p += now;
-		cnt -= now;
-	}
+	err = send_buf(data, size);
 
 	return err;
 }
-- 
2.30.2



