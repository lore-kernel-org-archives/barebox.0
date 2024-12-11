Delivery-date: Wed, 11 Dec 2024 19:49:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLRm1-006swq-25
	for lore@lore.pengutronix.de;
	Wed, 11 Dec 2024 19:49:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLRm1-0004QC-KB
	for lore@pengutronix.de; Wed, 11 Dec 2024 19:49:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FGLyFjh0XyuWn79eWzcdgILlDWYLiZakFEZQLg/x6LU=; b=gnHZOPvoxGS9vh7YBgD9chqyyJ
	+dC4Uy9GrUjbI9VTuolJGRcSgaVypg6p9nxCJ014lki38T4bu6ZPZqHU1OiYguMLSsPqz0hKmsllv
	ibEwV216Z0/ey8zDTVPsO2OfSCDbUx9OEcw8B2Rhf6gHZceDoKbAgpLW0djQ0RVc618Pon8+zsZ1+
	Tk4vVDfyM1B8NNyczQZAyUX9XVk1bXDkif1/3Ki5x63G3MOzbj1AzCDyR28J2nhDqL5IA1tkM0mdQ
	y98VI7vuWizh1gw63hEEIwIMjC9Yda9+wpRhlWT/2sRza8rT1u+qd7lWbYbvK47RrNYrzxg15Moz0
	JA8NShZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLRlI-0000000FlQ0-0R5k;
	Wed, 11 Dec 2024 18:48:40 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLRlE-0000000FlO4-2PSn
	for barebox@lists.infradead.org;
	Wed, 11 Dec 2024 18:48:37 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-385e87b25f0so647341f8f.0
        for <barebox@lists.infradead.org>; Wed, 11 Dec 2024 10:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733942914; x=1734547714; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FGLyFjh0XyuWn79eWzcdgILlDWYLiZakFEZQLg/x6LU=;
        b=B0YHLSH3nyHK8vQmEvJqtYe95KohAtlcJpM6DET03K2lXvsyzgKw4K2Co9toXGbhen
         jcnROzuvqOwTZz70ocD7My0UK5ZKksnpxBYx65acbL8G6zggcl16dxIIgXr6fqmsWxRt
         1325n3Da3YeEUwgWqbbk31kSyLZhJwU8797qM/qh+SGh1ydsnwvYBon5QCyQ6kaOVPMW
         cnjgxHHLMlZPtPAdJ4Mm2z7PQsbKsiiLEDGq1M7hpStUwB9cNiLL8d4M1Hr2T9sB2AVw
         4DSJQ3t1sbBpPsXnJb08201wc2VQJnTT+swOvxlU9cx+G+1ip4JxIJLfFw4Sh0qlQ9ED
         NVow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733942914; x=1734547714;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FGLyFjh0XyuWn79eWzcdgILlDWYLiZakFEZQLg/x6LU=;
        b=AuJUtqZzhLhO5aXLfzD5n4NIPJ5HDVG88SPaK025UuS7olhaLVA6l6Eph5wCkHanpi
         60XWN3RfylW+d3LjEZ3XIysapPzGcbkFVGgId69EMPrURQpmsv6j83idJ16niQUP3nGl
         jRbNjW2Gc2GEPCneG1fcecgSVBPlMelyKZW17dpZzgUurnr4boXy52rH5vMV0vMhDXY5
         0JeZ7iqBjHHeaneEUQ4wha9/EPcEa0eFIw4t9czK7qmQ4aoFQAdbpfMeReVNZMxljjMa
         0ehPU4QnDnxvCG4tRjavpHOLjVgiUZoPQjoiUtSP2634AHCKZsCEyN3FYV48BG1G11/9
         V+Iw==
X-Gm-Message-State: AOJu0Yz8ZjmsZH8vnFJqjUxorzAHJtVbiZ+aKs9GnRcQG458TplX1MCs
	lUWHURnz4LTEHUeOmtDbtXDDFa5AGmQwZyhlLfmLnkjaTQE3AqpczXg4mw==
X-Gm-Gg: ASbGnctfPIOUQ2bNUN7rYXi8SWc5Xw2U8oeY3qaFNQckVrdsmRXUtVRvumv0bQg+53S
	b+VDrQEI2ASwWJX641Fm7sZkzgz5l+jorhJF3o7nRniGkaAoewpAFMUrXRAUNl+8h6jRJwc0U6n
	QNCsWVjJrC6Uhih2+uW95pp2iT6JSsRaEIo2hh0j022xWln2hHxnqJ+t/jmmy2hvzoYzL36bImY
	91wsiJaoW9wpCJPDDxF6Rp3pqqWO/CMMkdGvkMyig96pc3o2YM9Gk2buc1TsqTvw6qsQz14cShy
	KUo=
X-Google-Smtp-Source: AGHT+IFPYLXI5j1x95Gp7JhCQ0MfJFkwCDV5+Y6CUpsc1FcCa3WpiMiL9owOE9GCB7o7nFdK4WaXVw==
X-Received: by 2002:a5d:5f56:0:b0:385:f07a:f4cb with SMTP id ffacd0b85a97d-387887cd9ebmr246393f8f.8.1733942913720;
        Wed, 11 Dec 2024 10:48:33 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3878251dd0csm1841765f8f.101.2024.12.11.10.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 10:48:32 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 11 Dec 2024 21:48:21 +0300
Message-Id: <20241211184821.3013154-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_104836_613218_F7D1543E 
X-CRM114-Status: UNSURE (   8.91  )
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
Subject: [PATCH] clk: rk3588: Add reset line for HDMI Receiver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Export hdmirx_biu reset line required by the Synopsys
DesignWare HDMIRX Controller.
This change simply updates the rst-rk3588 driver to the current kernel state.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/rst-rk3588.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/rst-rk3588.c b/drivers/clk/rockchip/rst-rk3588.c
index 4ea6bbeb25..df07b60971 100644
--- a/drivers/clk/rockchip/rst-rk3588.c
+++ b/drivers/clk/rockchip/rst-rk3588.c
@@ -576,6 +576,7 @@ static const int rk3588_register_offset[] = {
 
 	/* SOFTRST_CON59 */
 	RK3588_CRU_RESET_OFFSET(SRST_A_HDCP1_BIU, 59, 6),
+	RK3588_CRU_RESET_OFFSET(SRST_A_HDMIRX_BIU, 59, 7),
 	RK3588_CRU_RESET_OFFSET(SRST_A_VO1_BIU, 59, 8),
 	RK3588_CRU_RESET_OFFSET(SRST_H_VOP1_BIU, 59, 9),
 	RK3588_CRU_RESET_OFFSET(SRST_H_VOP1_S_BIU, 59, 10),
-- 
2.38.2



