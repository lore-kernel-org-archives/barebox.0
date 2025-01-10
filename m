Delivery-date: Fri, 10 Jan 2025 08:51:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tW9nK-000Hlq-2C
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 08:51:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tW9nK-0007bp-SB
	for lore@pengutronix.de; Fri, 10 Jan 2025 08:51:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9MXrDbrvSxK3MFP4rM+zortHTkOlnTmxeYcRbNyT7Uc=; b=VsdNKFxRIWJZ4CzgHjB72C/c5N
	38S+p+oZxTU7ZkyBOHY1rPJNhh1XWOHYQbE+VVam28+gvJCNLoTwetf0XHaUcqgbJTZJEKyzZwMh5
	msbkLgCrH8QNhou5/NJ1vz4RFSnHu25nGoMDPChIgoDiy/oAE/rCrX3jIIeyiTpSCXzcPRqNxbvV6
	LjIDZNkVPPLR7KpKXZvJ2pBmnJDYwwzOVqrVxL50S4uBNfCdzyks0lvWmwS7hIjSk/NRLWSU+/sdx
	IGosOUxD28Heke3bm418sBUxQPZLRMhlkwXPS370Mg6SxpYvROqpJU+TCpCCVAm5WMM18IrxJdtbP
	YFQfyKnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW9mn-0000000ERUp-3DRX;
	Fri, 10 Jan 2025 07:50:29 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tW9mk-0000000ERTo-3xMw
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 07:50:28 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-53e389d8dc7so1783104e87.0
        for <barebox@lists.infradead.org>; Thu, 09 Jan 2025 23:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736495424; x=1737100224; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9MXrDbrvSxK3MFP4rM+zortHTkOlnTmxeYcRbNyT7Uc=;
        b=AgPcYuTO3q9/keYEBz5yAiHIfeQUTB7vwpDvNOff9fcv7vNG5X38UTdCV4Dv+Akejt
         IREkPYF1/GvauDqRlUOL94gTz7vw0A2fjX1l4mhIzvycgcoetS/JpRdtqnDEIT91C2Nt
         d9z5eg4YLzpM29/gN2qrJtVVgaM+upg7JhO+kMwMlnxvTWPcGUS/MwOZX0uP+S12skYK
         pPsdrHsAvB21KshzNC4Y2QrysVDHU+bCzMAtJRNu8V/ziKBroB9ws2k1iuJWm8AnUeQ1
         z3aA8AsPNUQu23PztD67UwE+ySloN+8+fWG/jgVQ1yFV/rD5+Or3x3dkFVED8LO8hnLy
         HoOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736495424; x=1737100224;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9MXrDbrvSxK3MFP4rM+zortHTkOlnTmxeYcRbNyT7Uc=;
        b=I1cur7GpbO7DfMbhpfnxBE75HHrgtoQZsAc7DqAWJiTx0qIlr1UGFIzFOIOG97qD0k
         MFGpJfawuGMUFOjVZFaWTQjYcRGs2swwm5e+tFsFGkDPEQb+w6qpnZqfSl+TGSjw7opZ
         sTSsMYWfSvBS4KcqJaTpVy/VOGHzFSBQXNdsUNyjjhhnu6hV+7nIoI/XvnBv/etZlW5n
         qiZ11+/xSmW62YqGCoa35cWw4LsyBz544Zku+yRe+MZoQMHADM/aqYFCm3Jx0hUruVUP
         vKElj7sGUHbrxRUSZerDu2xk6T4HYtNjbseI+QZzBeYq8qme8W+Rzd99yedqEeENEQVt
         glzQ==
X-Gm-Message-State: AOJu0YwU8bz4XMhYrd8y7t4RRPXZcn8UkUzoKCvXtncNJysP0LJqXHYA
	mqOVh9O1VWPVNVKbchbPznyQjkHK+AX8yuhMurPdsARfrfobsxTHfGq3xS5v
