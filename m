Delivery-date: Wed, 05 Jun 2024 19:26:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sEuPL-001Z4q-2r
	for lore@lore.pengutronix.de;
	Wed, 05 Jun 2024 19:26:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sEuPL-0003Ch-9L
	for lore@pengutronix.de; Wed, 05 Jun 2024 19:26:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zIG3TBl6Z7KdbDF952/M/hdLgE5rLSQT7AKhGlqFPic=; b=PsCRUqPp1u3wIWZ4UpT2fputMm
	FIE7TUxs/jvvdNsoY+haVY0ziCf8a0nlkPw4ksSz+JZ3DvTRr8zEcQKKGpKmgFmkLG95iGxQEP0cn
	Ytu+lTNtUd8ROQhK5GG4okGqggH/BOe0X4hrp3M7XYeuOHINm/N7QqB6U139necIdPBOKxjJ78r6h
	3EndD05//MnKtpiBeCFyypr4+DtNybqELjzv0lda+Gk6PZjKDdVz6JxufsOLHH31vyCsvguvCZItm
	n3zl4NejAxyDMVq4aH8k/ps5ypKDYh8ENlYRsfu9Kjd8bYuGP5S1t0opykPAWMDdph7v0UZNmOqPE
	DQ+Z+7wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuOg-00000006ynV-0K9l;
	Wed, 05 Jun 2024 17:26:02 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuOc-00000006yls-1WzZ
	for barebox@lists.infradead.org;
	Wed, 05 Jun 2024 17:25:59 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-52b92e73e2fso106832e87.2
        for <barebox@lists.infradead.org>; Wed, 05 Jun 2024 10:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717608352; x=1718213152; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zIG3TBl6Z7KdbDF952/M/hdLgE5rLSQT7AKhGlqFPic=;
        b=Kw7GZn2fxcLn0rwih0ZprQ+dcm/P1PseLPX/3Vlf/kQw4mIMfqpEK+UHagNNJvONJ5
         DC38sujpUBFnQRdRknYr9KYNEZMQZAp0mP9LxYfJw6ArcD4Ywaj63t1TDInKMe1jV2XU
         abA9/EpgjX+z1a8TeNFJlntVHx8a9BtKD532ql6Lr9NZ6Pyl/bFa3zI3+duRB8y9RX96
         u+c3MvNivQuLJW+WVi3KE6eWilnYP7vFq93UUCad1YqQ/gUc9X5uCto1o4p8uFGJZghe
         1FkNwmELF3y5/9vWz0h/4GRFEjhuOMeeygYQNiAP05CiqfX3bdFaTHW+qwO6nRqE4/Jy
         notQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717608352; x=1718213152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zIG3TBl6Z7KdbDF952/M/hdLgE5rLSQT7AKhGlqFPic=;
        b=HeNhz4nMNqnf4tzb6+8hG+Z+wqiTwffANsGYRulN+M8gcrknbGYl8+hgqYXtg+qlwn
         XdBA9NWhGjLs1JJq2EGBIaWe9x3Aa8byTXb6a75dSNr1EZHV2bE3NP1wi45b3rdemFXY
         IhDxsRDzjtv/2xfCJReFsgLyIwu9asAJdRa5Egozhpxzo5uw7SYEy6NpVxC8cJtRg3DM
         Zp8HkE1QrXM2zTELdxc3kYlVHza+rQL/9St0UCb4KyZLK/S+zYTHbE7UnhfVs+80JZWC
         w5QJdkLfZM6BxrnrUOCwSwV0ySbwdYn7cSfP9LHlWYMXeMpVwhS8psgylF/GosBtXmxU
         aO8A==
X-Gm-Message-State: AOJu0YwTRlMLazI+X9DFY2egzWZUoQI5uZu06hg1sVClyYTS9bV1E+No
	9k2yvTay/xrWUWaEcq9x7Z8W3ftCJxeI1hsK2LBjKGj0hlKps+OnZS8IoQ==
