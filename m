Delivery-date: Fri, 14 Mar 2025 12:04:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q5-00DyQQ-1C
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 12:04:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q3-00033n-12
	for lore@pengutronix.de; Fri, 14 Mar 2025 12:04:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ibInsZ3a0nOeOaMVCLMAGltWVNalYtLBEgnxAL/ozg=; b=k6wFx3DaZf8QBEEQ91HdNmafDr
	EA9Gj9KjKkFLHmIiwG0SHrUbkivoyR4v1GUPfnQL7jVwoI5ydJYokV4Upsd/iy0fN30Zv1URmPTaf
	GIkbJlNyEEI/8aBJVcVWxMSNFpz15xZfE4F5k3uDrSKcdINi+6tU1NyEmOyyUXUpqahoDKXjwvIM8
	IPlXMa6O40OtL6hPfZOaAe1chbMeuhA4YMLFngnIXcPDzw1PmKq01mNSaBsDhHgZWvdnbBnmK1pH/
	U92bUQqbZ4o0G9yL8HK90GzbduUxZVs/anmUAZwWnT15WiKkv36ewFzv+kNS7FQHo7J1ivEim38M4
	2jy4/LYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2pc-0000000DwAY-3hoU;
	Fri, 14 Mar 2025 11:04:00 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2TK-0000000DsoY-16f4
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 10:40:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741948850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0ibInsZ3a0nOeOaMVCLMAGltWVNalYtLBEgnxAL/ozg=;
	b=NqkhXMV9A6wrtETzECEbBIxztzYFD4S6EpxrSv472z+tHRldWh6jJKtQX+eSCkjzwxeOIR
	n1Kt33sWHW4pkxHLik8/lmj4koDEjw0fOzQf4X1DbwIPHRDi8B8A4/VBbc2+hVWZ9YBeEm
	c+r+CwsL2+xycTKt1t7rD9Pg3pe6sSO4YJ4AxGbc4qsE16VGeiVitWONCZSCPrLhZ6rURx
	IyW8Ao/zw5XIJqI/St70Yd8uStA06R8CnGD70/EetZl3nxb7+f2UJPfMUsMCu+LpRdl7Ux
	wR3qdd4hOmL/vt6Bx/CsQT8/6kiYk23XrSq5nXZGRuRX2jOGQThcG0sTFtmJLA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 59e68200 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 11:40:50 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 11:40:32 +0100
Message-ID: <20250314104034.13637-5-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314104034.13637-1-jmaselbas@zdiv.net>
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_034058_559283_2AA7DE29 
X-CRM114-Status: UNSURE (   5.91  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] pmdomain: ti-k3: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function basprintf was not defined, include common.h which includes
stdio.h and defines basprintf

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/pmdomain/ti/ti-k3.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pmdomain/ti/ti-k3.c b/drivers/pmdomain/ti/ti-k3.c
index 33bffeaca0..f53e907386 100644
--- a/drivers/pmdomain/ti/ti-k3.c
+++ b/drivers/pmdomain/ti/ti-k3.c
@@ -8,6 +8,7 @@
 
 #define pr_fmt(fmt)     "ti-k3-pm-domain: " fmt
 
+#include <common.h>
 #include <io.h>
 #include <of_device.h>
 #include <malloc.h>
-- 
2.48.1



