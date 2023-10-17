Delivery-date: Tue, 17 Oct 2023 23:37:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrks-00CDJz-2Z
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 23:37:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrkq-0008JM-Bi
	for lore@pengutronix.de; Tue, 17 Oct 2023 23:37:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cx63SPkRLoInTgZxzb9c6f+QDtA+HoURK/0SQOZs7Sk=; b=DWXlupZU75jC5MyxTeqLmP6r13
	lUeFCgfKlLdTSpGcXOdM+ja0vupwHRd1fG0HR7gWqrmjJtvliv3VttKgz+iDbtCoOXR3zndcbKNNS
	l/vQ3OUpLzECAp8expAB7zC4ziVuQSo8SfqB7w3LIhgj7JCie5s6Dg3Rof9n2UhAzjXc01T7x+ASa
	WIEwglNQt6beHSA8211iuVLQTUBDEL4P6TiG9DqzzEvF1az6uW1KBfqwE5T0nSBuAsGFOXxds6S52
	q2qOdPEuVfNF2yA9q1uOv1w3ypcHoLtlMQmkueRQBbSyP2KpezRYPjqXJzyrmeW70tev2EGE70ZJI
	nU4pAxWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrjg-00DJCO-2o;
	Tue, 17 Oct 2023 21:36:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrja-00DJA8-0W
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 21:36:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-0007wR-Uo
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-002PIa-IJ
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-00Ef1u-1c
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 23:36:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 23:36:08 +0200
Message-Id: <20231017213608.3494255-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017213608.3494255-1-m.felsch@pengutronix.de>
References: <20231017213608.3494255-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_143614_205338_BFC61FF6 
X-CRM114-Status: GOOD (  17.23  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] imx-usb-loader: fix windows usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports commit 561f0377db5e ("Transfer always specified report 2
length") from imx_usb_loader[1] to our implementation.

| commit 561f0377db5e1a36f5ab5e17f97d774f9f1e22ab
| Author: Stefan Agner <stefan.agner@toradex.com>
| Date:   Wed Nov 2 16:51:24 2016 -0700
|
|     Transfer always specified report 2 length
|
|     The Windows HIDAPI is very strict when it comes to packet lengths:
|     The API always expect the length specified by the device and rejects
|     the transfer otherwise. The report size is specified by the HID
|     Report Descriptor. The i.MX 6 SoC reports a report 2 size of 1024.
|     Currently, imx_usb reads the length from the device specific config
|     files and stores it in max_transfer. This change uses max_transfer
|     for report 2 when using the HID API.
|
|     The boot ROM handles too long transfers just fine. Also NXP's
|     sb_loader transfers always complete reports. The change has been
|     successfully tested on Linux and Windows.
|
|     Given that the device reports the size, it is probably also "the
|     right thing to do"...
|
|     With that change, we might end up transferring up to 1023 bytes
|     more than actually necessary. Make sure that DoIRomDownload does
|     not print an error message and returns successfully even if too
|     many bytes have been transferred (this now typically happens at the
|     end of every file).
|
|     In write_dcd use a signed length variable to keep track of remaining
|     bytes. Continue transfer loop only if more than 0 bytes are left to
|     transfer. Also drop the m_ prefix, m_ is usually used for member
|     variables but this is a local variable.
|
|     Signed-off-by: Stefan Agner <stefan.agner@toradex.com>

[1] https://github.com/boundarydevices/imx_usb_loader/commit/561f0377db5e1a36f5ab5e17f97d774f9f1e22ab

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 676f077c25..ece4603b2b 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -484,12 +484,16 @@ static int transfer(int report, void *p, unsigned cnt, int *last_trans)
 		err = libusb_bulk_transfer(usb_dev_handle,
 					   (report < 3) ? 1 : 2 + EP_IN, p, cnt, last_trans, 1000);
 	} else {
-		unsigned char tmp[1028];
+		unsigned char tmp[1028] = { 0 };
 
 		tmp[0] = (unsigned char)report;
 
 		if (report < 3) {
 			memcpy(&tmp[1], p, cnt);
+
+			if (report == 2)
+				cnt = mach_id->max_transfer;
+
 			if (mach_id->hid_endpoint) {
 				int trans;
 				err = libusb_interrupt_transfer(usb_dev_handle,
@@ -739,7 +743,7 @@ static int send_buf(void *buf, unsigned len)
 	while (1) {
 		int now = get_min(cnt, mach_id->max_transfer);
 
-		if (!now)
+		if (now <= 0)
 			break;
 
 		err = transfer(2, p, now, &now);
-- 
2.41.0



