Delivery-date: Mon, 27 Jun 2022 12:27:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxZ-00GGQw-6U
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:27:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxa-0001RU-8K
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:27:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y3xXeE/s2jYdSXYpZCr2aAqDlIxWfsFJBbKg5g1642E=; b=oBuXicrp3/xmPxpmuDAViWAi5H
	yN2/8nf93Y5PlNJ16ChmTmDotheIB9BjQnFrzynHZ90RginUv/pd9iA7gUfjYBUkxL0x370ONSLs6
	Kw0LspLlTznMqaBR1vIYbbZ391ZpmWd/AJ9O2xC7JTLYrBkQLW5PDdA0TbSRZ7YlWKACaYVYk/mLk
	WOKNQtDvCPLwUVCQV22udGlQkl63SH62ouzBzBFwPL4ewZij30T10Q7NX6GV/Uj6J9vpEEBTAebBQ
	sLNWEXqinKRtiih2Xta3yInZX9TwyCTxPyocPxa950t+cLtENFZvvqm0V5tZXb/VAndF8hjVsopEY
	cqiDafKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lwC-0005vo-NC; Mon, 27 Jun 2022 10:25:49 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvh-0005dw-NT
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:19 +0000
Received: by mail-lj1-x22b.google.com with SMTP id bx13so1817161ljb.1
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y3xXeE/s2jYdSXYpZCr2aAqDlIxWfsFJBbKg5g1642E=;
        b=HHiQEBf67Lwr05xAZPcHsn0eHRgCOtIx7R4BtgUo5zRpmY812eYmjIHLqtS6MWatkC
         tGtH4Ys9P0bCPHryylDS0Q4N2ZakyjURcQTQ7L5MyJxPrrUshaO0JZzy3gnGt/a1JmRQ
         /uqHRmhOnVrANTZowbziUBUQsd37RYAmylAkvfIchVGwbqmKrQLh/1p5O/KYYuJJcl+e
         2tXyZ0KiPMEfLOCSTynqPbzMxurm6SqUPJKx+mzQDz7ze6qd788iQt+d9/qIkU8xra3W
         oVaeiovcGQpNYtoDFAOsXU7aT8orpanvHr1JZyItWl/nb0eNXCwevp7nPzfUupFPa1y0
         vHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y3xXeE/s2jYdSXYpZCr2aAqDlIxWfsFJBbKg5g1642E=;
        b=vqMMoJs6xpZ4LzZ60QFsxRCJuBH0MOyn/evk/Yz33Xu6AARlvD6TPu6RD8RQROHsnT
         S3dsE8o/tXLbePpayvDgDK+28ugo1V7pX5Lp0gyi4T493m+6rsBmiMs1UQRSRSoOOAiP
         rG1OqTxMBD9JPc8bZ02QrTqGdGuxUz2EWY2Tk5c56kppGLIPl7S/P1Gk+za1889EdXud
         ffSupGa5TjNOF3/kEGP69kyceMX3qt0IsxINsuFj28lVzf2tYZBHUuEtNdwr8GnyPQ6S
         3h+Bb43W3wszb7Yn8sjLUSimHAw8B8QcttP3koaM30cNRs9Qako6sG1fXTLmYHQaMj6X
         gWtA==
X-Gm-Message-State: AJIora/fDW6o5Cs+FxZh5pOv6UlHaqzYEDdEBpu1kyq1jBEq9wfMcWOX
	KFpoiFNg78dII0jqYjD+mNDdzVVu/ck=
X-Google-Smtp-Source: AGRyM1sXMrYrPKvsmtf6hJ2ur6X2+LsoZ5jIVJq3NN2+i0kG+T4h4W6SaoqL9y2TM2hcV6fsc3XXuA==
X-Received: by 2002:a2e:a289:0:b0:258:e917:36a4 with SMTP id k9-20020a2ea289000000b00258e91736a4mr6501469lja.510.1656325514767;
        Mon, 27 Jun 2022 03:25:14 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:14 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:24:59 +0300
Message-Id: <20220627102500.18427-8-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627102500.18427-1-eagle.alexander923@gmail.com>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032517_806943_F24C80CF 
X-CRM114-Status: UNSURE (   8.22  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] ARM: mxs: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

WARNING: unmet direct dependencies detected for EEPROM_AT24
Depends on [n]: I2C [=n]
Selected by [y]:
- MACH_CFA10036 [=y] && ARCH_MXS [=y] && ARCH_IMX28 [=y]

WARNING: unmet direct dependencies detected for I2C_GPIO
Depends on [n]: I2C [=n] && GENERIC_GPIO [=y]
Selected by [y]:
- MACH_CFA10036 [=y] && ARCH_MXS [=y] && ARCH_IMX28 [=y]

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-mxs/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 691c159e36..c8ef2c62af 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -79,6 +79,7 @@ config MACH_DUCKBILL
 config MACH_CFA10036
 	bool "cfa-10036"
 	select MXS_OCOTP
+	select I2C
 	select I2C_GPIO
 	select EEPROM_AT24
 	help
-- 
2.32.0



