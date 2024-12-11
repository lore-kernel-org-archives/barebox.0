Delivery-date: Wed, 11 Dec 2024 16:00:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLOCq-006olm-2R
	for lore@lore.pengutronix.de;
	Wed, 11 Dec 2024 16:00:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLOCq-0005Kx-MB
	for lore@pengutronix.de; Wed, 11 Dec 2024 16:00:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=22H+Pj4cRPNt7BDvGDog7hqmrKXR5/Ir1R6XJnAHJ18=; b=24Pyn3MasMflbQaB2tGXgUN8dH
	OC0kph7NTvykHycwKZeOwDPGCnoIzXGkqOWR8LIr2chjL1YS8bYns9tX/tqimu7diiemL4B9jVldU
	hjOykZm0Q72xCOwCY+lj5X1Cd20CbX1AolNCC1DmdiSsVmFe0X7JEwzFAAe0ZnZiMKyyOecVUxPEK
	OxzLQIwvxbVs/qNk8MJQCYOdknvf7vm/XNeYKuTRlnh7Za5El/C5lcuQzmnA4VWaq6wSpYM7Rv2yt
	bDekYxf5yqXxzisrkAqWrLwdWTWvtmVGLBInaaQJOqNfikvVKZhfDykgxtmyu6vjHC0RYEiT6yRCW
	erRydFTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLOCJ-0000000FDQj-2eV3;
	Wed, 11 Dec 2024 15:00:19 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLOCG-0000000FDQJ-2R1I
	for barebox@lists.infradead.org;
	Wed, 11 Dec 2024 15:00:17 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-43540bdb448so13218425e9.2
        for <barebox@lists.infradead.org>; Wed, 11 Dec 2024 07:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733929214; x=1734534014; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=22H+Pj4cRPNt7BDvGDog7hqmrKXR5/Ir1R6XJnAHJ18=;
        b=ZgTpyQZNUJCW63cyMC6RT7hRdeGtly52llGmUtl6TAPCkJ3O/BW/qTjpFhlF9AEtGe
         2u2psio+uyvWvXkyv7aQEsxxW2ZPGBq4M4d1pfJt4SjeGzRDr937KRx/Q7oGHJlnyDcE
         rUJhHAdbwcLoq0FBs22sqHUBc4BS0WGunL/yr43YoUTq93eFsQMvTpzfjV1mCAx0O/G2
         9sp9f/yjKlhsHhJmn3WyjcN17QmpSa9UYf7REwXGyY4GuKbZ5kFzx0F2GQz2jogl8MlC
         Wm1hL7foRv32yVrLr61ajiOf1vnh8xZWSNg1NXMvuMPNNBpQIsvR8dzH8cHUoSQS9/b9
         2L+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733929214; x=1734534014;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=22H+Pj4cRPNt7BDvGDog7hqmrKXR5/Ir1R6XJnAHJ18=;
        b=AttfKa3whRQxee29A+8HknugIKbT8Q2yk2v9vY8ckt2EzNy3yDleaQRg5kNnCKaBs+
         NAfnGXIZy0ZTPECZ2diHTIVzAE7rgmainF84HBAyi2MMvUYvZ12ncGV1QwmbTj9I5FT/
         6SmWeedXq5B6SgetWK6Tl7fkEcGNQPRvFajPa97OX1aNH5L2CKhvoiXDYG3zwptLkhvI
         OLT5ksIQJQiWOVY+5ANVFr5EfW0VHLHR639WhhLNahpHhZ9reffY6xfyw0gQjV69YF8q
         oZUjcVhT0eyVLzxl9M/VVEaXyVvTfchuamDTlLBbHvKnTFxrEljNewO/m5WG5c3gcE4Y
         jkVw==
X-Gm-Message-State: AOJu0YwZnwxGkAT2uDALBOPTeM2iobHCEjUJ0670thBZyNfBto7N2ols
	xobviAPvyakMKab118XRZfOhABR8dWj06eY9c9uCbLhOzopoqVF3H50J7w==
