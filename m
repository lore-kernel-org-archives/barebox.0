Delivery-date: Mon, 05 Jun 2023 22:28:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoR-00CCUR-5G
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoN-00012k-OY
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YMjlePauThX1R0BqgrfrXJQpa78/0LwbWyCP27IpiU=; b=xE97WZeXdNrG7g
	QFJIvj5aQlF7k2V3gXe7mzeGxHYMGCkGFzIVC+Kt/l8G/RxvNRsvXTS0y4vlHSoDRl7U8sHPvPsR2
	4GpS4D61fnHDNxGA3xPJVxfQO+P8KDtfhAdWuN+IB8Mbo8WAkked1+A0ybBw8kqd6KCp1apBWnEQR
	tAkjb11LftWrUcG41bVJ64dG6S53DiNT13RkP6CS4FZoQJnl63YzQuugn8dqbn4DtfiHDZsvLamS9
	y0e+OCjpAf+jFir/yr4KYLGQiIocWdqNqLZDi0A7IM9JYUNENm39kIi6kRnnDr25N6KDDM/hixBh4
	Y5QLIb/7OZVfuyYD5iWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnB-00GhDv-1J;
	Mon, 05 Jun 2023 20:27:05 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn6-00Gh9C-2h
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:02 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b1a653b409so58207891fa.0
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996819; x=1688588819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6YMjlePauThX1R0BqgrfrXJQpa78/0LwbWyCP27IpiU=;
        b=e1iNVK+Q9koS/raqkXpEOj3EjGX68YOMMwgnRijbRG4vkqJ0N71+MvvDXGWeRAiiO7
         xkki6gWqfLS++rFrrQAx8iW57oWLdmpKNC/ZDtfZkkoVA2Da5IEMYMseKHhCf7aZrMpA
         yJvQGFFlhiCeFPiPLqiE2aDx8I6TCZxuOrA7IGSgYzU4dNsY6bqeGkePtz4D1r4gzUff
         xqC2b1FAEhnXrd2K/2C9x9lUgVP+6D07AwMaTIXLogGeTAw6085pHRC1HVm6KpXqbz54
         Nh8D8l+RVKPiTtf/n7dKNk1PEXGr8vSQHamq2hPo3U11JlOHtuwgLMvJkTmpdnE+j8C9
         6X0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996819; x=1688588819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6YMjlePauThX1R0BqgrfrXJQpa78/0LwbWyCP27IpiU=;
        b=Wlu7/lJkGFPd2XIfRroHO4T51yOfO85osvkzyKVlbPVphZ6NA+UnpxYydCGzolK0TD
         bkyFgKYrWnsWro4OD6hf3CkPunvjXerNejnMPVQ/myjdbesX2xzmElK3ePEQv+gf2PgO
         WD9VsegS8uxjxn9r8GJG4Exq7zpIN1D/26HvQjEsNWNMOjY05FulnK1y9/fB/PsJZf1k
         UPdVBIfXR3o9zL9BcqvPUxX1+U/QFFAG12D2tWL8lONIHB18DLzBgW3QxRUj0wqkyNmt
         wZJ08lXchQmKavVoV5ILK/tquI5ZPSg5UHK/jjX35podYc6jhMwUzZE251AoPyjln+fL
         rZiQ==
X-Gm-Message-State: AC+VfDzC4HCMmzxFvub6/ft4ROlswlqTXwUKjmzMH6eKwCN5V5zqfc9k
	NsIOJQk4T9RCNHzTH2cqUMDBGEOl4feGmQ==
X-Google-Smtp-Source: ACHHUZ47QbogqdC0vB5J4dEINzF10flDwRFGuJy8kYA7ngGH0O2k8Ze2xbHZEt3h9Y/nU+ymskwiqQ==
X-Received: by 2002:a2e:b818:0:b0:2ac:6d95:301f with SMTP id u24-20020a2eb818000000b002ac6d95301fmr2726834ljo.2.1685996818876;
        Mon, 05 Jun 2023 13:26:58 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:58 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:42 +0300
Message-ID: <20230605202634.42175-12-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132700_880182_1FFCBA94 
X-CRM114-Status: UNSURE (   9.45  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/17] MIPS: Makefile: sign-extend TEXT_BASE value on CONFIG_64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code that uses TEXT_BASE will fail on reading truncated 32-bit
address if running with 64BIT enabled. As we only support running from
compatibility segments (i.e. no 'proper' 64-bit base addresses), simply
make sure the value is sign-extended when passing it as a define.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/Makefile | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index bad6e574c4..65a00379ab 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -57,7 +57,13 @@ cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS
 cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
 cflags-$(CONFIG_CPU_GS232)     += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
 
-KBUILD_CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
+ifdef CONFIG_64BIT
+MIPS_TEXT_BASE = $(subst 0x,0xffffffff,$(CONFIG_TEXT_BASE))
+else
+MIPS_TEXT_BASE = $(CONFIG_TEXT_BASE)
+endif
+
+KBUILD_CPPFLAGS += -DTEXT_BASE=$(MIPS_TEXT_BASE)
 
 ifndef CONFIG_MODULES
 # Add cleanup flags
-- 
2.41.0



