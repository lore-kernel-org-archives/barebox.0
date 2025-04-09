Delivery-date: Wed, 09 Apr 2025 11:02:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2RKL-00ALel-0B
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 11:02:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2RKK-0004aR-Ht
	for lore@pengutronix.de; Wed, 09 Apr 2025 11:02:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9dQ9hByli/fzBIaSYGGoHuhZsX5cE0jMn1o11P3vo5Q=; b=aumT4Qv+NB2sGZWm5i7vcwrXwK
	v241zl/O+BiKtMyyKeKZDuZ22zgWIHjFlKC0qPx8eEn0dzF8EwggY/BG1vMPyuvND7MriX4RCSW2r
	gXGBumgviAto1Eg56dpZUSgRpZVJ/38qTiFd4SUO2GFqiidDsHOVWqCPpEPBUdD/9iit5UabnvFkf
	WQvOuQLmgrbjiL/5cYsLPIPxiPu94H0HOjWbXfhDRB9uRK5s5fNyFQY/sSWQfyooEBQxEUKb4EQlG
	+Nhfry+sG1LYzJJUABni7rmvB32gX6Yr+2YB7eAYzIlEeksf8DZ21N+hnqOG0LG68E6QQMohO4haT
	CmRzIyQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RJU-00000006eio-1wEL;
	Wed, 09 Apr 2025 09:01:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RJS-00000006eiL-1fM5
	for barebox@bombadil.infradead.org;
	Wed, 09 Apr 2025 09:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9dQ9hByli/fzBIaSYGGoHuhZsX5cE0jMn1o11P3vo5Q=; b=SojJUhM2bjuwSYMsQyNCDfTOhe
	RJB500cJeTFPXk0IgKjRfDEEVfMMlBVgwT8T3i4Tc+BXqOp7QsqdfIqKTd7KiN1ACyqEGJ0Jalij3
	8Hm5VffGrFhkZZujhBqO/909loZbJRByZieNSZqTTj3iB5GmnXJNfpqEAUc9+rsCQgcnZTSNYjPUy
	f5bIwohHCGJa3g/V5Ra6uLwTsmY5680gb1g9IL7aTUmQfnJQH0gOu/xXHvGhJR0cgbOuVtupjH5oj
	GlohXEcwTy6ny9ZNeRc9YGmbSphk2ViaSb4KQmHfoUE+OPQdKC15tqEogu18qDd5PfklwfWorjlZy
	hvyXgfpA==;
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u2RJP-00000008YbP-06Fe
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 09:01:37 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-30db1bd3bebso57265801fa.2
        for <barebox@lists.infradead.org>; Wed, 09 Apr 2025 02:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744189291; x=1744794091; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9dQ9hByli/fzBIaSYGGoHuhZsX5cE0jMn1o11P3vo5Q=;
        b=f0DNYZwTb58AFx3zoZphANJvYy72HL0Qmt0FQqh0P527v86qRdtHa+OzOahrzvGmup
         T/d/WFA45iDOpoLeGbdMz+3s8jSnD/EawC3PjsCnMOw0F/OKHSuzFX7jOpUomVLPeX9f
         48c7Dd2GvjNOoh+4ATWZcQeqEBaCk/o9Y+5WpplFnxZCPa405xrgNFhU8Sx9sHzYjN8P
         9aturb+RWkwrtgQCEtm0ZgCit34aVPEdXjaBis63b/DvBpAFKwjNWf3m82DeZEzhVwhb
         FF3HHoPofxjCRYS8ra9gdFu0rP7hcTfOqtYMS0FXZzMCvLCUOcIV/IPMFOaepr7StoXp
         pSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744189291; x=1744794091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9dQ9hByli/fzBIaSYGGoHuhZsX5cE0jMn1o11P3vo5Q=;
        b=l47CIlemWk8YGm5BDgDFJPKDQZpSo/Q4v5M6h00oYA5JaUZyUR/K7oEVmxToh7bVCe
         k4MexziPpOPxTRHAfzT9sEhhK3CnAPCjYcs0ROwrL/CTBfH0+ECl+dYR36NZbx8rAt7/
         mFfwSCivV9JwUvA0DgY15SNwsS037T0O4rMDFlt20aF5krX0CTZAwr8LO48OUEFinQQl
         BvmeIlhq8w3VfnDNd/BxXACvBbLx69iuvbApFgFaq8JWQl01kFTj23/evb+t2VEc4Q3E
         tDEQ/q7VV7hZAYdldnC2p1oaFBdAyigQFdl+MZgjbDrTO/Lq4AEVNh/FdmjM7xVP02t7
         h7rQ==
X-Gm-Message-State: AOJu0YwC9V9xmIO/5VQj9X2SODUikWt2aw4WE/tTGQsKt+YzIXlNr67l
	ZshrHKYdcuH/OOYYnZQGOzywrjoQpbdqhkh8ZVt9JQE9lgI3JM1fJIKzRQ==
X-Gm-Gg: ASbGncuTDmBN/Qw5oPKUIBACPntzhR8AF5GmgOjRv1Buz7Vwitsp8nvqyu7gNRJr87m
	SfRJsBT8bj40chtXMbgzXqsyMgOwDqBAl7+T/hGmAN4MBVEAJWq0hWxsIftjJ4FZH7GB8hVzABK
	4t/yZXuWHX/cMwBYrTQXTIUZrUv9afyoq8DHL78oE8CIr0PZfLuLKKpZ3nJP39WegVAQ8obEMi3
	A52SNa0axwLIrAPpBhrFcdvAQl9cDoj/tFTKOnqoqYIQOdJevq+RzBaQKMC3/UUE+jOoA22SPou
	7v8SO5yLCAqFWfmPPKNje9ecpaKnilG5cHI72y+nTRO7PhIHOtfRHm4xpBBrrn57Q66Dbb/fcQ=
	=
X-Google-Smtp-Source: AGHT+IFRij3hnlLTjZk3AzMST9dTdP7IoqSa6NhFCL9JRK+pwEmv5hNkodFV2TeMUF6IwyKmdl0I7g==
X-Received: by 2002:a05:651c:896:b0:30b:b9e4:13b0 with SMTP id 38308e7fff4ca-30f44f91b58mr5232031fa.12.1744189290337;
        Wed, 09 Apr 2025 02:01:30 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465f779asm1015411fa.91.2025.04.09.02.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 02:01:29 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  9 Apr 2025 12:01:16 +0300
Message-Id: <20250409090117.32359-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250409090117.32359-1-eagle.alexander923@gmail.com>
References: <20250409090117.32359-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_100135_187038_B7C0CEE0 
X-CRM114-Status: GOOD (  11.57  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] clk: rockchip: fix finding of maximum clock ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If an ID of a branch's child is greater than current maximum, we should
set new maximum to the child's ID, instead of its parent's.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index d5ecf3fc13..a154495efd 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -393,7 +393,7 @@ unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
 		if (list->id > max)
 			max = list->id;
 		if (list->child && list->child->id > max)
-			max = list->id;
+			max = list->child->id;
 	}
 
 	return max;
-- 
2.39.1