X-Gm-Gg: ASbGncuP/2dnzbrTnkBHk7DhRNJO7+7iFyGusOSuZ8aM7daN8ZznTbarU8p4jgk2Knh
	fYO1AucO507bK1ox6XJ0D/neJ116KpbJMvs0OWrXdU9lvaqG/NdFHVvBIzSTzViuvopz1vyisaq
	Ikbp8M9hyRccke6h1V+ZUpgITRVdiYwlCTj84haYNEdBbnwg5FeOUA5mFn9PRyNkpwsoENCETfc
	iwrhqhXrm6QFIUZh64ok1nMewRm3EIWCsTHISUTd3FgdTCdaZX+H2O3p3A+tZ0muEhW6v/XJaGZ
	Rjg=
X-Google-Smtp-Source: AGHT+IF98ja0cFCaNwfIbqOyYDuDEOlaHHSn5L0bQGc/U1qjvMiySSjbjiPfHMtLt412Y6ml++xFBw==
X-Received: by 2002:a05:6000:4609:b0:386:3327:bf85 with SMTP id ffacd0b85a97d-3864ced1fa5mr2970775f8f.53.1733929214026;
        Wed, 11 Dec 2024 07:00:14 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3878248f8e1sm1471461f8f.18.2024.12.11.07.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 07:00:13 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 11 Dec 2024 18:00:02 +0300
Message-Id: <20241211150002.2993689-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_070016_621185_F360D783 
X-CRM114-Status: GOOD (  10.77  )
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
Subject: [PATCH] ARM: rockchip: dmc fix LPDDR5 bank info for sys_reg version 3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch add support for additional bank info used by LPDDR5.
Taken from U-boot code, commit 875bc40 by YouMin Chen <cym@rock-chips.com>

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-rockchip/dmc.c |  7 ++++++-
 include/mach/rockchip/dmc.h  | 11 +++++++----
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 81c7e2649e..86e61f3116 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -58,7 +58,12 @@ static resource_size_t rockchip_sdram_size(u32 sys_reg2, u32 sys_reg3)
 		cs0_col = 9 + (sys_reg2 >> SYS_REG_COL_SHIFT(ch) & SYS_REG_COL_MASK);
 		cs1_col = cs0_col;
 
-		bk = 3 - ((sys_reg2 >> SYS_REG_BK_SHIFT(ch)) & SYS_REG_BK_MASK);
+		if (dram_type == LPDDR5)
+			/* LPDDR5: 0:8bank(bk=3), 1:16bank(bk=4) */
+			bk = 3 + ((sys_reg2 >> SYS_REG_BK_SHIFT(ch)) & SYS_REG_BK_MASK);
+		else
+			/* Other: 0:8bank(bk=3), 1:4bank(bk=2) */
+			bk = 3 - ((sys_reg2 >> SYS_REG_BK_SHIFT(ch)) & SYS_REG_BK_MASK);
 
 		cs0_row = sys_reg2 >> SYS_REG_CS0_ROW_SHIFT(ch) & SYS_REG_CS0_ROW_MASK;
 		cs1_row = sys_reg2 >> SYS_REG_CS1_ROW_SHIFT(ch) & SYS_REG_CS1_ROW_MASK;
diff --git a/include/mach/rockchip/dmc.h b/include/mach/rockchip/dmc.h
index ed256f6daf..3df9aa5e9c 100644
--- a/include/mach/rockchip/dmc.h
+++ b/include/mach/rockchip/dmc.h
@@ -12,10 +12,13 @@
 
 enum {
 	DDR4 = 0,
-	DDR3 = 0x3,
-	LPDDR2 = 0x5,
-	LPDDR3 = 0x6,
-	LPDDR4 = 0x7,
+	DDR3 = 3,
+	LPDDR2 = 5,
+	LPDDR3 = 6,
+	LPDDR4 = 7,
+	LPDDR4X = 8,
+	LPDDR5 = 9,
+	DDR5 = 10,
 	UNUSED = 0xFF
 };
 
-- 
2.38.2



