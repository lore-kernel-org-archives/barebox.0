Delivery-date: Sat, 23 Aug 2025 10:20:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upjTy-003btJ-2S
	for lore@lore.pengutronix.de;
	Sat, 23 Aug 2025 10:20:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upjTx-000567-LQ
	for lore@pengutronix.de; Sat, 23 Aug 2025 10:20:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SUB06IUn0kPGq8DhMhaRTgfXZdivbpTambrJeyAgx10=; b=c+P2QgeIh0r5sQCQrROaujkBch
	DpFzYkAjM6j4F2cmSomkLJIhVEoJmstlTy72hUHjfdar4XZnTEZ3uV6ilSXVoRt7xaIL+q41Ctu/B
	FO9HxJzQKj749ApRZ7ryEs9950ZrkaOL8X9QcXLckroLz6wPZ3umjzOLnrcKF1NbvMsraV/qeasax
	sW+RyqArReqQvWimbU0rH5Q+xHLJ732eBoCBwoVC2f4SD6Lgb9FgEy93oqqhmuzBWaaIf0iqJlY1U
	7imREVXcfvk7ItWI2PRzsHQDUtC67MmJjutBMlTr0oZVmfUZ/Y7aYg089EaUoypRK3qSbjVNCQzRb
	Kdh2Er5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upjTJ-00000004KZg-1k7L;
	Sat, 23 Aug 2025 08:19:33 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upXJD-00000003Mfb-38DA
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 19:20:20 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-4b134aa13f5so28646581cf.1
        for <barebox@lists.infradead.org>; Fri, 22 Aug 2025 12:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755890417; x=1756495217; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SUB06IUn0kPGq8DhMhaRTgfXZdivbpTambrJeyAgx10=;
        b=M5jNECgUVy8aCmKFFU+i6ILKKxBV6eIE43Nl+SDlRsJ0yG5kGRqAuLZxD2Uz2yAWTv
         cDexfFJiKuT7k0eLpVYziFhA/m9X4xiK8aTGSJUSl/taQuC+ZhSgLJ+wsJbPVB+tEFrZ
         coAkJUTq0qru1x3li0lDyFRjCVUENyKZ20cD4INiPOjjhEUMiORa27MVsgq7zei5uW48
         w5owDztBQTYGFJuuwZohjjoB9JEYIekwfVI1rm0e9MgpFa52zFnGvWs4OcyXIdxAPBOa
         I62YdwrLCihdPq9s2Cchbu/cigLpm3x+pogTo7WQx9R555EDwGhbOFutc9vowlpUUeDW
         ftFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755890417; x=1756495217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SUB06IUn0kPGq8DhMhaRTgfXZdivbpTambrJeyAgx10=;
        b=rlQ8djLkObH2ecLYrCSrnKhSBn7gowcdDJ4dffRAzQtKVsW616dzEpmb1b/PtSIXsS
         SHsg16Yo99wmMlalaI1JbNDipumIhqbpVMhsVovMUKjYzbFXqPWxLkLRvMo9dfbJSH7z
         aFp1s22BTHKt8AxLoQvxiTlrpDp/7BuRmseB+N2K3K/yFyxjSbnCar0fVgefvOu8q1hj
         b7Gk3qF9AdhIE/j/laq/yYrNJGoprnsCnhuV2LFLMlE/Oda9UgdjbjUstR4EsD2LUAW9
         MzBUc9CYvLZrUIi9gYLBcqGxsrtFA5lPhGOtRbR52uSZdOMOgsiAQ5V27cvrEsZTbE4V
         X6Pg==
X-Gm-Message-State: AOJu0Yyao0sv/wm1zPJr6K37ZH8YLka8fQntcalm+RhjCsVQZVf0Xb5K
	vBUP13Ts1qDIFcFWp9F/KwHatkSAvw94e+/bFuTrDlBdv5Kr1Bbe9S02PwAOow==
X-Gm-Gg: ASbGncv4p7zflVrTAjJ3lsuCr7+TEs9KAgB+JL6o6Jr7fj9FQCz31PrEWP//9kzxci3
	2EO7WIsQt2itsuPDwQfmNnYp8+CBue/wdu0DVWBeopy0iZbYqydEOeexGwW98lqoTfvBP7QVFWD
	48FrpaxLsfdfb3WVhbP5TI85uJnEI2PmX2UNMKj+TYgQO+F21eMcFQ/3Yq5cU8D6UIPKY7F0ZLp
	ObuZy+hnrRyE2GgkTWaRQ+ZXG24vFfUe6X5EcTEOEWRz+GxI+1dxJXjpXfLklqdRFt5CcgWhCtl
	hD5KTANvT3N8kzNslLG2iFIjQKkMRYj2w4wHA2qnn6c3TEjPvkvJXNzBpDjt/uOz63ebRKVSVJe
	232BOD3/zJT1KK9WbjGkUOTTQcCJTeb05BLl621NSeYvPi1Y2i/XKfqwIC24dXgqYMJMJh0sCxI
	lzhWsanNNnrkd3OHQuzQbGQA2wog==
X-Google-Smtp-Source: AGHT+IHElr8iyE8494AHiCN0zIH5g5J0LA+9MtnyDqoibAG7humyWOG4iRjldUbuyN08h8Vw0cqLPw==
X-Received: by 2002:a05:622a:15c5:b0:4af:1535:6b53 with SMTP id d75a77b69052e-4b2aaacedbdmr41805301cf.54.1755890417227;
        Fri, 22 Aug 2025 12:20:17 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:bed5:5661:d427:6751])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b2b8c88317sm4424831cf.14.2025.08.22.12.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 12:20:16 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 22 Aug 2025 15:20:14 -0400
Message-Id: <20250822192014.209689-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_122019_794703_ACBB81A7 
X-CRM114-Status: UNSURE (   9.14  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] efi: devicepath: add support for mbr partition.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Add support for mbr partition for loading barebox from usb key
or even from qemu fat partition as an efi payload.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/devicepath.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 342422ea1a11..b80d5639afbf 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -802,7 +802,8 @@ char *device_path_to_partuuid(const struct efi_device_path *dev_path)
 		struct efi_device_path_hard_drive_path *hd =
 			(struct efi_device_path_hard_drive_path *)dev_path;
 
-		if (hd->signature_type != SIGNATURE_TYPE_GUID)
+		if (hd->signature_type != SIGNATURE_TYPE_GUID &&
+			hd->signature_type != SIGNATURE_TYPE_MBR)
 			continue;
 
 		return xasprintf("%pUl", (efi_guid_t *)&(hd->signature[0]));
-- 
2.34.1