X-Google-Smtp-Source: AGHT+IGtVU0Nd8It3LDubqTyJ8rFHMK3wHp+q8jbO8KeKtgRndp263wsd1JHs0dhVsjt+LTOsPoLrw==
X-Received: by 2002:ac2:4849:0:b0:521:532d:eb38 with SMTP id 2adb3069b0e04-52bab4f93dcmr1979578e87.63.1717608351280;
        Wed, 05 Jun 2024 10:25:51 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3f4f7sm1834792e87.89.2024.06.05.10.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 10:25:50 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  5 Jun 2024 20:25:39 +0300
Message-Id: <20240605172539.251490-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_102558_428926_9FA3E5D8 
X-CRM114-Status: GOOD (  11.93  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts/rk-usb-loader: Add support for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for rk3588 CPU for rk-usb-loader.
Instead of 0x350a PID, the rk3588 uses 0x350b, so lets use mask
to be compatible with both CPUs.
Tested with 3588OK-C Forlinx board.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 scripts/rk-usb-loader.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
index 9c2367ed28..ad70cfe271 100644
--- a/scripts/rk-usb-loader.c
+++ b/scripts/rk-usb-loader.c
@@ -66,7 +66,9 @@ static void log_debug(char *fmt, ...)
 	va_end(va);
 }
 
-static libusb_device_handle *rk_usb_open(libusb_context *ctx, uint16_t vendor, uint16_t product)
+static libusb_device_handle *rk_usb_open(libusb_context *ctx,
+					 uint16_t vendor, uint16_t vmask,
+					 uint16_t product, uint16_t pmask)
 {
 	libusb_device **devlist;
 	libusb_device_handle *handle;
@@ -74,8 +76,8 @@ static libusb_device_handle *rk_usb_open(libusb_context *ctx, uint16_t vendor, u
 	ssize_t count, i;
 	int ret;
 
-	log_info("scanning for USB device matching %04hx:%04hx...\n",
-		 vendor, product);
+	log_info("scanning for USB device matching %04hx/%04hx:%04hx/%04hx...\n",
+		 vendor, vmask, product, pmask);
 
 	while (1) {
 		if ((count = libusb_get_device_list(ctx, &devlist)) < 0) {
@@ -93,11 +95,11 @@ static libusb_device_handle *rk_usb_open(libusb_context *ctx, uint16_t vendor, u
 				return NULL;
 			}
 
-			if (desc.idVendor != vendor)
+			if ((desc.idVendor & vmask) != (vendor & vmask))
 				continue;
 
 			if (product) {
-				if (desc.idProduct != product)
+				if ((desc.idProduct & pmask) != (product & pmask))
 					continue;
 				goto found;
 			}
@@ -113,7 +115,8 @@ static libusb_device_handle *rk_usb_open(libusb_context *ctx, uint16_t vendor, u
 	ret = libusb_open(devlist[i], &handle);
 	if (ret < 0) {
 		log_error("failed to open USB device %04hx:%04hx: %s\n",
-				vendor, product, libusb_error_name(ret));
+				desc.idVendor, desc.idProduct,
+				libusb_error_name(ret));
 		libusb_free_device_list(devlist, 1);
 		return NULL;
 	}
@@ -124,7 +127,8 @@ static libusb_device_handle *rk_usb_open(libusb_context *ctx, uint16_t vendor, u
 		return NULL;
 	}
 
-	log_info("successfully opened %04hx:%04hx\n", vendor, product);
+	log_info("successfully opened %04hx:%04hx\n",
+		 desc.idVendor, desc.idProduct);
 
 	return handle;
 }
@@ -231,7 +235,7 @@ static int upload_image(const char *filename)
 		return ret;
 	}
 
-	dev = rk_usb_open(ctx, 0x2207, 0x350a);
+	dev = rk_usb_open(ctx, 0x2207, 0xffff, 0x350a, 0xfffe);
 	if (!dev) {
 		libusb_exit(ctx);
 		return 1;
-- 
2.38.2



