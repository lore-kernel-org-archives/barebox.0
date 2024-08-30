Delivery-date: Fri, 30 Aug 2024 07:39:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sjuMI-00Ep43-0K
	for lore@lore.pengutronix.de;
	Fri, 30 Aug 2024 07:39:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sjuMH-0002LH-G5
	for lore@pengutronix.de; Fri, 30 Aug 2024 07:39:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sb20Vc8Z0e52ommreEaZEuB8VKb2fcdokjsAV+9/fHE=; b=tbOV5Jb4BTzTP+F9COu49qpjel
	5ydcuUWhDmHOUbRB+5u2R+k3jBysRm6UooCn3LZ16tRFyE1lnfsxrIch4bVCCjqLmbIyhDqyWloiS
	4WMc2KmE5eXPmUX5eAfeIhbLR1uhBX7mHLBdcI++3TE9eP5wNelH/YzSkMVAVIfFiWP3z9hOY2Tju
	BhT4mZBHQVLK/fvnitAj2+cugqrANvrCr50gOoX+6Rsox4kWLCUJHMNKQBXuZGkcqR1E5vhGfjp6l
	Qla6uY/yHGgNtZ6tXn6bUZ6TcaRZyMYj5uxq9AdqbvAZTp/O9uUNu0JEOcsdS9QyACHdvPnrNOZQY
	DiIj3oIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjuLZ-00000004pcg-28LB;
	Fri, 30 Aug 2024 05:38:57 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjuLV-00000004pbM-2Vx5
	for barebox@lists.infradead.org;
	Fri, 30 Aug 2024 05:38:54 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2f409c87b07so16984731fa.0
        for <barebox@lists.infradead.org>; Thu, 29 Aug 2024 22:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724996331; x=1725601131; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sb20Vc8Z0e52ommreEaZEuB8VKb2fcdokjsAV+9/fHE=;
        b=DzP2aFMfgjm5kB+MKOPvlu3xBDDpTPwK1OnmkwbrUc7uh97QdXuVLW9++hdMX3irkr
         99rhmMiRShBNBi5vYknmP0GnQbWvAv86dqAHS1JqAoooz6Dg7uhXBjVP+7GA9yyaDDKP
         A2xZcfBKuVu+b2CfG5DzrlMfWuJ6H6g/ve45eelEuV+ywcqYyeMGcOIA87w96HLJsJFK
         XD4vAMLnmIE0YzFVQl9pvhGI4Y8ZrotFdyfrQlGwRaEcwIz+CJDr33WvWka3gJSEK0+Q
         +1HUIXW6p/j902TidAx1okyOSEqVpGj8bFAAtNUzeUskume69S/UqTBSncGgVaiG5pRS
         n/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724996331; x=1725601131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sb20Vc8Z0e52ommreEaZEuB8VKb2fcdokjsAV+9/fHE=;
        b=NqNcL7Ox5W7ACAk2n5cO5OmLZQBL865T3yuBVWxQ/EzItUSuLvu2Ch7FcuR/Re500Z
         1Bb4jWRZFPZcmSCcsgFjToHK3dOwIfhqgPYz+gFkFo3CxUVxGsqiLBcdU6OkPnJ8hTQp
         KD57/00P0N+QFOyvvtxboJcOMCIzeAv3nTN2huzuTGU+FgoYkF+uHqb+ZWd5gReuiySu
         DwpVGBUaePdZVpORGEl8ISo55BWNlknxBa3viqolAXV1eMl7Yx/j7I7EpLnv6d3YFbXc
         hy0u4f8mOsfmRhuRaPXYFoR3Mz64lnDbvsOw+aOVfKsV2ZHK+orDSpcRogLejgEbtrGF
         9qkQ==
X-Gm-Message-State: AOJu0Ywsr2umTDSmdk4EqJubovqB510aoUDwaNVpZIaTC2e6bBqUZK/Q
	zrDLgHC+7h3ACblEdEZPZEtxBrlaOAjHFC50RKmUyCspE8+VsVZAywyTbQ==
X-Google-Smtp-Source: AGHT+IGL1Syq1kwILcpLfy1zfz3QzYDf40qPu0dFw62Qyz5czjBgccf8Gfok7lbqv/FH2PB0sGCEjg==
X-Received: by 2002:a2e:6111:0:b0:2f5:1fa7:ac3a with SMTP id 38308e7fff4ca-2f6103f68cemr28647321fa.28.1724996330243;
        Thu, 29 Aug 2024 22:38:50 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614ed1817sm4785641fa.14.2024.08.29.22.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 22:38:49 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 30 Aug 2024 08:38:39 +0300
Message-Id: <20240830053839.4201-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_223853_658338_6AC4870C 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] clk: rockchip: clk-rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The 32kHz input clock is named "xin32k" in the driver,
so the name "32k" appears to be a typo in this case. Lets fix this.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 68565a188c..9fcee08738 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -519,7 +519,7 @@ PNAME(pmu_200m_100m_p)			= { "clk_pmu1_200m_src", "clk_pmu1_100m_src" };
 PNAME(pmu_300m_24m_p)			= { "clk_300m_src", "xin24m" };
 PNAME(pmu_400m_24m_p)			= { "clk_400m_src", "xin24m" };
 PNAME(pmu_100m_50m_24m_src_p)		= { "clk_pmu1_100m_src", "clk_pmu1_50m_src", "xin24m" };
-PNAME(pmu_24m_32k_100m_src_p)		= { "xin24m", "32k", "clk_pmu1_100m_src" };
+PNAME(pmu_24m_32k_100m_src_p)		= { "xin24m", "xin32k", "clk_pmu1_100m_src" };
 PNAME(hclk_pmu1_root_p)			= { "clk_pmu1_200m_src", "clk_pmu1_100m_src", "clk_pmu1_50m_src", "xin24m" };
 PNAME(hclk_pmu_cm0_root_p)		= { "clk_pmu1_400m_src", "clk_pmu1_200m_src", "clk_pmu1_100m_src", "xin24m" };
 PNAME(mclk_pdm0_p)			= { "clk_pmu1_300m_src", "clk_pmu1_200m_src" };
-- 
2.39.1



