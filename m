Delivery-date: Tue, 14 Jan 2025 06:35:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXZa4-000tYE-16
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 06:35:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXZa3-0003AQ-Pl
	for lore@pengutronix.de; Tue, 14 Jan 2025 06:35:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7M/uynfdOKl/KfG9P1IuTZKA3bFPVEkc0aqkFCKcOB4=; b=wZltvTaw1qCKEc7yIdXdLR3KkO
	s3dxbQrMWG4NBR0DE1sanjQHYHustn1qloJQuB4BDMRQdQRV5r3EokOGlj48LSWcrm/907rWvZdfm
	o+lXKaM1DDQueQ8IKr3fH7u3hbSGKd2CanxjyZGnK+oLRnfX9pcgVtJ42IFA88hxszxLG2oaQEoqa
	SON4VLJg0JygUcOQTImHvT931XJKBV4j9Tr0T46jw9Hofe3+G7eFYVNpyfXJ1sVpS9fclCGj+sG2w
	48unqfRr2gEGTwfaW9eB7FuTetVLT53n5HDG/AIvJPFy3mCv1mSXf3oaQrB01lbOfuQg+ovj9Kgfc
	1AoEQ56A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXZZQ-00000007VMJ-1srb;
	Tue, 14 Jan 2025 05:34:32 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXZZN-00000007VL4-2aKv
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 05:34:30 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-54287a3ba3cso5101605e87.0
        for <barebox@lists.infradead.org>; Mon, 13 Jan 2025 21:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736832866; x=1737437666; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7M/uynfdOKl/KfG9P1IuTZKA3bFPVEkc0aqkFCKcOB4=;
        b=Uc/QbBTFwOkZmS3FeC3Ex/V6mKOKAdwTGb5uJCtvCNcWjJJ/ipwgPkrtxONmrr703r
         F+aQBISPK5f0zXedjnqtI7m2dqLdT2gwh/gPOuuklMgm9KcU1M0Z2RACWUQugzn8UDR8
         M2Q4QLnUJm1QvpmAMHTl3rk4Ukk3VH1NPVnXe0uzLnbexKkQlT/TdEYbcvZE085xLKyE
         N5JSD4/SHhOA8Jlxrtw72LG01JzCB8MygJSl57N/oINoRos6xP8Ou4SfOkkvvcnJvLUG
         bN7uHZX329eyNlZ7IhyDV8tcrrDaphJGiGlRvbAjrQMFZDnn4VIjPOIPB/Ialf/pYodK
         43/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736832866; x=1737437666;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7M/uynfdOKl/KfG9P1IuTZKA3bFPVEkc0aqkFCKcOB4=;
        b=WvhbxJtyX6FFU/qeh0y47r0i4lcXIcZuKJqKTa+eS87QRcAXUmpGOWtYFvmpcRVEO4
         MP3HtbXg963xxIROqUcNwt37fXf1R7Fn37ymhdNa1yQMwSbMURg2mhrtDVgeQOHQFATe
         t1y29z2YkyQ6iVtdaG/+JmSwrSPvaZodt4MNM61/C5hHoJ+2CL3y0BVwmSaWFqX72jYM
         YSjJiFRLMD5zlUFgWGIxrxAKwMXtWXnGmNC0tARya79Jjgk4LajCUkDsghSFXoZ3FiX0
         7kRshU6oLuwGBUfX2pfpurGUU6ddKZ/CgIWyFt5GjeIpzHl512/NRQHwMnPTWSZkWROO
         Zvrg==
X-Gm-Message-State: AOJu0Yztb6jbwmlktxFLxTLjzCIlU4rMLK6AGPrwFlOozLpqREwOFowa
	4vP0DJA2R7p8aOML6e6XjY9o8M68s2icvSvEB6olfGK1WIOE6YP1Ul6Jn0qzUlM=
X-Gm-Gg: ASbGncug6Yw3inqFpKofaqrf6JLVdZKnATD2KX0vc25oReic7v/xWBdYiTj4YfIZWpE
	NR/Ul5qC/fc0MWS+NEEqpMuW0lmh4+6ZgEUM4WLAbug5aXJJtBZWoLvNywgZB30foeUSaOVIXMG
	cX7KX5UiBQLJ0NKXLb8Yef/W1xNyWr0JQ6CuylFf75dEIXw8EN4g/ZClz34yhN7ASs+hoLo7sej
	PX4xz2cSTErYJLv3kUmkcJfYnUhb/k3hrFIIxL2QWJKRWv4ME4SRVjnbUTfie3+XrABOqafvdRu
	2x5G
X-Google-Smtp-Source: AGHT+IFZtnTgWBJVnKpWnWxTIRdtQujgQGmuj+6EuLWugJcS6MygF/GbDdqrFCgTNmwDA7PYC/E9PA==
X-Received: by 2002:a05:6512:e95:b0:542:223c:30f5 with SMTP id 2adb3069b0e04-5428c2dfc4fmr5632720e87.24.1736832866180;
        Mon, 13 Jan 2025 21:34:26 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49a28sm1531680e87.42.2025.01.13.21.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 21:34:23 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 14 Jan 2025 08:34:12 +0300
Message-Id: <20250114053412.6923-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_213429_663502_D67911E0 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mtd: Remove orphan symbol MTD_SST25L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MTD_SST25L KConfig option does nothing, so let's remove it.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mtd/devices/Kconfig | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
index 447d478133..3b8a83b301 100644
--- a/drivers/mtd/devices/Kconfig
+++ b/drivers/mtd/devices/Kconfig
@@ -39,16 +39,6 @@ config MTD_M25P80
 	  if you want to specify device partitioning or to use a device which
 	  doesn't support the JEDEC ID instruction.
 
-config MTD_SST25L
-	tristate "Support SST25L (non JEDEC) SPI Flash chips"
-	depends on MTD_M25P80
-	help
-	  This enables access to the non JEDEC SST25L SPI flash chips, used
-	  for program and data storage.
-
-	  Set up your spi devices with the right board-specific platform data,
-	  if you want to specify device partitioning.
-
 config MTD_DOCG3
 	bool "M-Systems Disk-On-Chip G3"
 	select BCH
-- 
2.39.1



