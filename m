Delivery-date: Tue, 16 Sep 2025 05:55:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn0-003YF3-36
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 05:55:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn0-00072O-9w
	for lore@pengutronix.de; Tue, 16 Sep 2025 05:55:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=; b=Fy32Neh2QcuPbcNkY1WEyibygk
	gjm1EWU6utAn7Y37cot8ZCH6ch7oIeHl73jR81mJH5cC2JGex+EasuB1eB49+9cPJHJLP4wftj+re
	cVl03snScujLxSWJdfjXHHACWGgvs28eQ6lMY5MA1yiKi0OKxGtH/Smtt3Ui9qVsDcBgRjUnfwW7z
	SpHZqhBW2c8rXUY4BPCi9e0JRfFcCm+XVXkB0bpHppglIw4EwK8un/tvCWtX3EHLcW2nVaGd+jtI5
	a2WqQd6iL74FuvHPntT5dF11Uwry3vS7SM9EnQ1/Q/vATpCxprDEhoVim+Ik4FvdZDBqU3d7yXWNC
	IsrNqf2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmK-00000006dCC-1C76;
	Tue, 16 Sep 2025 03:54:52 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmH-00000006dBN-0KcP
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 03:54:50 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-45ddc7d5731so34575255e9.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 20:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757994887; x=1758599687; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=;
        b=T7ezIqJCIKykgV/KZmIwGOkrjhieE5uuv5vy8qYbQi59BxnlgEGPtv/f8UAMB2Xnzz
         3jxSy+4ZzZXLgPJpmWpFg8x0HzfxXUshAGI4g0O7eH+NWr14kPDAipiy8n/XrQDQRjkD
         jIHTXDqHB5qid0o+GMuMqtkKlknxCfCOJBLrxfmfZY6e5YIsObHwmP4ixndDNOr1C2Hk
         Ll+z+UX2nCf9htD8gt/SnH/yd/SQMJXfAo6Ve5+Wv+C4n3EihuUR8oIPMEdTDs9+JexH
         FIc5TboSvBfiKhuZhoJOxw6sR6fS0/9XDmulcE8OCCrWRhqORy7QlQvW18FgHLBNubqu
         Q03g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757994887; x=1758599687;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=;
        b=or37gadNnOTAWjNhb4qvIKpEycyvJV8dlC0qmcqvU8xDZlJ4R1zCmigN9cQ81ShZcB
         zYDc/VFM7nvA3peZS02l52A2OkxQHrWBZnF6CoE73Yu9xCCoi6Ar0bh+ttfcEXTM/qXo
         /fpQuoY4Lm3Fd3ZupBuveJWWithpG2V/vjHZVQZBSEP/pqpFGtWQm06MambL631nWrwj
         QAF59Rtmd1/oTp1R7Bac3JtaG0ruPGWMGog3NiTsKxkHnSLHofMpbBSr4hYxalLGqmOW
         naiEVHNNCWeeKJXgh5Q8bytt76rdKvdEzc/0xJ2GpeTmYxAXYHKWk4ErsPRUfEhgczyu
         qHFw==
X-Gm-Message-State: AOJu0Yx80F3ohI4IpyP5A1GX2L8A/TqFMK0bwMcX2ItxifelURn1oIz4
	izvvXB7yPv3On2u+mHRyygwqsFk/X4Zgc90q4JD+ESrzrSkinAG1KJop
X-Gm-Gg: ASbGnctpfY16Asp0vydF7+UbZvLMYXzZkiEML7yMCG3KS5TGgMKRzE3jtaYlxQZfmjz
	BfO+EpCDIT0cixNcMymKpRPe5Kshi3+PUkymSj2uCtIV5izCsqBwDSuX9zi25k1EK60URCE8O79
	EVZmA4PbIqDeVzQS0obzmMc1V9wuhNTVG77qgLI1PoCGW+tSDSFgHp7qzLWh0zamwr27o21yptP
	+0T6gYbDu0VZ5SP4QkAQqkamxmiQeMDmniXQm9pv0RX+izFzKY3hPHxMSm7GH2pOWMraC9Kr+EE
	HGr9j4g4lVa4mPFOKPhPPWkUelIjGjST7NILQCz88zdMcQSGGdmf9Q3eSRJ605ZkRxRp6XerFeP
	nuiMM6hgmRMV8yWfjmlOzy/vhBCmwsOPdg+RwevJudcZOY06dldp94IEZ8Dqedv4jovRtnHZcFg
	hRmmp8vB7SaA9Rya+F16ooEQ==
X-Google-Smtp-Source: AGHT+IG8y0vYofZrTtQj2OjrUa0lbngITcDCwUbWD7ZjL9b4AalCtjQGfBORkwxu5hZvQANr48r0PQ==
X-Received: by 2002:a05:600c:19d3:b0:45d:d609:1199 with SMTP id 5b1f17b1804b1-45f2121afa2mr146205935e9.30.1757994886928;
        Mon, 15 Sep 2025 20:54:46 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8237cfdddsm13496580f8f.60.2025.09.15.20.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 20:54:45 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 23:54:28 -0400
Message-Id: <20250916035437.805046-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_205449_118489_A825710C 
X-CRM114-Status: UNSURE (   9.15  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 01/10] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We currently lack a way to build a barebox EFI payload on ARM without
enabling some other subarchitecture. As CONFIG_EFI_PAYLOAD has a global
effect and adds EFI stubs to all enabled board, an EFI subarchitecture
doesn't fit into our current model.

Instead, let's make it possible to enable either CONFIG_CPU_V8 or
CONFIG_CPU_V7 directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20250904081626.93182-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/cpu/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index e61bcadc8c35..fe0d1e470578 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -79,12 +79,15 @@ config CPU_V6
 
 # ARMv7
 config CPU_V7
-	bool
+	bool "Generic ARMv7 support"
+	depends on 32BIT
 	select CPU_32v7
 
 # ARMv8
 config CPU_V8
-	bool
+	bool "Generic ARMv8 support"
+	default y
+	depends on 64BIT
 	select CPU_64v8
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT
-- 
2.34.1



