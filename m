Delivery-date: Fri, 12 Dec 2025 06:09:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP5-00AYQY-0N
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 06:09:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP4-0000f9-IR
	for lore@pengutronix.de; Fri, 12 Dec 2025 06:09:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Ggj8q3/6xxBet9VXvevWijhGmmlM6Md2tZwPfX5lDc=; b=yQeI3yLaTkXgnR03JTqczTr357
	aLpk5AcL72l4DrgxdD3Il3NOgELANemfcuUIwZEAmKebguNrd0eEYM3S0zyIghKFT15razZ82LpDw
	oN7OHR9YL441as+XrXm03R8+ddTqxTOolWOc+DhPgf0878ghjFLv/3vtVXfUNA+v+/tYNpV3GwNRC
	yj3s+0nkXfk/oX46PvgDVX0/rZOh91M6nlmpSApoAz0KiFbHYaTDiAupDka0ezPCrQMMN6WbofycP
	d8oIYii7wZyciZlhongvB31vtAr2yUvwh37S/a/wKKjDnGBrguqCFgKnGWWfWYb0ZyCXBBlIywAyD
	CtRNNDtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOT-000000005wZ-1oMs;
	Fri, 12 Dec 2025 05:08:41 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOQ-000000005vD-18RS
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 05:08:39 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4ed82ee9e57so9787591cf.0
        for <barebox@lists.infradead.org>; Thu, 11 Dec 2025 21:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765516117; x=1766120917; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Ggj8q3/6xxBet9VXvevWijhGmmlM6Md2tZwPfX5lDc=;
        b=AWjb+P1n9Wk/7s2qQLiqVW4yilX0pHxo1/nmKKAVRPzOvMS/tpMvE1EORGHhdfewmt
         Xg0vkVfs724sKacnjRg+B586liAuo/rhc3E9s8xqcSs9qlv+7eA0g56jqQfF1rWPB+fC
         POUKBNEobXMac8z1U7RnRofu0lZsUiw0qfTT6aJ231malXvxoEYrlp5LahIYPGHes325
         LMa9zuK9lO68lHFVzBeh+C8ZLQXEF5lHEaby2X7lu8vTN+0iteg4gwvedjnlV9iNFu6k
         B9WJ2PYwCgaudDp9QLk1gUqy96WbRDsaMSo3T9xsN5fD/rJQ/G/7oj5t4IkIf2EDKhWl
         6asg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765516117; x=1766120917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1Ggj8q3/6xxBet9VXvevWijhGmmlM6Md2tZwPfX5lDc=;
        b=JHgf2nJ0FZLeadXnOZMDZ80x5tw3BVSCYQQ5pb8KPBWzl2S34jymHkAUVADJWyk07o
         oCNjJHbYy5890U39mXmQZsOJSaHW2JlxSszJ3qQJQxOzGJ0J4kBiafvnA2mZC5xvr7H8
         VDsPzOL4Ik/UWSg4TZKFyunIZmTrqzSuL5HafTG7qR0xDl44ALa0NOzsQzGUZ3wpXoUS
         ENOSqKhiDcWw/m5Cf13znCvhNHdrYPNFhKTyfO4AHcP951DGPaSGBXMczqq5blpjId6s
         ehqbO9VQ1AV/iNZsE7Pa7aXbUhdJ91DjebuG3U2bfjDtJNOy/wq31/840SMRE7DXzkj0
         HpMg==
X-Gm-Message-State: AOJu0Yydu3gzaOESyQUL1S3W1mFpo5aHxPynTpZKaAAhNiDvuTuT4/b0
	LGeNquUmTX2gr8q8oQgdsW/QfvDdExXaN4OF9m1Q4Wi7W3L2ZcaeTH5d
X-Gm-Gg: AY/fxX6B0cgL7ycbq2sOp3RgX0MoJ9p8rfBMVnYno2IAfyb7ugpKqwdMNeWi8enQhAD
	GT5/x7+lrr6zmO5nR5RviiU+e0NI/1X9mJCBBERBC/0kuAewSMoxsmxgoHHQwZZJVD/wDm5me4j
	jIPLUpd8GP1wZ1UyOSlf00o6uRUmKx//EAqEVAGTnrt6aZ5QZk/QQJRVga9FdiZSaFgKCdqfhCe
	A4ULg4tMcGu5H9W2QL4IaPTK2XF8wsVRUXzy/s3p5yw5TOAyEhEUrjrknTkq36keGS6889n1Ofj
	iI7fgttTiiNICHC4/CIz8sZQed1sfo0tq1ag0BcsSSmMErKjD0730/OHoGzZmzvVb8rBdIe8lYg
	6DAu+qGKAUsBEWfBlKy6WEu/enIrYjB6bEv6SWKko+E7fqzb3gM70Aux6raJ9fzZgH+ilUbEVoS
	lk4Arc7bvC8sQ=
X-Google-Smtp-Source: AGHT+IEXN+qgyIa4wawYOBs5b/BEa3q/aah4EJZbAdYijHVFa0jHiVyCCfNfscFn7p3n6R9kg46Rog==
X-Received: by 2002:a05:622a:1820:b0:4f1:abda:d32c with SMTP id d75a77b69052e-4f1d05deea2mr12828341cf.57.1765516117001;
        Thu, 11 Dec 2025 21:08:37 -0800 (PST)
Received: from CNCMK0001D007E.ht.home ([2607:fa49:8c41:2600::3a34])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm33486341cf.21.2025.12.11.21.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 21:08:36 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 12 Dec 2025 00:08:21 -0500
Message-ID: <20251212050824.1273837-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251212050824.1273837-1-chalianis1@gmail.com>
References: <20251212050824.1273837-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_210838_319036_3FA85385 
X-CRM114-Status: UNSURE (   8.09  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] ci: container: update llvm to 21 and fix dependency issue.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

upgrade back to llvm 21 and specify distroname argument to llvm
which prevents having packages conflicts.

Fixes: 305c0a1ed064 ("ci: container: downgrade LLVM to v20")

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 test/Containerfile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index e322fed15727..e4f84e67dafb 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -59,11 +59,11 @@ RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recomme
 	yq
 
 ENV GCC_VERSION=15.2.0
-ENV LLVM_VERSION=20
+ENV LLVM_VERSION=21
 
 RUN apt-get install -y --no-install-recommends lsb-release gnupg \
 	&& wget https://apt.llvm.org/llvm.sh \
-	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} \
+	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} -n trixie \
 	&& apt-get remove -y lsb-release gnupg \
 	&& apt-get autoremove -y --purge \
 	&& apt-get clean \


