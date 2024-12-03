Delivery-date: Tue, 03 Dec 2024 09:18:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIO7F-003QZR-24
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 09:18:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIO7F-0007g9-HR
	for lore@pengutronix.de; Tue, 03 Dec 2024 09:18:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m+Jn6B/Rw5Vm1+Zj7IaLMeAHYU926PHcuJS//SBaa7k=; b=gtXr5X3PpBOETlp8X/6HLKsGBe
	dpHHVv+cRwjUvIWddolIPEfMiwKwDwEzmcUbluvvu16q+Z0WBiAUrccEKh3xM708Ll/hZY3r8MKf8
	rmA7dRPNVMuOqykuolaXLYngVNZuZBkjpOnc97gq+L/OnqOJu+QSxeKccAR2EZO6qLQ+ZRQa2D4Zy
	Y4FAGsEri2NaLI0SpUX8QaYHBOA+sd/Khrk22vSRb/qMhQz6gGZAcYLNprQQDSM+9LMjzLVgIc9yV
	M/L9c8VsSmrkyCl82ZfPtH9e1OqVPhhbFtpfvSJtpnjMrJ18KVBZBxT/05h7iNqU3Spo5uky80bJj
	fukXo6tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIO6W-00000008fIB-3Fg5;
	Tue, 03 Dec 2024 08:17:56 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIO6U-00000008fHY-1Lwq
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 08:17:55 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2ffc380b1d0so51385721fa.0
        for <barebox@lists.infradead.org>; Tue, 03 Dec 2024 00:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733213872; x=1733818672; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m+Jn6B/Rw5Vm1+Zj7IaLMeAHYU926PHcuJS//SBaa7k=;
        b=dCU7fHgLgeDC4v3DRPtkNdmGvqGmfNHTAQafGYSov7SjtarxuZqfecGLxq+GXSt/Ln
         ana1gXClR4ZsEWKuLqkjVgihC8IhLXjnLxqIY6Cnrk2KPV1sax1QKmjnoOH11o3Rzxl7
         SVF/XfZ4p72dzOVpZQLUp4UzCKL4r22KZUBdL2RWPM36W95xTajAuiYyynDWCk9re7x9
         TsUI+MKraUOOCNus5IL3yz1EUDPE4iVOKgMHErZeRdiT17f1LC7FMHBLf6+j+TilmNIq
         gU/vkFHxCDSnfj++H1I66v9VEcgQhZgDEnbll+2EVZzoozsJflZKXYj88ic70JXL93D7
         qWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733213872; x=1733818672;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m+Jn6B/Rw5Vm1+Zj7IaLMeAHYU926PHcuJS//SBaa7k=;
        b=GSIPlf/U1K+Y474nEYTO/Exi0B5uubP8j3BEiX4wenqx9HCJmQzcx4mxRW8pLMJOQn
         kiynSEg9QEtpc1SWNvqaXpRehaQ+Jda4ZEJDtAq0safS2Gz7r8kdWhmSlBx/zASrKPId
         xlUTFKFn4Mo3sqoIT7GK0afZt3wRStrYG9KWuSQCKFpUZK7sDOLRKO25uOv6476MYYDd
         k4bC7jyBAzbkXEzN38B4Gq9Q+khHTdIUeuthcNC3n7XKygQ85dmzbQmzoaXOB3K0L8dR
         mW1qsISmm8fZFb58YTUAVTwYCfMaTDALTZSlBjf+aCYReIpF8k8rGNafmCAS9As5OF33
         x7+A==
X-Gm-Message-State: AOJu0Yzqp2mU8FRDvB6VPZwdgQJ1V0+gs+KMu0kdPM4CkkGLA+ZiXlIe
	yNGApNG5VPx4Cx/60UnHHOx08op5XgOjF8CamAGsHUDgvSXctfDP0s76TA==
X-Gm-Gg: ASbGnctJLY/Ql8N2+VtQcJpEZjIyoKaD25YbIsETLyg5SZop9WUt8wfXTyKfHBeX+pQ
	JIO4GuvcRwX4qn90Lox9ApTsIJcs8z3fv8tBr0TfTn/orA/y1/6VRGlbiiO1fvKNVi+q2jcoh+l
	5+8sW3I+tY2W97MEHKK121JwyD9WhfulDajss7GFLlMyJ4OBYNuldIzyAWWmCr9hkEPLjeKmypq
	CDulkTvhnex7nKSTgwaBJ4I8F59L/WPSDJNWA2aymPrk9STSXjeSjDVCvZPH893Vb0u8la9eA==
X-Google-Smtp-Source: AGHT+IG6LZE4b/8uKgEn9aNEwYfh4xotBoiTUA4rIstoevLYW984gbW3vHmv8gCyOkn1mtjgp92Xkw==
X-Received: by 2002:a05:651c:994:b0:2ff:e527:5331 with SMTP id 38308e7fff4ca-3000a26065fmr4362991fa.9.1733213871388;
        Tue, 03 Dec 2024 00:17:51 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfbb8dbbsm15597881fa.23.2024.12.03.00.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 00:17:49 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue,  3 Dec 2024 11:17:37 +0300
Message-Id: <20241203081737.11962-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_001754_362663_4BB96E46 
X-CRM114-Status: UNSURE (   9.85  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] pci: pcie-designware: Do not consider missing PCI device as an error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PCI device may not be present on the target board.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/pci/pcie-designware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 72820de282..b9bac9c4f2 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -250,7 +250,7 @@ int dw_pcie_wait_for_link(struct dw_pcie *pci)
 			break;
 	}
 
-	dev_err(pci->dev, "Phy link never came up\n");
+	dev_info(pci->dev, "Phy link never came up\n");
 
 	return -ETIMEDOUT;
 }
-- 
2.39.1