X-Gm-Gg: ASbGncuiNEzRdRRb5fGVtW8A1cuPzJRczXnVbOUODx5EsSKqmvpyftplmJu/0w/LNnT
	J6u3pTRzpAz+ofU+b+nhz+qz8zIqHCcGnpTVYzctCKdQR93viUR6j0jArA7YZ82Avd4X3VYmKJP
	fDAd8RFhdHWrLaNOxvxNIo9j8vUx2kmqhhJ9cph18ZP356NyIQ9NSLpIF44QIb2G+8IfozPf1FL
	YCuyWGkRS2CbzG42+gf9fGDWT/PpgUeSUQRb3BZBkC87dGaOfDi7W58xaEsjb1b9SyT8epwohXc
	dR3b
X-Google-Smtp-Source: AGHT+IELNX16kxQObtR4ML270lYGZUrDXtLkfyO+Tbv0y0cAlK1OSvq38ClirUGr3htDSSvJ7hsTpA==
X-Received: by 2002:a05:6512:1388:b0:540:1e17:10eb with SMTP id 2adb3069b0e04-54284811017mr3227027e87.48.1736495423722;
        Thu, 09 Jan 2025 23:50:23 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49f16sm436485e87.47.2025.01.09.23.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 23:50:21 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jan 2025 10:50:10 +0300
Message-Id: <20250110075010.28030-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_235026_996926_ED78A826 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] spi: Fix hang on spi_sync() when driver does not support transfer() call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When a driver does not support transfer() call, such as most QSPI drivers,
calling spi_sync() (e.g. with the "spi" command) will cause the system
to hang. Fix this by adding a function check.

barebox@Mega-Milas Informer SAMA5D2:/ spi -b 1 -c 0 0xaa
prefetch abort
pc : [<00000004>]    lr : [<27e266a4>]
sp : 27ff7c78  ip : 27ff7ce8  fp : 27e87410
r10: 27ff7d20  r9 : 00000000  r8 : 23f58128
r7 : 23f33c30  r6 : 27ff7c90  r5 : 27ff7d20  r4 : 27ff7c7c
r3 : 00000000  r2 : 27ff7cc4  r1 : 27ff7c90  r0 : 27ff7d20
Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
[<27e266a4>] (spi_sync+0xc8/0xdc) from [<27e2675c>] (spi_write_then_read+0xa4/0xac)
[<27e2675c>] (spi_write_then_read+0xa4/0xac) from [<27e438e4>] (do_spi+0x288/0x3e8)
[<27e438e4>] (do_spi+0x288/0x3e8) from [<27e05c38>] (execute_command+0x3c/0x80)
[<27e05c38>] (execute_command+0x3c/0x80) from [<27e0ee48>] (run_list_real+0x9a8/0xad8)
[<27e0ee48>] (run_list_real+0x9a8/0xad8) from [<27e0e2b4>] (parse_stream_outer+0x138/0x200)
[<27e0e2b4>] (parse_stream_outer+0x138/0x200) from [<27e0f180>] (run_shell+0x5c/0x90)
[<27e0f180>] (run_shell+0x5c/0x90) from [<27e018b4>] (run_init+0x108/0x288)
[<27e018b4>] (run_init+0x108/0x288) from [<27e01a8c>] (start_barebox+0x58/0xb4)
[<27e01a8c>] (start_barebox+0x58/0xb4) from [<27e5ee18>] (barebox_non_pbl_start+0xc8/0xe0)
[<27e5ee18>] (barebox_non_pbl_start+0xc8/0xe0) from [<27e00004>] (__bare_init_start+0x0/0x10)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/spi/spi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index c627d88954..c354c00e72 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -357,6 +357,9 @@ int spi_sync(struct spi_device *spi, struct spi_message *message)
 	int status;
 	int ret;
 
+	if (!spi->controller->transfer)
+		return -ENOTSUPP;
+
 	status = __spi_validate(spi, message);
 	if (status != 0)
 		return status;
-- 
2.39.1



