Delivery-date: Tue, 16 Sep 2025 06:03:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuL-003YcT-27
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:03:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuI-0000bj-TH
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:03:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=thlbuHDyP3/F2YqHSoR51Sh5fwymLIw3ioha1i2RnF0=; b=JRMuL9pBG364rMpnof7zax6Fov
	JsV9CDVm9k726xmPOgt0Jam7ipzsBh80tKhygopBtK/THn5lxR/0ftFPpMPFoE8WXYLnlSXaX/U5I
	awXWshL3CjHhjrwB/4wUGpyRrGjcRloWdIVLWA+DN7IjUjWtrczl/SDh3XbEjjs4CFPNlVW7PdKwt
	huMKS78Xm0N7u4SmV/KIJGs5YfWTAs8PB1aSw/ISREwNuKQxXmywFsyBl4pIKYyC/3esM/yBI/9yg
	i+am1NZ3nyg1j8YuGwVUcCvcgcbqCK/qVkGPJoGyw8RGg536gefTHnUhlrOQslYxzh+zoZoB4LHGa
	EzgMsd/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtp-00000006emE-1pZt;
	Tue, 16 Sep 2025 04:02:37 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtm-00000006ei9-1wlS
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:02:36 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so3411426f8f.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757995352; x=1758600152; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=thlbuHDyP3/F2YqHSoR51Sh5fwymLIw3ioha1i2RnF0=;
        b=Q3fXe4DVGffgWeKpaXy4KNiEgOZDsBTFnKtqtqI2R3JHLj4jSuwMwXLEtOj4koSE2R
         cMyfOw+V9BejpA3T4UTO3yCwf5cJEtz55YWStY0G0sUDmGM5chWcn3akrb77vDw6/z/t
         747nsjZvmDhnoa+MNlh302GQr2Gs9Sz/JazGr8eti/ihGf7KMKdKTW88OaqO7kpgxNj+
         78xoyP0UlANSa1Is8YhPic9Vge8hNL/ZsUE7bVHgDKKW980vU65Y6ToVMCjn4fziWJBX
         KSWUv3i0OQ43zVwVNe0WF4juvy2ToK70M0giq3yZRTFSh0A0hI7tm1EfE2B6y/NRo7nt
         sG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757995352; x=1758600152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=thlbuHDyP3/F2YqHSoR51Sh5fwymLIw3ioha1i2RnF0=;
        b=sYzBfD6TJvpYsuKas8I/OArIOL0NIC3KqSxckl7ZOpBlGEUQfd9C5FYW4lX1qiWv+4
         MdlEuQHnV3N7YdZhlUpVz+fAdNp44kpOsfkgWBse4Ug9Fv6DjJN+7+H46L5gyLMx9lIK
         V5Knq7QkkOrxBwA6S1Y0DKbogulQ2TqdkkbRWZSzTBSb1XHm87vp72KmF5WwPvj5POTr
         Ffl6/tQj30mFOKlH4WhzaVeC+VUGXVFs0Ajtix/l9+h4L5+nE+4BkI4nvQkLxpVFI3Vr
         sGKSGLPsxb45cLN/19oQKYvjEKiKTM4TjuVB8jd8u4tzpS8wPit11gzHjlFmi5vTVf5d
         hZ1A==
X-Gm-Message-State: AOJu0Yw7rW4Ym4zaZsPIv10C8vXOmnwlwrzk6fJVYLwvbOaNhhFm2yPK
	r0QizR3h/Svp2Tfm/OWA2t0iP9kxSKHYI8fZs4KNRZnA3azYUdqwy63S
X-Gm-Gg: ASbGncvUabvYCiVSPpLtvKAgwTVNJ4iODOUOVnhNzvQRPFIHYcmwnLy/1Ziix74Jq2o
	1egZkEK7ucH+c+yuO/X9Oe29KTsdPWFEuSdusE1egtmBFbF8zUpxVQWCQDziKlbMOQ3UBN1lylC
	flFj2YE/IWG0qPPjpf/wwo/eCGoam4lhsBRedbB8T/yGr1FgG3F1QsQZ2zUgujcoiqoht5e7svm
	pf1zIU+0J1Roo0ydHCcHosvyiIiL7i9ozILm3Bgj6eYP5qqo28tUuZXZjaidj/lop0Y1W9dLN04
	AMTegYqHNMi/ncIcxhgRY4Wl71SxqhIaq24K7oskU0i/egeCa8GTcuKiN+cEd2+H12aOtkVy87g
	GxOt2tZwMVw56CFaQ7BTLjAAHogk+r9WkH7KRxcmzx8jzZUyJcmdJanx9MUPiAW0TColZniKgUD
	N4cCBwJQ/Q1sWKB+CJ7ezhUvp5Ybw7cUaj
X-Google-Smtp-Source: AGHT+IEJeG4OIIy8MEgbdU4KPZ8M3f/Yskes6pFY4IT30b2s4kOoQHXng9tMApgQsoG2lzuXty+nxg==
X-Received: by 2002:adf:e6d2:0:b0:3e8:e61:b067 with SMTP id ffacd0b85a97d-3e80e61b06fmr8610220f8f.13.1757995352430;
        Mon, 15 Sep 2025 21:02:32 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm13594706f8f.23.2025.09.15.21.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:02:31 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:01:55 -0400
Message-Id: <20250916040155.814159-11-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916040155.814159-1-chalianis1@gmail.com>
References: <20250916040155.814159-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_210234_515729_9E84A40E 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 11/11] lib: fdt: remove FDT_PADDING.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

remove the unused FDT_PADDING.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 lib/Kconfig | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 89e95d202c2c..d07e2f3b6959 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -121,10 +121,6 @@ config FSL_QE_FIRMWARE
 	select CRC32
 	bool
 
-config FDT_PADDING
-	int "FDT padding size for fixups"
-	default 4096
-
 config LIBFDT
 	bool
 
-- 
2.34.1



