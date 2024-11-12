Delivery-date: Tue, 12 Nov 2024 17:29:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAtlz-0014k5-0J
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 17:29:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAtly-0000GQ-GX
	for lore@pengutronix.de; Tue, 12 Nov 2024 17:29:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mp9W7En9IgxJHcy8ipjPrx3x7wKbC2pS3RbjsT35jso=; b=wFSKI3hu+ggVzD7bo+pcGhxvm3
	k2+vmN6c2MUOmtCWHcJ1s0nkUXNuaqmQGwoppB+5ugKBYRLDV+VvIh/Z8hgP3tVEI1W9GYERDBpXB
	IjnS/skRcvRy/7zvB9jJ2o6Ofgu8WTTRjNfgxVc2rAfSl9Pu4hw9IhJ7EicuV83nnh6SnNHfBrLXV
	ySzYcaQgro0ZIv6w0vkqHf663RSXXKltiRo4VCEW1QwdcheN2Oy5cjlE/FcaYpJ4GuPI3VSWJG/e6
	Vj5Bs3uPfjAMFijR9GB9TM6e/w9oUeD+PSpHSh3Z+iGsP8sYNwAgOrbiUz0LTn9Qn/1XEy7C2+3tP
	cEc5YiMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAtlO-0000000491F-30IH;
	Tue, 12 Nov 2024 16:29:10 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAtcl-000000047Lq-01Ap
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 16:20:16 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4314fa33a35so47779115e9.1
        for <barebox@lists.infradead.org>; Tue, 12 Nov 2024 08:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731428413; x=1732033213; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Mp9W7En9IgxJHcy8ipjPrx3x7wKbC2pS3RbjsT35jso=;
        b=j0vuEjb1UCv1PgSdEC/5KkZ+jL3CucYlpjKjCBtNF1X6DWgs1rL6X0TqNRZib6YWCK
         /1G8UHDTuRiEpN+3fTpC5rm8Mcs66psW1AtwfEZ3r7oXJd1AgBw5BWMoONcBg0iwR2a7
         sqRNQU4Tct2uyNXVt0xdJ9Ho0QIep/Hr8VCxS8SrnfgvJzDimp3df3YZffrGye6cWvPd
         chYmv+ofrxSyPRRK+vNrnoBRqsBcLBF6Vj789qpUXf3w3y4DSK4z4l0WU+AhL6F2CZqI
         K337w4R+t4QpXHDADmtGCDpY6Ua23I+35TMNQkmyhMoMuTrVPD7XcgcisbL2IaudKJE5
         Ixvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731428413; x=1732033213;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mp9W7En9IgxJHcy8ipjPrx3x7wKbC2pS3RbjsT35jso=;
        b=qf/3/Ru8hJz6n4X3IGk+0yCcPGWzl4GcyKL/IU9wAgjhkDp7exyDaU/EYTCcPiEFMw
         +628d0Gd2NZrvXEcwIcW0meqTPNg1qq/YSeYUG0f4e6PKnH93VWGWtZKi2cSTmusjFt1
         rUugcXlVSs7qPtb5lFYx6MCx369PiAVzK8AAn5kec4/xwhqss8yWZbpH9hyqRwr2E27W
         +4lqVWFN5u5NzrSp4Tf35deTm3AAaZpFJtlAuAem5eTpG3C7gJRHyChtjsdl/s/alJCw
         7wgaImx3h6XvUqW33dHOhMaBqJBFlMneuk7TkZZgmTLhemcAnefAXxE+kVMnh5cO2DnP
         43Pw==
X-Gm-Message-State: AOJu0Yz6LefmCkatmB58Yfq5TQHy1E6aA6Z/73SEW+8syPziu4hDSzRe
	pIlOpWFEOhx6+C97J000ek8ZeZ86tGOPsJWzcMpfivVDKdLrdVI41DSZhxt9
X-Google-Smtp-Source: AGHT+IFy7j1mtir/BN+fbw5XLeFZ1javRLOOH6VEx0JDxGM9jI/2OHBAnepiwTXYU3mCwtl59pljkw==
X-Received: by 2002:a05:600c:4f44:b0:431:5f1c:8352 with SMTP id 5b1f17b1804b1-432cce680aemr26436625e9.5.1731428413101;
        Tue, 12 Nov 2024 08:20:13 -0800 (PST)
Received: from localhost.localdomain ([156.197.234.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b3de8710sm197427215e9.17.2024.11.12.08.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 08:20:12 -0800 (PST)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Date: Tue, 12 Nov 2024 18:20:07 +0200
Message-ID: <20241112162008.370231-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_082015_074038_41CBD3AD 
X-CRM114-Status: GOOD (  12.57  )
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
Subject: [PATCH 2/2] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
the struct block area, Causing a heap-overflow.

Since `maxlen` is an unsigned integer representing the length of name,
It can be negative, So it overflows to large numbers, Causing strnlen()
to overflow.

So we can just change the type of maxlen to signed and check if it's negative.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 drivers/of/fdt.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 2c3ea31394..13d0b8be54 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -176,7 +176,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 	void *dt_strings;
 	struct fdt_header f;
 	int ret;
-	unsigned int maxlen;
+	int maxlen;
 	const struct fdt_header *fdt = infdt;
 
 	ret = fdt_parse_header(infdt, size, &f);
@@ -210,6 +210,12 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			maxlen = (unsigned long)fdt + f.off_dt_struct +
 				f.size_dt_struct - (unsigned long)name;
 
+			if(maxlen < 0)
+			{
+				ret = -ESPIPE;
+				goto err;
+			}
+
 			len = strnlen(name, maxlen + 1);
 			if (len > maxlen) {
 				ret = -ESPIPE;
-- 
2.43.0



