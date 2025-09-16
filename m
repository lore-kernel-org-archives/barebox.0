Delivery-date: Tue, 16 Sep 2025 06:55:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjO-003ZID-1H
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:55:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjN-0004iY-Rd
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:55:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=; b=TQiSQEdC3JxWkIGjMBpjl+veVp
	YUeYEiqhUtQImJaHzzH3qkbAXLfoDd8VF1PeW+jkA90cGvXgU6yPmgQ1R8e6jVBfaeJXnAIvcf4gm
	n9lSUBoOVBrbY7lDUMev/ZmJkp5cJRg/SaDIRWvdPuFX32byQnB+3UogEnQKnFYv96TYCcK7Fuyrc
	/50FR5j/s7k7BzDvEKH5L4cn+Bk5techoi/xcpPEJJ8aHVuATG2k8Dq41p+SkhBHJAV4bn/vVn29I
	vFtXCTDy47gjQl1GcRv65zqadijs3SJ5T6KHt6EmCLtyuXf7yR5EymY+eFOnKdHIgGWaZVrV9Q7XQ
	cy74Lt3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNis-00000006kT3-2Gdd;
	Tue, 16 Sep 2025 04:55:22 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNiq-00000006kR0-0NXd
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:21 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3ebf23c0d27so683685f8f.0
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998518; x=1758603318; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=;
        b=hpzYOHoISXak8XXAIRAgqhB97ZxcvIm5ZeTLyb2pRD6+aqzeyVYzC4DVvHa+2EgNGs
         PaLLvvlHSIynA0rw/7yJcFFHZt20XarZVrCDp7vUAO/aVncqI/GOSVYEvVaNj1WcDXJd
         iBKwZ6YxTYhdpSl/GYDO8yX5dWsbYOjDHYyrhSmwlhFUU1ZZEYfR0q44IgS4dTlFbop0
         d87ANhtojx9JVcgskr4WLl2SvllkzqRNdk8cVpyepqZFoHTuwqLn8ifrT83/wMDqZz4e
         2TcUCYs0ComS3jVvdvjjjI/IyFuVZ0m1SvFfr9BjNNoVCWW5+V6Mg7Pi7XY51LY4FJsG
         n9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998518; x=1758603318;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=;
        b=X6vfkh4NR52lHQHKJQdtDpTyqNEvrTPNnfzNo810fS6rWPd8981eORWeg33Ek/185I
         8DX6rGgVvdP+/ZmkAVG25heR/Bl8M4WgTaETEV5UcP61TjW05KtIXfI693ZlF0De/6vx
         nCXzWJezhd9/BSY/GjLg46LnAGGbn1GaFCeBJ0Bf7l89p9rQm1s55WD30nERann6Gylh
         l1UOl5s1hJKIddH70LwFwD2iPNcsgGT7suLwcFdyChRys0SxW04Y/HtwGaOBJ9BVr9AX
         bOIz5wlODS7/IdeQyGfVKEvgHlJ2/BLUQI5mwWkfRLrpGVEA2YbL5pUmX8kQDsLeDuiz
         6DsQ==
X-Gm-Message-State: AOJu0YxaS2sSKJFd7AG+odzKy2/THS+tla7GwmiI0Uu5JJp/ChCJHuRO
	YOCG4e61GQvHynnZ3uPJfe9yhLD+Mp6GcPjjDHbyzBCsQE4H9kM0JY10
X-Gm-Gg: ASbGncsOaLcKjjYwjI/APytJONamQWiFSiGJoXsBxj7N1yWE73uxOX5l4OJ33m8auwB
	WWwg4CKdxliXf2j8PSaLCTgCc2MyEiyZ1XAo7gLw+tA4j1q+wX6HS0Z9ou54nCithKNDv9F3y5s
	l/l9Jar1x/pON3nrRd/r9448xS6HWIUTUaZztwyJ4lqicCgdv6gDjCD7YEHOY+Yl/Zseg08xABl
	ADqldnpH3B1NedziALcGyowg25yemR3XrItWdxlhpByRWHp/uyOGV1xydakSBKljIv2D81+s0rz
	CVie9qzj/39YB5cmLMeuxzJSRVbj+1biapI3+nt/Y/5ggsME7nhCp1jvEIQo75a9btrd2pI/4cR
	2cyCwPd2WHIBKDcmcDRJXRS6gKQVllWv0QN0kB/Ll9PNUTm9Nmlvdr1CUjzHV1typsh4sVfQT6x
	C9CTXZZi0IPRiRPdhBoc6usQGIaWIAJhww
X-Google-Smtp-Source: AGHT+IHLu8r91wuKa6SdGJaGONFrD3HNBAh5+uLKFOOsnoGUW3gLcnct+Nq/0O63CyFHl73Ri+nIVA==
X-Received: by 2002:a05:6000:4203:b0:3ea:e0fd:28e4 with SMTP id ffacd0b85a97d-3eae0fd2dbamr4102428f8f.42.1757998518225;
        Mon, 15 Sep 2025 21:55:18 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:17 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:53 -0400
Message-Id: <20250916045500.907542-5-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215520_131222_A7D9587E 
X-CRM114-Status: UNSURE (   9.42  )
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
Subject: [PATCH v4 05/12] efi: payload: make selectable without COMPILE_TEST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/Kconfig b/efi/Kconfig
index 5f4c6713d539..5ae7ec92e5f8 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -6,7 +6,7 @@ config HAVE_EFI_PAYLOAD
 	bool
 
 config EFI_PAYLOAD
-	bool "Build as EFI payload" if COMPILE_TEST
+	bool "Build as EFI payload"
 	depends on HAVE_EFI_PAYLOAD
 	select PBL_FULLY_PIC if ARM64
 	select EFI
-- 
2.34.1



