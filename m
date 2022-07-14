Delivery-date: Thu, 14 Jul 2022 09:29:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtIG-007JdW-4r
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtIC-0002Z5-DX
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DpKBHOBya6nGJDr9bgT3pKZB+/PdOK8cwqJfVapM3ZQ=; b=szx6j6nUJBQ4FO
	+R05cuQ/FoSA8acbTsGAr1B4FG3F+717vOnGrOSdWY3YIkhwkT0g5AXae8xwGzBVKgiW/ebMOm6/1
	0Lpb0w+fPNrEDwh8VqV0L3ekH0R4xPDmZLawJmCyvxut2QIJ15Ko6YCG35jywgwDzuJldwIl7XPuJ
	x1PWN7hIHgJjmr6XH6D6uA0iwqE2PlG0IKLnrFMYUhjCSjRQYGksrC//CAvcJGbMeu8aHqvylQM2a
	VG7nsjC4lKiVFlm36NL+5NM0STIOOaxtGInmWMFp32YYs9P83+Oz5Erjg+TCr9RjlkIfs5siinupo
	HyYHADmkzdriHWf38kOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGl-00Bp5l-8f; Thu, 14 Jul 2022 07:28:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFy-00BoW2-54
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFu-0001hb-MP; Thu, 14 Jul 2022 09:27:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-000rqq-WF; Thu, 14 Jul 2022 09:27:26 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vd-9N; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:11 +0200
Message-Id: <20220714072722.2863571-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_381182_A000EC81 
X-CRM114-Status: GOOD (  17.37  )
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
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 01/12] ARM: i.MX8MM: Prepare loading only piggydata in imx-usb-loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

For two-staged loading via USB we traditionally send the PBL twice. The
first PBL is loaded to OCRAM and executed. Then the full barebox image
including the PBL is sent again and received here. We might change that
in the future in imx-usb-loader so that the PBL is sent only once and we
only receive the rest of the image here. To prepare that step check if
we get a full barebox image or piggydata only. When it's piggydata only
move t to the place where it would be if it would have been a full image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 709620e5df..ad3800519f 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -76,6 +76,7 @@ void imx8mm_load_and_start_image_via_tfa(void)
 	const u8 *bl31;
 	enum bootsource src;
 	int instance;
+	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 
 	imx8mm_get_boot_source(&src, &instance);
 	switch (src) {
@@ -83,7 +84,29 @@ void imx8mm_load_and_start_image_via_tfa(void)
 		imx8m_esdhc_load_image(instance, false);
 		break;
 	case BOOTSOURCE_SERIAL:
-		imx8mm_barebox_load_usb((void *)MX8M_ATF_BL33_BASE_ADDR);
+		/*
+		 * Traditionally imx-usb-loader sends the PBL twice. The first
+		 * PBL is loaded to OCRAM and executed. Then the full barebox
+		 * image including the PBL is sent again and received here. We
+		 * might change that in the future in imx-usb-loader so that the
+		 * PBL is sent only once and we only receive the rest of the
+		 * image here. To prepare that step we check if we get a full
+		 * barebox image or piggydata only. When it's piggydata only move
+		 * it to the place where it would be if it would have been a
+		 * full image.
+		 */
+		imx8mm_barebox_load_usb(bl33);
+
+		if (!strcmp("barebox", bl33 + 0x20)) {
+			/* Found the barebox marker, so this is a PBL + piggydata */
+			pr_debug("received PBL + piggydata\n");
+		} else {
+			/* no barebox marker, so this is piggydata only */
+			pr_debug("received piggydata\n");
+			memmove(bl33 + barebox_pbl_size, bl33,
+				barebox_image_size - barebox_pbl_size);
+		}
+
 		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
@@ -98,8 +121,7 @@ void imx8mm_load_and_start_image_via_tfa(void)
 	 * for the piggy data, so we need to ensure that we are running
 	 * the same code in DRAM.
 	 */
-	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
-	       __image_start, barebox_pbl_size);
+	memcpy(bl33, __image_start, barebox_pbl_size);
 
 	get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
 
-- 
2.30.2



