Delivery-date: Mon, 10 Nov 2025 21:56:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYwE-00HVl9-15
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:56:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYwD-0005LV-Pm
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:56:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T+KI/g7yrbF5IZkQHD7bFjGxBebQDXa6VHVW/zGvQ3U=; b=MIPj8Pm4V5zKJw33E9C1LtB0hK
	agtfeYiwszlLUIMD0n+g2qhmjXOQVgCVos/XmvvHPqesFpRayqJsmtppY5LG2aO74134HBp0FV8O3
	oNzMCB7jd0q6LWmhWiSxn6QTgW1Ylc5XkMZpRspqwminJPJyjBtFDIu/XAkcB/vgZ7Fb03Ha92Y0q
	GRpXHWFhgvwEdY9KjQfSRt/iWy9zy9L1X4lzNc88DF6aC9NlBMlo8l5eVrwxXZVenQOAZgm/Lhv61
	OYpvtwYY739lz01rRQ1EkwVY1v4mzOFHDGWRrvwuDtPusuQaHzpUlO/YlRhfsLpG7PO29ctQGxCoe
	Qg32XX4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYvn-000000068Kq-0pWo;
	Mon, 10 Nov 2025 20:56:07 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYvj-000000068HY-17Uk
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:56:06 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-47778704516so9189305e9.3
        for <barebox@lists.infradead.org>; Mon, 10 Nov 2025 12:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762808161; x=1763412961; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T+KI/g7yrbF5IZkQHD7bFjGxBebQDXa6VHVW/zGvQ3U=;
        b=JnSv4scRW6j7hs189vSGodGFZ5nZRay3szmDRlDzkhW4K7jGZon3n1yBa52MY1xt5x
         fKFGpjtTvQTDLJlZP0jhUDDyqGh5ORJZ83SOVZleU0VSgp1B1kD2dc6vSRHoiNBOcKbq
         qYDm60AU/k2NhsaAYY9fTBtuoKVz0/NjgfxrvE5+4rGVA3QQX3xO5tMu8mWVHZ9eiArv
         RK8vZ/3dzm3m5nhCOjdGicNK9CgpM7s0JJPtwlFHenw+Hd+Tw6o+rDpcbt4kHU76ONtW
         cueC+hVDXdhaY+vWDaMNks8amFsW9My15xtjov1+4irj8gepPLrFCF57AGISaBGqptrE
         3BFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762808161; x=1763412961;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T+KI/g7yrbF5IZkQHD7bFjGxBebQDXa6VHVW/zGvQ3U=;
        b=ZFghGOfdRpVlLKyWgcaVC2Fqr51NDR/LqFl73lV5xHqWUatMjVA6WJ6RE5MFhVrbku
         L+t5gCIUtAtuSIBUVYI92GoTzjajKIGe/LZFo+fOlbCbc2XX5r5rfeJx6gu+YHmnTSgH
         YcMnM37ZjTfoO+opVhy0znQZ8jjeq1WBWxF4uXe7sqjIcAOPh3bhd3HFko4dEPcm83T8
         JMzOxQ1uK6afpuxVIft7TUjjhtphxpB6YSXMzLa20XBRRzYoriNnBQvOEZP9hKh/j/S5
         t821Mmk15UYtkEp16DXBiS0NshwMuLT4ZVO4XH6ZXJ/FGhTLqlVxV5GRuikU+fGfisz/
         QWdA==
X-Gm-Message-State: AOJu0YxaoA5osf+6LNTPu/6h7WvsLy8JKXMv//ZacAt0Lb1tueg0fMsG
	2HRjdkiSEuLwaqSh1rr/bvTbQnpRnEIeWEoz6rAP+ZFt0C9W+8k2CRvTjcTrER6e
X-Gm-Gg: ASbGncuNDq/WgrESbu2YBb9PN9pcPn/LeQnPi+Vid0bvBuoh7PQJ/EI+g8ROuiUQGg6
	2F/LcIiaTy5ZkTXJ0Ru3dbUDPdSd8nZYrf7MRAFGOLMpa1ZLgZ2R4R/Iv4z9sTfc69qwH1flVdx
	tavzRVCP+qM+sOd9AmZUy22CDsdwoR1f3idGjecuNwJjR1xJrsy96uuVTDoUdSDKTiq8EDUuzhP
	JKmHKMdLYyxctkJgMPEF2KIhz/MXrgnJyfCUvXMTKaFYCKTz2fLjtjRMs/2YQe+hyTu2QhCnoYy
	l6deG0h25LQ/y+hWGC+MgcVllciUg6YiC17WTkePYehrWAjHtnIh82OnB8WuIsG+3MxEYtwDduR
	1xTbzqZLlAaCp/bF+Tz7NqzuaNSLxxnor6mQ6ywKuFvRlnRr4+YzKAj9Ww9fw+7HvYsjHO22t8C
	Uda8s7Bcq96x9r5+Ek2p3/FVKrFcei+AhFI/94dBkFgikBeqqpwFHR3Nxd/f1sHPQ6pLcuYDRNC
	ak+LKyQl80fnrwiTEywjW8r5DvMl3IOVpdsevXpCDnIn0gSXJ6L/oBrO81EIcar8IpAMXsQjzMO
	PnujrdeRXzJCdXNMQ84buKjhgL6tiMOl8BhEQgSjfA==
X-Google-Smtp-Source: AGHT+IGytV2qsk13ej00nT/TLDJsCYbDyTwWEQS9p9K63ybh36jyA4DzV2SqRkBITZGURoxwdzzyrw==
X-Received: by 2002:a05:600c:a05:b0:477:54cd:202e with SMTP id 5b1f17b1804b1-4777322eeb2mr89727475e9.2.1762808160689;
        Mon, 10 Nov 2025 12:56:00 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-3793-f246-f72d-16b7.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:3793:f246:f72d:16b7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775cdc33c8sm333772815e9.2.2025.11.10.12.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 12:56:00 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Mon, 10 Nov 2025 21:55:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-fixup_docs-v1-1-1acaf5593d26@gmail.com>
X-B4-Tracking: v=1; b=H4sIAEJREmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0MD3bTMitKC+JT85GJdA1Mzs0QDAwsTc2NTJaCGgqJUoCzYsOjY2lo
 Ac3OKb1wAAAA=
X-Change-ID: 20251110-fixup_docs-0566a0084735
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_125603_326107_F6AC382A 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: defaultenv-2: Document C-based init script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a note to clarify that the default init script is now implemented in
C rather than as a shell script.

Fixes: 90df2a955e3c ("defaultenv: Convert init script to C")
Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 Documentation/user/defaultenv-2.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index 3715fd770d9d89d52172bcc1e7564d871977aa30..e5cb4a51bfad47e5022fb719d513a201519334e5 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -50,9 +50,10 @@ and their respective included directories in ``defaultenv/Makefile``:
 /env/bin/init
 -------------
 
-This script is executed by the barebox startup code after initialization.
-In defaultenv-2, this script will define and set a number of global
-variables, followed by sourcing all of the scripts in ``/env/init/`` with:
+The default init script is now written in C. However, you can still define
+your own ``/env/bin/init`` script and it will take precedence over the
+built-in C implementation.
+Example for simple init script:
 
 .. code-block:: sh
 

---
base-commit: 0633a4db9d2351234b565b55978ce068b387eb2d
change-id: 20251110-fixup_docs-0566a0084735

Best regards,
-- 
Sohaib Mohamed <sohaib.amhmd@gmail.com>



