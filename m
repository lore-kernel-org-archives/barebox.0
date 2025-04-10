Delivery-date: Thu, 10 Apr 2025 14:08:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2qhx-00Aou9-21
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 14:08:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2qhx-0007gi-3S
	for lore@pengutronix.de; Thu, 10 Apr 2025 14:08:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1ZalTs97IMOkY+0ucw1n967dW3zGeWUn03FWxb1gXI4=; b=ezeB6Q5oPKsnGeFy/olzNA7vmR
	LQZwakSDR08CfBetIC3ac5WbFF/SGwcduWesbNdlAgGYqaBPvpXXTMMltYmd+7Lzv4NBJLurvofVM
	NqoMkhJPgcdxWFPGB/bi1QaBLCWdbPD7SEXuM/Wuyru/RSOBSLg7NVggyo9AbcAsAWoZhbX29r/Xj
	/WGduy4wXsjsZ075sQ840up0Wpy/MuLg+RC74F5ZbwnOg60ubPSc0dKqNHcgtOAWtkbtjz49Nnsfp
	C1rcbfUaSY8BcBHxCXDJf7+n1aWEmsZRPa9ldkyg5hGq6z2G2qlcFCsB07n89wsFWYE9+TMfthksv
	CRuBwDFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qhT-0000000ARRK-0ymj;
	Thu, 10 Apr 2025 12:08:07 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qhP-0000000ARPm-41VI
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 12:08:05 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e702cffe574so572660276.3
        for <barebox@lists.infradead.org>; Thu, 10 Apr 2025 05:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744286882; x=1744891682; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZalTs97IMOkY+0ucw1n967dW3zGeWUn03FWxb1gXI4=;
        b=PpAOTfe4s+dLutSlikHVD6TCtDOhQrBekcSMoLkJ4XsEjLN4yOVpmqQO3KsdbNUoSZ
         69y5f8h7HP4eSdhDBgPRYsf792jEF/LeQ2Q/IqVqe1ajksD4M5tKg7pPGqrAr27GSCiN
         tqM4xNc1tW53DyNHf/Yn3ltZ1wwQs9zPd9Dhksf04P2PpBQ3WJXGDeWJupk4zHhg8Z14
         A8asFPcTLlkkIWf6uHrfbNVbBxRin+AewjZL2fxlT5GdVFAGaOg0JLmznLM5+bqcmSo0
         a9AqzdJdzPgn0jf0VVsB44lL7dK9KmyifTPNJo/8Kj+n2zLjttDrjdmlsDwBsroxUtZY
         Orzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744286882; x=1744891682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZalTs97IMOkY+0ucw1n967dW3zGeWUn03FWxb1gXI4=;
        b=YhepQFwS30nqufB2iYkx/2YwRI/vyJIUmsOYPgk/Sp3KIicp82JYLct3+TcnClyM+q
         6QdbukyEuCCMX4yADuMEQLKsul4/r5Xoj55wbmzz5kaOYtyUPiQidwHPM41MbFqEBA60
         lKWqrpt51j2b1MzkAVJlL5NU8hzU+CM8rB7ZnF/5kGa1N4VDBqxlmnUk3NgLEs7Ex1iF
         ozNuxTAEzPEopBBwuQ+2oFTb9Y8ZL/9YZ921B//1XU3/41PKih5xKDIJS6sO/MjngCU1
         OJlBgVOTK4YURnXRP2iP3EaFSfCtIcTZr5WzAEePKbBqlIdBNDpagyqSWLua1lMZvrxr
         L7cw==
X-Gm-Message-State: AOJu0YyTiWCcIDxR0cvPzlZQZZymhkNTX2apW1lJzRvQrzrvItWwhVcN
	vpJZB0bTEWaq8hjmeGC+zeh4gjtZs5BfOdrPLc/ihjkdMjyktdOe5QvCPA==
X-Gm-Gg: ASbGncupKz0UK4AyjNelNcn5Alse7QYJQtKqobHnMSAgFkfVn+qY+WJFn1i2digXg8z
	8FiPLUurm/PzU1Ubwjp8+oMHTRPBtjjU+GkCMmxtk+9g2CK2Vn6EqBlOJzDoNSRoGQ1kmRnGsNU
	jnwG/OE2DGEuRhrGlSRRjh8+qJBGDIQdkN+BABAPgJfjqb7NX7rXdWzG2dx+pxt32CU/U+4Om3Y
	M2IEA2zdcJQxFyFtphqvqJ6+BOKvQqnIBrk1NXR0DKdxlrgxHbQzCXlkZEGlPnpg3p983c9DjwA
	t0LA6UEBoGuHwonAy4MW8J3+5ZgmsD48+JkCVo66CcyiXVmDv7yAvUWGECQiCSSmoW5pYXA3O2q
	n
X-Google-Smtp-Source: AGHT+IH+soVsFrAB5TIPzmdSnIXAurQAit+bSal+yqJ4eCSWRuDdbU1VEP7MD3UALNHbxZ2ekk69og==
X-Received: by 2002:a05:6902:2744:b0:e63:ebbf:7e6 with SMTP id 3f1490d57ef6-e703e2197f6mr4149196276.41.1744286881810;
        Thu, 10 Apr 2025 05:08:01 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7032404958sm674314276.11.2025.04.10.05.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 05:08:01 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 10 Apr 2025 15:07:45 +0300
Message-Id: <20250410120745.3696310-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
References: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_050803_995781_D89CA837 
X-CRM114-Status: GOOD (  11.67  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] clk: rockchip: Update RK3188 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch updates the RK3188-clk driver to reflect the latest
changes from the Linux kernel repository.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-rk3188.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 7e8c1f0d03..93a597ed4c 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -338,7 +338,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 
 	GATE(0, "pclkin_cif0", "ext_cif0", 0,
 			RK2928_CLKGATE_CON(3), 3, GFLAGS),
-	INVERTER(0, "pclk_cif0", "pclkin_cif0",
+	INVERTER(PCLK_CIF0, "pclk_cif0", "pclkin_cif0",
 			RK2928_CLKSEL_CON(30), 8, IFLAGS),
 
 	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),
@@ -596,7 +596,7 @@ static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
 
 	GATE(0, "pclkin_cif1", "ext_cif1", 0,
 			RK2928_CLKGATE_CON(3), 4, GFLAGS),
-	INVERTER(0, "pclk_cif1", "pclkin_cif1",
+	INVERTER(PCLK_CIF1, "pclk_cif1", "pclkin_cif1",
 			RK2928_CLKSEL_CON(30), 12, IFLAGS),
 
 	COMPOSITE(0, "aclk_gpu_src", mux_pll_src_cpll_gpll_p, 0,
-- 
2.39.1



