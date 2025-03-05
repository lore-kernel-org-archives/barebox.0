Delivery-date: Wed, 05 Mar 2025 07:22:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpi92-00A4tW-0f
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 07:22:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpi91-0000Q2-2j
	for lore@pengutronix.de; Wed, 05 Mar 2025 07:22:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NIpc4/pEo72zgb6taL9KNmRZrT61ze73xXDaQX+tAeU=; b=qzNj3hrxd0KegyM6Y+E4oTltE5
	Ou9v1A6mAgqQ/RqSmvduaduciWTtxv/COf86B3yTPQg+KAT7wc7BfgI+zGAINYGgK8aUOSX9npMZW
	yIYxvZ+xcj62fO6Wbh33IeMarjZc9VTXnj4LdxNIAZh9LBkz9ArKCNP7V85z9u/EtvmHMtDODem4O
	ZQz7b7BnM4OZn5UF9vMvE5vwhCxlbenNUBrYQCGh3LqF9BR6h2ayMzy7M9F5Y0bxpIruASi1jf+nr
	ZRB4LuT0x4d+ylX+45BVWjxEiN80OiqnZuHxeAaqa1pRVLP9voj/mdJQeX3da2hQDpAQBGO6pZfip
	BfDeBUDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpi8I-000000076q2-3R5U;
	Wed, 05 Mar 2025 06:21:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpi8H-000000076pF-3lRr
	for barebox@bombadil.infradead.org;
	Wed, 05 Mar 2025 06:21:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NIpc4/pEo72zgb6taL9KNmRZrT61ze73xXDaQX+tAeU=; b=P/c70MeHpEMgHHoWycGK358xRS
	oZQ7ZbQP2PY/P47m8Qo4xeS1sVFw+T+4N0jiGy+ZONx2B7Jgoh+PL3o1iKgkDMcR6c7voJsNFDYe9
	ZgijrRYRQbIENBJGaZnMVfGs6PT5O/0pDEvTiYeBB6QTCB9Y5P0IA4/a2rt6OVi1Ua6ubWQMZ/3Hl
	+LBgKgKNCu90tuuEdyTl6hFra83UdnezZ/HRysc/YU2HMiOSOT53T8v66kqM8e08Jq/jn9HFFJojq
	9ubNEDKY7LTTGdeqvfDASf1F9KTqDjIF8d0HBEBfGymdhg9gNvjYtoU5UYf7+tSoaBox1vAgTu4Mj
	o2EWBE9A==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpi8E-00000004sIg-3pqq
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 06:21:28 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-549662705ffso3480725e87.0
        for <barebox@lists.infradead.org>; Tue, 04 Mar 2025 22:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741155683; x=1741760483; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NIpc4/pEo72zgb6taL9KNmRZrT61ze73xXDaQX+tAeU=;
        b=bTHeAT3a1ZHh0u3sc3t5g1oI/Q/c2WTcKumq986kKLq6wiAKIvdn2hXe1CQAbZS6CL
         YNK4HYb+I9gO5mrs7d/nPFjSu4GspEbu6970D4kHOgDK+L0H6lrZkCiFGpdTf9/QhiNV
         uD5xK2FOSlKQVwowQ/SHZtQ/SywHHnHij8ZfYMRzMb5UkjDpMB0+l4pQzx/za8vtW3Gw
         Cq8qtcHR1hFQ7tyNwFx71yZ+l9XdcMTm2XY4lkXVh6BmcJ7BW1VBeq0Q+c/7krJBs+EA
         rPauqN+lh0lSb1FgxwylmH525bt+ItLIL/ZTPICBWGhrNSKLDbGrfdhvkLyNFZFhvWUX
         Ca0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741155683; x=1741760483;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NIpc4/pEo72zgb6taL9KNmRZrT61ze73xXDaQX+tAeU=;
        b=PHZ3ENteEAJmLUPvwKzJAyVj6IOarcVjSxqu1FVSkHwtbdXXL2WHzU4Kfrrvn0FRHX
         +aBrUwa81V9S6vnOXaTPYtb5mlIqai9tjmsYZMwnw/xyRbd+nonw5ukvXdvzsoPCdL5l
         E0WprPWKq0gAlqKrCq89Qv2faICafNCwFqRX7RxQCspI9DtCXK9nWIIrz6TY/LVnZDKx
         nL+jeoh45C94uye7mfMdYTdNMMihpEKkxcUhcygB2WTqFS9gjyLLCJjxBPv09RKiNdQQ
         FpZ4QI5tU53OeTGl3VaqVqeGx8znIV0qvn3tO6VVLRfIJlfxHDyL+80tLxnbRLVTLnHG
         TXSg==
