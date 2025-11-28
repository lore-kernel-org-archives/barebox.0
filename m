Delivery-date: Fri, 28 Nov 2025 01:52:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOmin-005bmp-2n
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 01:52:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOmin-0007mp-1m
	for lore@pengutronix.de; Fri, 28 Nov 2025 01:52:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8kh0Po5r5+V4gU5CcH6HbatwhAfvdDyEFJ+71wXGWSo=; b=I9eXZi82g+syuE7T4RhFPz5zv6
	4W4Hs44uqHIjPvkJEINA78T244kdjT/+0tyw2KnSf1NrDl7928xG7HRZ/HfPwnPe6DHaus3SMyFg5
	evN2GJ9jWSjLBKHF9Yt/bdmFg+ydO370VxNxdxTCzbYwgOsNRedwgt2uuvDbUeN0M5tpm3ytRSEb/
	RWPMZnWqHHlp6THbIt895sSgNtaVhmkUP5sXl0ztvRjL8QRJOzEu8dzz0k3uV25PNP2yy8+nbo9pn
	2ERUtw4fpJ6Ex4Xkd7ojr7YMJOmZw4hwZqAp0gwOs355Ur/4M3jCcGj4scXNAO3IxsWS83qE5ccl/
	zyZ5FwEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOmiD-0000000HMWa-22T7;
	Fri, 28 Nov 2025 00:51:49 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOmi8-0000000HMUi-3TQ5
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 00:51:46 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-47778b23f64so7723735e9.0
        for <barebox@lists.infradead.org>; Thu, 27 Nov 2025 16:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764291103; x=1764895903; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8kh0Po5r5+V4gU5CcH6HbatwhAfvdDyEFJ+71wXGWSo=;
        b=j05TUxVz34w/wEd1oCvxlFYvoKYO07QgNQJnbDrRPuIGaYHkBNrxCAjeFSrrMjEe5y
         9X+nm6OokceaQgJvCBJH0RY57acQ3aHPGZS6dPcY8tWxfOq+3AxgLKDlICny8/UFnfyW
         guNpahWRasBQe5lgcSQD3cQpdpjrX34OOAYCoUKVm9o/9CLk0P7Bo9uRX0Mv/DXR+PpN
         XNcKhdsLHIIpxP1wf38GZhb4x2heYCgDczAWrjn7JwydKfMPoEoFUe5C0ezL6Vx3UTGo
         8geOYJSSKixeIhsct9gdlCBt6SWeulgiDpFhnAWgX5bmQ1PG73C+QvpaTmbMiG2jmviJ
         /fxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764291103; x=1764895903;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8kh0Po5r5+V4gU5CcH6HbatwhAfvdDyEFJ+71wXGWSo=;
        b=RZWOR8CGkN6zXkppdDuI2USj1XlKmCCLjEeOTHSLDfl1uoTmueJRctFANiGVcI4BfS
         ZkQFNhc0TyO6EpLiiphq90KXu6fGQAIBN7YqX4ctzkqTuoKwx+FN6sFu3MgdqeXdrjAP
         O65Fdc5ldPOt5+Wxg5KWJL/I5mrQ2FVVuy9l1pVBs1OgR9R2coHgAxwdSEUUWkO77V8j
         /8g+XYpfFr06gdwE3yx5pFi8q7N2JCPedtgU/cBtcRvMMcbugue7Q1M6zCBWHArbWp3/
         J0TrmImYb2y8RHVQf2JPBmta8OdKF12aY+XntvMHK6gxgiVHcIHGop7XTQ6wXIMjgI3v
         Djyg==
X-Forwarded-Encrypted: i=1; AJvYcCXW48VjiPRd3ge1491CJigYwVAugks+v/+SWsxJEpTEkJHrtmcysUNkkgA9piw2lmTHwkOyDBY7@lists.infradead.org
X-Gm-Message-State: AOJu0YyTqr1vmphM2EV3+BYBBQkagTZs9J4sXtQCRbyOcHO+MLgVvA5u
	MSYGJhOBSo9f8sT14HSVBa44XZpqmZuTwVZJWx5QXyg2ozW3x8IxSP/w
