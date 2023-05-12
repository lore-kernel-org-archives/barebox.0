Delivery-date: Fri, 12 May 2023 12:09:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxPiR-00Ez6c-2A
	for lore@lore.pengutronix.de; Fri, 12 May 2023 12:09:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxPiO-0003MP-U3
	for lore@pengutronix.de; Fri, 12 May 2023 12:09:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h1Mxs8/0QrKdSp3zjjdubXqRasPPEzPyOgov7jZ9Slk=; b=THwTpj9NTxShagJlDcSOH+kM7D
	dAohBvR5ovHDqyEs4EY7dlPZwwizcrShaxtm+hXyArRZ0HlMpFTWgWcU6vTD6j/o+Q5Q5GSnWoSae
	mTOhe7OC+UCATFYGNM0z25H9+qmHiGmMCtTNsrIHmZHZGSEycORruqqYPnB1x8LQBGmZOAE60jKle
	NNQKh/+P/Ae0zNdGfrBPrP7skz4F9tHl6Z+djI5P+FtSjbWEjVx9A+69IPuXvC+3Dt+4FCAAx88HN
	ijxWKUe5/PQXdkF2CAomEVKlb+5UQgLriEmm4tkTXrcgQ0SReqpUOMYV7GCK8rslHPY2Fk62CXBFo
	9CN1A8pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPh6-00BYOw-3D;
	Fri, 12 May 2023 10:08:13 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPh3-00BYN2-2w
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 10:08:11 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2ad89c7a84fso73853211fa.2
        for <barebox@lists.infradead.org>; Fri, 12 May 2023 03:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683886086; x=1686478086;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h1Mxs8/0QrKdSp3zjjdubXqRasPPEzPyOgov7jZ9Slk=;
        b=FHbMRkG0DbNOts4xKqeUA9NwX8frqODKPovWQYIWoaeh4vIWTmlmlTw9gU4Gac2YO+
         LSElhKG9ioTOh4Q3d9jC8NseRnAvJ03L74QRwWdxSS/98OM9hhKh6k6VYQ68rSKzpOCd
         vkJKIA1OHrbn8FynGGGxBMBItdX353lXMVQ6fn3t4PGyezQodH/5z/dI5VfpHuAx6iRs
         suk7B+vearTHft4gX4oNStQDXrZIMcnuig02nYM4S9vXmXKo+ua4caOlAx8qM94muXMm
         fr+XSoNpxSxRez4ooivjchpbjI+g2kn+QtdvaaKu++Qbqt1X2xqVwcf20XjP4WMCYqvv
         zwUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683886086; x=1686478086;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h1Mxs8/0QrKdSp3zjjdubXqRasPPEzPyOgov7jZ9Slk=;
        b=lgJhTqBeFIIdlKkZGxpKHfG+JIYHr3hataAkNASzuXElIWi85hnCgPwV4vvtbAprQk
         qpamx7bVJ8adYTCIPWzKhrQbypRdp9JqlkJtttXnY1h8yxfkISRfCsnquIPqYHUzljHk
         9pTfJI0lflk5xQlSR+H5P6/dbIwgFR5NIZQX06ryYWac+TDteLWE+XPUgHzgDiST2cuV
         6xPiTb6ZG/Ei0QAwbqkU2E87ioDQAAUmgEm3c1D/PXFrszZ7Gj+7zLeIS0qhXxUCr2Bi
         +L9PC4fDvMESWxEID96agcPqQuCfJYWKBAl2RGQu+jYYRWMFRM4mi4PUyv8iZFGw7YXx
         3a1g==
X-Gm-Message-State: AC+VfDzMxIuVaatY6GUMgNSTm/BpVETa1dEjfLwDRE/ylg6pMB5iW5KP
	Rmg8MzZF03hLittN8w2lCwQFxsHqVHo=
X-Google-Smtp-Source: ACHHUZ4K6rYiDjxNhqwbwah92C4QUKTTYqG3yT9gF/WLvjm8D8sNlnTyT07FQkDbdw/mfymlNIYA0w==
X-Received: by 2002:a2e:7304:0:b0:2a7:6f82:4a87 with SMTP id o4-20020a2e7304000000b002a76f824a87mr3831547ljc.35.1683886085781;
        Fri, 12 May 2023 03:08:05 -0700 (PDT)
Received: from cinco.. ([176.59.172.105])
        by smtp.gmail.com with ESMTPSA id d7-20020ac25447000000b004f1502c34d6sm1411854lfn.161.2023.05.12.03.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 03:08:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 12 May 2023 13:08:25 +0300
Message-Id: <20230512100825.1261808-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_030809_965674_F9A99FA2 
X-CRM114-Status: UNSURE (   8.11  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: imx-scc: Kconfig: drop references to unknown symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox has neither CRYPTO_BLKCIPHER nor CRYPTO_DES.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/crypto/imx-scc/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/crypto/imx-scc/Kconfig b/drivers/crypto/imx-scc/Kconfig
index c5b0ac2e83..75038fd2a5 100644
--- a/drivers/crypto/imx-scc/Kconfig
+++ b/drivers/crypto/imx-scc/Kconfig
@@ -2,8 +2,6 @@
 config CRYPTO_DEV_MXC_SCC
 	tristate "Support for Freescale Security Controller (SCC)"
 	depends on (ARCH_IMX25 || COMPILE_TEST) && OFTREE
-	select CRYPTO_BLKCIPHER
-	select CRYPTO_DES
 	help
 	  This option enables support for the Security Controller (SCC)
 	  found in Freescale i.MX25 chips.
-- 
2.39.0



