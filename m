Delivery-date: Tue, 19 Apr 2022 09:38:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiRJ-007amO-Jq
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 09:38:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiRG-0006ce-RE
	for lore@pengutronix.de; Tue, 19 Apr 2022 09:38:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rqB1gADCLZqQB5nJDUCG702KmDQSBc4NTPk/uf4ZK2Q=; b=efwXrJJJ2iXoVn
	WYC3ZBym/gWpuSvNLhXov+dWiXgAiVQxw3fPYXOkeW2FwWbmY7YksVMWkU6iQSsegfDox0CtG/yi/
	2udPuqsWq5Ywm7j38yYlj9YfhBw24PwSEVPOb5y1I0JmKPjBIK3r3hXP0UtxfVzBD7kjhBLtLkqR6
	Mzez14+ZhlTTAcpwg8ENV/3nRDGF+IiIhIIKGOXXPh37AdjpPH92Cl+baTjrj4pAHWupuE605oB9t
	OW+ylgXP+RKKrwbgf4mzFby6oyj4Ihvwt1N2lP7i9IhnpH81+DsVrDqQ/srBsZXOvkYTqxt+B5Q7q
	G+0NjZOuAz+EIwTmbJJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngiPg-00233b-DS; Tue, 19 Apr 2022 07:36:41 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngiB1-001wVv-37
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 07:21:32 +0000
Received: by mail-lf1-x12c.google.com with SMTP id w1so4429009lfa.4
 for <barebox@lists.infradead.org>; Tue, 19 Apr 2022 00:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1n5OhXr4GZc6IUN/iL+cMtX5AoaTyw2A3ivcd/lpSqw=;
 b=cAU5hoOMp/HTcFqHYmzRM/mvYsYrWXHftBHwdDfkHAGup1jDllvha6x1B19l/miDdt
 JfVGMARBcMMb0froub78V95kBYQznToeCFspy2BfZXZu7E4tksKKh2gOg7z7+XpnoVka
 ke+xbogq4sBWYSAwmStb8y7wsPBTV/xHoJ4q0x/lMSwvijtYjQdMHQuxlPRmPRcoV/Z5
 cz2uageGacjExVbLOWxfD8uv9tbBTbLaDpr4coqkCxg7ebAwQSPDlYv9f6rGo/S1SYyh
 heYfr+ni6rrhPgqjwp4l2Hsw2+yTjoD8YKWZScV9dcEhO5IZzNw/luvhis9SSc4ixWN9
 RkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1n5OhXr4GZc6IUN/iL+cMtX5AoaTyw2A3ivcd/lpSqw=;
 b=Qav3jefFuj3azFzspS64f6z1Lh9yfAzxwWfMTlCWfqSjnRaFB+BtX/ldKcGTHLeaot
 NhGRBybARAGaJ/3BF+z6Ty4YUzn1OzQFU/Ipeu55b1N9h5a6vJU5oMAsqe69gQ69dMAc
 AitCbRCd/GYSPDnVI4M3+r1q5JbDa6CPL7MzsGPwikttcBRWHS7b/hh2L5F8gkGPuHe5
 h6SHo8VXn42dBeFlRUtxbl5cn8K55e62ehCuNnAggWv/tYJEHw5kMroAhaIif1vvSZn4
 +N+TqH3X4P0d9yhZ/6j7YuBoJDpUFJuzYrvDGPZARTaI5ZBolSVb3ESek/s6W8NnuSoZ
 tpeg==
X-Gm-Message-State: AOAM530OQzrMrFM1CbrdmxgN33zDSmYhvNJEtWKS2JSmoQjk8p8CJN9/
 JOFSmPwWVTFt/TB0tuJcD3uDwxLhgwl6yA==
X-Google-Smtp-Source: ABdhPJwMYLBFCrrH4dU5sD/7lvpdmih9meDsaQZYsAp6YuvNaU+q9eq5/t4PtItgI5ezRzcXHkoayQ==
X-Received: by 2002:a05:6512:3c87:b0:46c:fde0:5d2e with SMTP id
 h7-20020a0565123c8700b0046cfde05d2emr10005251lfv.525.1650352888414; 
 Tue, 19 Apr 2022 00:21:28 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 a13-20020a2e88cd000000b0024db9dbf11fsm666178ljk.130.2022.04.19.00.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 00:21:27 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 19 Apr 2022 10:21:21 +0300
Message-Id: <20220419072123.28590-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_002131_183375_BFA122A2 
X-CRM114-Status: UNSURE (   8.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: CCMX51: Remove excess assignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Default assignment for board index is already done in array initialization.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/ccxmx51/ccxmx51.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index dfc26cd835..cbf06e6cd6 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -245,8 +245,6 @@ static __init int ccxmx51_init(void)
 		hang();
 	}
 
-	ccxmx_id = &ccxmx51_ids[hwid[0]];
-
 	switch (hwid[2] & 0xc0) {
 	case 0x00:
 		manloc = 'B';
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

