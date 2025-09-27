Delivery-date: Sat, 27 Sep 2025 18:34:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v2Xs0-001lPB-24
	for lore@lore.pengutronix.de;
	Sat, 27 Sep 2025 18:34:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v2Xs0-0000qk-2v
	for lore@pengutronix.de; Sat, 27 Sep 2025 18:34:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sjd6xZ6gYdkSWdiEdLwgGY1pLmttp3YPBC/OVVTlWMU=; b=4SQAKXFzXbgsuOdNTQI9MMqJe0
	qaVCvLXGK8MmyoD/lhAVi8VuvSbqOvYl7eEOnNXKeFt2W+1wDFYGYgViJ8Qy/snu6u9Ich7fd8WGZ
	YgIfpe5sBaiD4dAZRNplpbPJNZk2K01/AFvSoQ74GBY0IhJ5suI7g3hxdMOKQP9VqS9Gxnp1/5GxQ
	k/TC+8rg88u1Jqf/DrlST5BTdlPo9EuUOENcX6k3kwbAfjrIe0DKLw1ek/pL8/DrTk7Vg6fRIR+FL
	46BpUaJS/n/mgvqedSvUhkPa54FYTPy5S5U9M0GdvWkRCd2tQJ396EMOvcvTeULMl1w/HnXfoSmKS
	U6CGrWjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2XrB-0000000B0yj-0pC0;
	Sat, 27 Sep 2025 16:33:09 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Xr8-0000000B0wd-1ES8
	for barebox@lists.infradead.org;
	Sat, 27 Sep 2025 16:33:07 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-85d02580a07so188719985a.0
        for <barebox@lists.infradead.org>; Sat, 27 Sep 2025 09:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758990785; x=1759595585; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Sjd6xZ6gYdkSWdiEdLwgGY1pLmttp3YPBC/OVVTlWMU=;
        b=CbmyZPFOjM3jmkl0h2ngIuxT6+ZxqYXwlKcrwUwwFvrkPt8XJhzxsB9x41GwACqsY2
         xVP7WUTuo599sKWTAfVkUxy5arZfoLcJSnTs8a2dUpLZ9xYWL7/G5FqvPzmJ8LhIEYzP
         GYADcGES54/OICQT48ogUUYUpjqlYbpWC9TaWAfueqFaLZABMBNASXp95zM4ie6G+Po/
         pivNDjNWyJxoFW/0MA7NJDPUYjTdAgD6dJL0+FE7XlQyap/wCVogjRjyACQ8ho6QtR/G
         eg+yvu7TSAAen2rtQyHR5gfBXT2Fp22/+EjU4oXqloW0rX9oh6oYbgkb01ktDzp2z9sS
         Pcmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758990785; x=1759595585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sjd6xZ6gYdkSWdiEdLwgGY1pLmttp3YPBC/OVVTlWMU=;
        b=ZbHnuOdEwcVDqWiGaomeLbQZlukP5oHqnwRd2eLi811hDkR+DxAeUY0zHkTdlXKN+T
         uLSnEOtr14fvU4p7aHVzddjVsRyjlzTkFNW2YMzOv/9Ec+9/6QTJxxgoEu1hhtfQVja7
         HAzv4trLqb3D7apBDIrmSaRSB1soDlLCHKb5mJoyvl6POZe6EyeWSeY9WId3K5ZPgRn+
         AULiEG+h8Nx8Xvm806hqfxSby7xXYZRaNJtkZ/QgqaX2jKHhqW2atwoIPPjBGFtubf0d
         7byGTR0rrsG+m+eFWlH/n8s2vqZtIKjtX0Ao4+NodqXaMoD4nOTI1TXYkHgUbtzESPsc
         G+eA==
X-Gm-Message-State: AOJu0Yx3k3ogSgqYdh+RhM6XKp3RRHwEKrB+Euas1/T8VSA9iYqZw65C
	Qn+KqY7wBQaRL0nybxVDz91w13RcUchPei4D7Bktga6bpreFu78sacB2UgRV62zZvyA=
X-Gm-Gg: ASbGncthWuig+iBVHGp4ZakSEAziPTCCsRrN+Hkufqp5Jqu0mAHEZ0OJZHtmxGMR3IO
	Z3xJ97n6PF9j55HULfV7Bp0O6P3X9hFABuqDSsyV9nhDp5b14rlNYCiAE7bNrefCCQV0vR44q5f
	nYBW34XGhSgCJWqjFrk6vhpkC87wKPuS9l/XQj8rjvG5M4Wf3g1rwS+4fUfx6SnnDA1droUXHRK
	BHlWWvoOSJZSwVMvAuEMCMBGaeccswPWxp61+2wyf4HfGpN/tLSS1awTcv6eraiHn33dniLqdzm
	qAmoFvwWN9uHD9bw7m+0Vmgq7/n1pHbu4uuc9Md1w+ZPYGKYH6XIQpyctRu8y662ecIq9EEGss2
	Dcoi3Zg1JCOoH/P5Sy9ZQBfHAq31h2d+sRcjVbVJBWnWFPD7qQ32P5rPiJrP681NXPkClADfvH3
	nyO6zdHOuai4DWefIW1/oe/fDibt+KmAkdW/CJ
X-Google-Smtp-Source: AGHT+IFb9xhfrGqgyhgxbe4fEWgQmjLBvYBcZmyGKEBU+dIY0Sgx0kR8JG7ZqLlAaegLuMuky+tzKw==
X-Received: by 2002:a05:6214:19cd:b0:78e:e882:ac8b with SMTP id 6a1803df08f44-8309885a825mr48211456d6.28.1758990784601;
        Sat, 27 Sep 2025 09:33:04 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:7c39:91fe:53eb:3d18])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8016e952d26sm42881786d6.59.2025.09.27.09.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 09:33:04 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sat, 27 Sep 2025 12:33:01 -0400
Message-Id: <20250927163301.1002593-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250927_093306_338665_68270313 
X-CRM114-Status: GOOD (  12.47  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: efi-snp: fix mac address change when it is not supported.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

continue interface open if the efiret is unsupported since the mac address
change is not always supported, this permits to not fail when the network
could be used since it already has a network mac address configured, this 
is at least the case on qemu with certain versions of EDK2.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/net/efi-snp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 119358b6c880..b4d2abfecf77 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -219,7 +219,7 @@ static int efi_snp_eth_open(struct eth_device *edev)
 
 	efiret = priv->snp->station_address(priv->snp, false,
 			(struct efi_mac_address *)priv->snp->Mode->PermanentAddress.Addr );
-	if (EFI_ERROR(efiret)) {
+	if (EFI_ERROR(efiret) && efiret != EFI_UNSUPPORTED) {
 		dev_err(priv->dev, "failed to set MAC address: %s\n",
 				efi_strerror(efiret));
 		return -efi_errno(efiret);
-- 
2.34.1



