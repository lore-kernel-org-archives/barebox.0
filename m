Delivery-date: Tue, 05 Mar 2024 06:40:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhNXm-009LbG-39
	for lore@lore.pengutronix.de;
	Tue, 05 Mar 2024 06:40:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhNXm-0004Ht-FJ
	for lore@pengutronix.de; Tue, 05 Mar 2024 06:40:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sw8z6YKCuQsbIjf2IdbzAswzl2h9/tEbmN/pknk8tOo=; b=Lz2xJPBgdg83Nl1qM1JSZEy1Fw
	FbfLMZn3RACXb9Eo9ZV10zytuj9oV9lH3S+C+VIxefykADhV6TimVeTNGkdB6bYuVm4Nrq8nfKtOt
	ONW2odRpepq4U9EkRKvfjnf/l6N4yp/InHPAYQUHFjPwzDU9+9qiBtJKjFr3FbJaESaT7SOsmtgzo
	afXwTRHCHmfzi0YoRsLDvaCa8wD1zk50lhEJF89Mbwl/E/cIMiO40I4NZw2+ziy0oGASsjJyoP+YA
	qmdpbiDtE0EvvI5LYfOddHbj636356rDVWxp9FBJi+cht8bDGk5DdvpeXsgkGRnhXGwoSEnb90HvU
	NMTLgIPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhNX9-0000000C0wr-1pUZ;
	Tue, 05 Mar 2024 05:40:11 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhNX6-0000000C0vt-0VqJ
	for barebox@lists.infradead.org;
	Tue, 05 Mar 2024 05:40:09 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-51341a5aafbso2214550e87.0
        for <barebox@lists.infradead.org>; Mon, 04 Mar 2024 21:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709617205; x=1710222005; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Sw8z6YKCuQsbIjf2IdbzAswzl2h9/tEbmN/pknk8tOo=;
        b=OFfCIa+do6Bpyx4z+OYyVOWhFjBROSIUyilf6Q+TAuTAK59p9yphs1HUEFK1mNNANt
         AT1vd6/WZc7Aca8RLxP2nEeLslfDB2haCuSE3NTww0fCzR7yRNvG179VaM782D3m7RB9
         g888hnvUvF25VT2RlRNXFO2T0fvwPOLR6pLU9lr+d+jjpKLcsZHCuSh3UPJYcFUWTLex
         Oo6iD8x3a4xlcmivC28OqDuh2a7SD7H4+zHcWfnf33fNNyoQ/kM10qOKQKVl405jockn
         eRAaU1lAH2KuePMib7hPW0u0kOACMGyDoZQyjwhxC3OuIeCO7+PIqwOw5VMtNE7QCbtP
         k7vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709617205; x=1710222005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sw8z6YKCuQsbIjf2IdbzAswzl2h9/tEbmN/pknk8tOo=;
        b=MzHLm0vtcWU9zyKsn+I6bl5OAnAPFEj5aLb8YhzX65BURxFohTd/RzQJ3yCEGXe6zg
         PYKe9Wp3enAGOKpqqxFTGfa1fAYD+rE8T287GwKCXtsRyRGdnIydBGz0OhHbh2swbgRq
         DimSjinlOIOputtMkcsxlJtvAEoxqOCsW5GU1y0yqwWxRBWVq4zDJuGa5vsznxbrJ2xR
         vXOcko9qzoXhlFkeu/EnsbaXhDKwSNgEv6xg9ZoddxeIPYIDwz+rS5Yy1kijJzDUES9j
         hfGCodGcsoaUzK9E82Crt5/rdAo9sm+Vk96JE/GSKd6swFxt0ab9kQrJ73Zccp/irgfj
         MVog==
X-Gm-Message-State: AOJu0YyTsXXZDc9LWOuINFFuqiKYfubLroGfr3uwqUQ0Cg6NupnR+q2S
	umULSqXCVf4ieGW2IhBYPGekq2MbezPaRV9UoaC04vjxX85ES9WXg6mtgkt+o04=
X-Google-Smtp-Source: AGHT+IGl11QwARNyQENph4908am8sBM1EUgkKTz0Ivjs78AWUcbs9WBBI8bot0C7DfIBpHzWesSv8Q==
X-Received: by 2002:a19:8c10:0:b0:512:be8e:79da with SMTP id o16-20020a198c10000000b00512be8e79damr500907lfd.8.1709617204776;
        Mon, 04 Mar 2024 21:40:04 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id a11-20020a056512020b00b00513006c81e6sm2010521lfo.227.2024.03.04.21.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 21:40:04 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue,  5 Mar 2024 08:40:24 +0300
Message-Id: <20240305054024.519900-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_214008_268439_185D35CF 
X-CRM114-Status: UNSURE (   7.39  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] gitignore: ignore *.dtbo and *.dtbo.S
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/.gitignore b/.gitignore
index f0afd899e1a..c9921d83ed1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -38,6 +38,8 @@ binary.0
 Module.symvers
 *.dtb
 *.dtb.*
+*.dtbo
+*.dtbo.S
 
 #
 # Top-level generic files
-- 
2.39.0