X-Gm-Message-State: AOJu0Yw8IeQg4wj9Kh5JmQWyiaEJzf1iv19arQgh/rPTplF2WdEhHzFg
	axFr+Meh4l9eSuogS4mq7ASbfDqrE+YjXZRG2Zyqi72nSzpliPmC2Kd2Zqs1VPY=
X-Gm-Gg: ASbGncvWvJ3TBWZZjowkbFGKk0+fD2/YISlWHip1eD48m92EY1udynijrtuQeGG3EuP
	j2J2frcUYJxRa4lENdp7Z0p40K+XCNZZJ5Ng/zsygILBWUK/NxJw9eUlzLSePFTTYHhdbh8UTaa
	TvbTjLGCS6Dwb5SKC7hXPCub/hKsnmNMl9x8M1Ij8y/5OO811nPdJM8VOJ+PDrYgaMTrXEXm7ae
	u1AerOwhgIVWDTSUsoO+ikNejk23oPdAPko14btiKbmvMFafrSGm+SFsOFro+RakYnRghM79dtP
	8dv9PmdSrpHOOh61gcD1IiXmuBIU+T1ffJ26MGNgMwy9eFt/ZAJ5Ae5VrUDx1GxyumU=
X-Google-Smtp-Source: AGHT+IEwZZDgO2wWHRc9ldmrEAC8h5nA2pLYAnUo50NPRnqvJql0Ubemh8A0Xp9ESe8g/xVh8+M9Qg==
X-Received: by 2002:a05:6512:158f:b0:545:27f0:7b6f with SMTP id 2adb3069b0e04-5497d32fb42mr689631e87.11.1741155682694;
        Tue, 04 Mar 2025 22:21:22 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54973942f2esm526279e87.58.2025.03.04.22.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 22:21:21 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  5 Mar 2025 09:21:01 +0300
Message-Id: <20250305062101.25588-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250305062101.25588-1-eagle.alexander923@gmail.com>
References: <20250305062101.25588-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_062126_992405_7E1D0C3C 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] at91: Use proper values of stashed SAMA5D2/3/4 bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the SRAM area varies across different processor variants,
let's make a distinction for stashed bootsource recovery.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/sama5_bootsource.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/sama5_bootsource.c b/arch/arm/mach-at91/sama5_bootsource.c
index 4ede256e8f..0d91f5fb5a 100644
--- a/arch/arm/mach-at91/sama5_bootsource.c
+++ b/arch/arm/mach-at91/sama5_bootsource.c
@@ -19,11 +19,15 @@
  */
 static int sama5_bootsource_init(void)
 {
-	if (!of_machine_is_compatible("atmel,sama5"))
+	if (of_machine_is_compatible("atmel,sama5d2"))
+		at91_bootsource = __sama5d2_stashed_bootrom_r4;
+	else if (of_machine_is_compatible("atmel,sama5d3"))
+		at91_bootsource = __sama5d3_stashed_bootrom_r4;
+	else if (of_machine_is_compatible("atmel,sama5d4"))
+		at91_bootsource = __sama5d4_stashed_bootrom_r4;
+	else
 		return 0;
 
-	at91_bootsource = __sama5d2_stashed_bootrom_r4;
-
 	if (at91_bootsource)
 		bootsource_set_raw(sama5_bootsource(at91_bootsource),
 				   sama5_bootsource_instance(at91_bootsource));
-- 
2.39.1



