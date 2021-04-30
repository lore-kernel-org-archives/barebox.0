Delivery-date: Fri, 30 Apr 2021 11:20:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcPKT-0004ds-7S
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 11:20:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcPKS-00064B-Fc
	for lore@pengutronix.de; Fri, 30 Apr 2021 11:20:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KtrJBjep2C0Eo5Icmp32kzbBieL7ybATW6U8Imd+/7c=; b=jeHnu67nQAXfCL0kRmqKXYHP9
	M6ljfb1cFtfZEp+tBSXGISQXI34kCllIBnGcBjMDL3uqDZRVHvylLE04yrGmHI6eJ7wWYzpSfiAOB
	uNwTWPL7atJM2Gol/aZxAy6Awlhwyu0hWsQh1Xqr6E63nUiVaWI4g1p3wP3R6n20t/DoZkFofo9AT
	pc/1ToKlT875ZmXtpRC5S30eHftMMZqUy0MbEyXazvCWaXEC91Ltg0jh+zoDpYYWAW+bPDDYGWTr4
	v2sueFJ5lxwaWMZxaROzaJnf0tkgeDnTXDQA8S2IjjRX5n9q4ZFQIws8vjIGj5P0LMKxT2YxIK2ll
	s66MvIGbg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcPJK-007au6-Ii; Fri, 30 Apr 2021 09:19:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcPJC-007atY-H6
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 09:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=3EvyCR9aKTfwg8nDE2C6ld5N7H62j1XcYIX3rl0+ffE=; b=fFGs6RqAGuwnUAvwwxhC4auQhd
 quatTf4Gdf2r67cb7a0sGqA2lxjBxFQoLMpKOXWqKd70KJGy9g0rZ0b4vKo+ARM/5e9yPtB3+wTJB
 yYTO7cjWThMaUPFgFYn1ad7MwdnoiImyAm2QQuKNaCQb0+GFj2qtxuW+aTo6/MMZzXsZd2p18DokO
 Kx6/R0cMrE52qghTxYkxBVq4BJuewgwrjVQ7M/y7nLGz8S+4fFqpclWnTXi/U/11HkKGa0+yahYVY
 7iXeNi5j9rEnVsxdIYHSrPULvknJDeXKdeXtLH0US40vZzRsw02h+Yor0foo8bDbchRmX4jzpsU8z
 6kEcC2bw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcPJA-001GfD-5F
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 09:19:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lcPJ6-0005tG-Sf; Fri, 30 Apr 2021 11:19:32 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Fri, 30 Apr 2021 11:19:30 +0200
Message-Id: <20210430091930.30187-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430091930.30187-1-bst@pengutronix.de>
References: <20210430091930.30187-1-bst@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_021936_213435_CC565D07 
X-CRM114-Status: GOOD (  11.83  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] scripts: imx-usb-loader: print USB VID/PID of excluded
 devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On hosts with multiple USB devices connected, multiple "excluded by
device path option" messages can be observed. Add the USB VID/PID to
these messages to give them some additional value.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 6f9104e816..765ba61310 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -312,10 +312,17 @@ static int device_location_equal(libusb_device *device, const char *location)
 	};
 
 	/* walked the full path, all elements match */
-	if (path_step == path_len)
+	if (path_step == path_len) {
 		result = 1;
-	else if (verbose)
+	} else if (verbose) {
+		struct libusb_device_descriptor desc;
+
+		if (!libusb_get_device_descriptor(device, &desc));
+			fprintf(stderr, "USB device [%04x:%04x]",
+				desc.idVendor, desc.idProduct);
+
 		fprintf(stderr, " excluded by device path option\n");
+	}
 
 done:
 	free(loc);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