X-Gm-Gg: ASbGncsNmkrn1uJxJpjSqdXJquD7yyUMmzBmXFh7k92qw/4Rul12dhTjmzGb3QCqP7K
	zYOjkjq3xPphIrmqpV9DXrGmihhqBHSxc6Fd280umc4ixnbFZaEmFP6yL+zH0Cw+Iqgy5TPIUsY
	cCkOC6w8m8xjuYNxz9DoweFCgQPdW96pBBN7GKBTFLOzGByQLDQ2vqV54JG0rzT7FGxr3WGj5DQ
	sNxHZcWfvGMY3DXGjbzyq4XED/MuADemBmzXAk/VlsU8zLI4LQOFQwfZDp9ps1h5eFwZpC/TJ7E
	CKgf6Laj4GN601WHv7Hipg1yXBoTlGTNVRrt7Jo3ZsEIj+RL5dicGUqL1FOZpnPZEFd397lghZ5
	3HaynQsf+3iBJcoLe9uXXhuB56Ew/xF0mcWo5A+amhiM/gZlfKNBLy7TLQN/0z3QbE2R/jO545K
	tPSyRmuSbdrsvKxdnD0A27izXBAGqM5AnuCkHrBLsIoDA6r1y/+SQltI22how3Hvf1fMjEsuMbx
	4+242FHW7qPZ5rtS9lLI//kLIPK616cYMFYBr59M6qbrBRkS+oo9Trqbp/XGIZ98eGnB7+gDqVt
	+4SEye5HU2QQVkEA6jlUFJHE6vgQe80CbvUFPaKP6j+6to88N7mO
X-Google-Smtp-Source: AGHT+IEqE7HEDZJBeIceUfKi7Zhe6Ojn/l9BnISjg9Si59TT9cpSN7GWmIJrQ5HY8R+4fIGZU8U2Qg==
X-Received: by 2002:a05:600c:3b08:b0:477:214f:bd95 with SMTP id 5b1f17b1804b1-477c114df06mr243308145e9.23.1764291103159;
        Thu, 27 Nov 2025 16:51:43 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-7d9f-531a-c313-37e5.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:7d9f:531a:c313:37e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790b0e21e8sm123791475e9.15.2025.11.27.16.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 16:51:42 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 28 Nov 2025 01:51:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-avenger96-v1-2-009b13bd8df7@gmail.com>
