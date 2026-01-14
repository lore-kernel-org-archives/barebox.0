Delivery-date: Wed, 14 Jan 2026 11:10:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxpj-001CH1-1b
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 11:10:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxpi-0000DI-Dy
	for lore@pengutronix.de; Wed, 14 Jan 2026 11:10:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=L805JZ7VPJxreZepnB1QCtE4lkmrEpjc7j36quBSBs8=; b=SuUkZfW1qFW+1spzhUv+o/Z7gV
	PFDRz9ZUfouU1RoX4ur7j36bAREgBZzjdlyVhbJmS49J+xh6ViHkzEeMTAby5It4uRLIVa5J81GSt
	sSPOgE3Xv6WRG+c4FNWb0vaPRKXV3n7DKYsiiPpLCMUltEB2u+dJ8p/qxtGXQInGdFZ9uVtdQ+JgE
	obTvZ2LcmivHj7SE5N9jsKYQxPmjeW/GZMEKuohQXtfUxDQzEh1aB9Weh7MxJZJEbAdXiPLG3aaIs
	hka/S4K+Ey9c54hV7AysriifrEPF08i/vFMUS5yYmsztDO3PjabQxryjej4nrewZ55271akMpubzR
	yWFmTzsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxol-00000008hXL-0yRi;
	Wed, 14 Jan 2026 10:09:35 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxof-00000008hUi-2O6h
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 10:09:31 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-59b834e3d64so6155470e87.2
        for <barebox@lists.infradead.org>; Wed, 14 Jan 2026 02:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768385367; x=1768990167; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L805JZ7VPJxreZepnB1QCtE4lkmrEpjc7j36quBSBs8=;
        b=fi0gssMNVlEvKBx1uxgm+kNchpiheXliF4b7uQaPb7geJhV8v+TCtyB8nXiQSAPCtW
         78vZEYpc/uSggr4oeK0cbOb+5zL396tfDJNnJF89PtQ1iER1GpkmjFrvUFdJqZ+0ytY+
         Y32KDRZ3iu0D8TDX0ElaePm7pnz4954IFv94b1O439Mm+brY2IluORTx5wgy3peOnHDc
         7xEm+Iz/iNJsvnkz2E/JLJ2bmenox3OXOMkHEEf/R/+YWrFteJVJgpndlPBKZPzpvImJ
         XkrP7+ma/yi9PZNnCvsSSF5nDftwfdSCbmsj9eWzkMqt+aiDO5Bi93fY+9MKSQh0/HGv
         cmQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768385367; x=1768990167;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L805JZ7VPJxreZepnB1QCtE4lkmrEpjc7j36quBSBs8=;
        b=QQp1DfX1TjW/8w6CJUMd4vPTFpIfFyiNr+A8fHzM/yRtjXLF8Rt5U2Q5A5dnxaXLrU
         58e1v++Vr/+dT1T+f/hJCI0mE4yrffLWUNE1pt9AgBKfhJSDEpoXB59dwwncO7ODxPHH
         OgrUQ/Sm72HhKXaSF1bJ2E0lSjjeGe5OlBdxI06Gn9yV+RYXnvuUjRH/Xod9mV/2inZP
         ozL5PLOB/JRGC0sAOf5BxTvXQX+ZanOl350uNQe3d6SkLmx6uPNmpAcb4LonJh9FMdz3
         D5MdAWhUv3JxIPuwO7dnOF5R5DpAgGj8c2Wo2tIrk46CcZsfEymFym8pfmJSOGFOKp3t
         EQJw==
X-Gm-Message-State: AOJu0YxSLv6C/wQ437iRScwjQotJNZNWciHDadWuLOVMKLltpggdrufA
	Gjxhbus+xpOq9/PHELE0w110r43cK0DilTQ++WahOf0PJdD+tPBVqRThvT2CjnOK
X-Gm-Gg: AY/fxX5wFs3lnWfsOGIfaLffX5STOHfgXqiOzgIw8xICWiPaybzvkfJPTKhXX8krNw/
	KkqUBTyM2v/Z1oWbKd6OkycHwleCbjCN1s1ShvRDqoBoZ2nEwKz08wHYuLP9kWad/OAk9bZOnpe
	WlNigcUPOpTvBnkyEhdCsbLQK7myAQlMmtSFVbBfW/C0Ju0OSdm1j/WVU/KjvhQi3kWGyzsoHuo
	Ti1MTOWIZ88coeJ4dzIpBCa1cmqUu8n8DKhZrdZ6gHxmhi6H0SbaHLvx2fdkuQttQUgWiq/6/PU
	ykB44q3QPBCjD/IaNWz3O4eBZ3rT8JCmPJa6DFwaWo8FEyIORvCNsbx3eOVf5Z08kNK8XyhwUCH
	sjK1zciV7DHq7hVZWYHfsLI1RLu+bvUM62pQUMwky4FmpucR3R4N2O8h88G057M0oWBjz7V6JM9
	P3jJa7fsCNuMpYtJ2BuVGCxkWO
X-Received: by 2002:a05:6512:110a:b0:59b:79e7:c8e4 with SMTP id 2adb3069b0e04-59ba0f8981fmr748607e87.49.1768385366268;
        Wed, 14 Jan 2026 02:09:26 -0800 (PST)
Received: from gentoo.sknt.ru ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba104588dsm555771e87.73.2026.01.14.02.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:09:25 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 14 Jan 2026 13:09:23 +0300
Message-ID: <20260114100923.1164051-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_020929_615874_CC0C8B98 
X-CRM114-Status: GOOD (  13.43  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mtd: nand: mxc_nand: use clk_get_optional for clock handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On some platforms like i.MX51, the clock driver does not support GATE clocks,
and the clocks are always on. The current driver uses clk_get which fails
when the clock is not found, preventing the driver from probing.

This patch changes clk_get to clk_get_optional, allowing the driver to
continue probing even if the clock is not provided, assuming it is always
enabled.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mtd/nand/raw/mxc_nand.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index de2ad2a028..e328eb0815 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1809,7 +1809,8 @@ static int mxcnd_probe(struct device *dev)
 	nand_set_controller_data(this, host);
 	nand_set_flash_node(this, dev->of_node);
 
-	host->clk = clk_get(dev, NULL);
+	/* Clock support might not be implemented, so use the optional variant */
+	host->clk = clk_get_optional(dev, NULL);
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
 
-- 
2.52.0