References: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
In-Reply-To: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764291100; l=4053;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=P/vc2UTxZRx49CvwmiczQhocJqVZSKRZ/6ZKoAMACj4=;
 b=w1+p9pgrXWj1cti/EaGVFqtrynabX5vqalXoAD0D/qiOFXzwgAUHVWuKGeUmgfM7Qj8DdgPRn
 w+juTY4tv40AagHysFUP4WdsBiyzx6+C7oQi0W31BOSDG3eYz52gOp/
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_165144_902026_CB93706E 
X-CRM114-Status: GOOD (  14.47  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: stm32mp: bbu: add NOR flash FIP update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for updating STM32MP1 bootloader in NOR flash. The handler
automatically detects FIP location (256K or 512K offset) and flashes
FSBL at offset 0 and FIP at offset 512K. FIP is truncated if it exceeds
available space.

The handler detects the FIP location within the image (at either 256K
or 512K offset) and flashes components to their appropriate locations:
- FSBL at offset 0 (first 256K)
- FIP at offset 512K (remainder of flash)

When flashing from eMMC boot partitions to NOR, the FIP is truncated if
needed since eMMC boot partitions are typically larger than available
NOR flash space.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 arch/arm/mach-stm32mp/bbu.c | 77 +++++++++++++++++++++++++++++++++++++++++++++
 include/mach/stm32mp/bbu.h  | 10 ++++++
 2 files changed, 87 insertions(+)

diff --git a/arch/arm/mach-stm32mp/bbu.c b/arch/arm/mach-stm32mp/bbu.c
index 07b5111341..e8d0138cc7 100644
--- a/arch/arm/mach-stm32mp/bbu.c
+++ b/arch/arm/mach-stm32mp/bbu.c
@@ -193,3 +193,80 @@ int stm32mp_bbu_mmc_fip_register(const char *name,
 
 	return ret;
 }
+
+static int stm32mp_bbu_nor_fip_handler(struct bbu_handler *handler,
+			 struct bbu_data *data)
+{
+	struct bbu_data *fsbl_data, *fip_data;
+	enum filetype filetype;
+	int ret;
+
+	filetype = file_detect_type(data->image, data->len);
+	if (filetype == filetype_fip) {
+		pr_debug("Flashing FIP at offset 512K\n");
+		return bbu_flash(data, SZ_512K);
+	}
+
+	if (filetype != filetype_stm32_image_fsbl_v1) {
+		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
+				file_type_to_string(filetype_stm32_image_fsbl_v1),
+				file_type_to_string(filetype)))
+			return -EINVAL;
+
+		/* Force: Let's assume it's an FSBL and flash anyway */
+	}
+
+	if (data->len > SZ_256K)
+		filetype = file_detect_type(data->image + SZ_256K,
+					    data->len - SZ_256K);
+	else
+		filetype = filetype_unknown;
+
+	/* Not an eMMC image, just flash 1:1 */
+	if (filetype != filetype_fip) {
+		pr_debug("Flashing FSBL at offset 0\n");
+		return bbu_flash(data, 0);
+	}
+
+	/* On SPI-NOR, offset 256K is FSBL2. If we get a FIP image there
+	 * instead, let's assume that's an eMMC boot partition image
+	 * and flash the FSBL to offset 0 and the remainder to offset 512K
+	 */
+
+	pr_debug("Flashing FSBL at offset 0\n");
+	fsbl_data = data;
+	fsbl_data->image = data->image;
+	fsbl_data->len = SZ_256K;
+
+	ret = bbu_flash(fsbl_data, 0);
+	if (ret < 0)
+		return ret;
+
+	pr_debug("Flashing FIP from file offset 256K at offset 512K\n");
+	fip_data = data;
+	fip_data->image = data->image + SZ_256K;
+	fip_data->len = data->len - SZ_256K;
+
+	return bbu_flash(fip_data, SZ_512K);
+}
+
+int stm32mp_bbu_nor_fip_register(const char *name,
+				 const char *devicefile,
+				 unsigned long flags)
+{
+	struct stm32mp_bbu_handler *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->handler.flags = flags;
+	priv->handler.devicefile = devicefile;
+	priv->handler.name = name;
+	priv->handler.handler = stm32mp_bbu_nor_fip_handler;
+
+	ret = bbu_register_handler(&priv->handler);
+	if (ret)
+		free(priv);
+
+	return ret;
+}
diff --git a/include/mach/stm32mp/bbu.h b/include/mach/stm32mp/bbu.h
index 233bcf6478..87b29f1527 100644
--- a/include/mach/stm32mp/bbu.h
+++ b/include/mach/stm32mp/bbu.h
@@ -10,6 +10,9 @@
 int stm32mp_bbu_mmc_fip_register(const char *name, const char *devicefile,
 				 unsigned long flags);
 
+int stm32mp_bbu_nor_fip_register(const char *name, const char *devicefile,
+				 unsigned long flags);
+
 #else
 
 static inline int stm32mp_bbu_mmc_fip_register(const char *name,
@@ -19,6 +22,13 @@ static inline int stm32mp_bbu_mmc_fip_register(const char *name,
 	return -ENOSYS;
 }
 
+static inline int stm32mp_bbu_nor_fip_register(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 #endif
 
 #endif /* MACH_STM32MP_BBU_H_ */

-- 
2.43.0



