Delivery-date: Mon, 05 Jun 2023 22:28:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoQ-00CCUG-VY
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoN-00012j-NN
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKjU/2r3qMgeLj2k8dyTieJqoI1dF86ICpniNXMZQoI=; b=ubFQMqHcy/dv9J
	EvYM0uQGenFTKE+vsMq0HpJCyBjgcM5Ok55UGNO5sStgZUZvUGGBBqA3IDqtcnOkPYYrDKuBCeS/o
	OeUttTn1q574aVNvjoSDkyGmaNydAAfWfMAGWVhTWkQwV1j86YGp1LMM1BaiBiczFXJsuGelmJaEj
	aZuK4FKltV11+kQrEYa2Sn2dl8w590J6WA1fqKPzwkLxDHLiuas2ZfGStFZa6ZNc6aGsyhBGBqgeo
	vNcrIPfBqDAQ4rq26o/Lbrrfb+tp54BLqbcCf4KGgMCtSkpHHF5OBn1m8T+wWLGqg3pLOOzM/BSoc
	hoTKwOsqYmdaCUr3hYkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn5-00Gh8n-2T;
	Mon, 05 Jun 2023 20:26:59 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn0-00Gh4Z-1y
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:56 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b1badb8f9bso35458141fa.1
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996813; x=1688588813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tKjU/2r3qMgeLj2k8dyTieJqoI1dF86ICpniNXMZQoI=;
        b=YYrc/x/vsd71lS3DSSIodpfdABExXpA7Mg9KefICCkbEAqtkkndyNK9p+U7uj6nBEY
         90nZnAIiU7gxJ2RVxS+sJOgMkR6QyWDdEaVu4nPJqKF0qQ6/XaLnWnhxx/eKiHG97GVS
         O6dxWO76H14sTLIIQmGLKRBYoTZmzpLCYdM8RRK49GcC9gTRjCreuaKixnwfSo2dgYfF
         Ycr3g9BLSdATB3Kpwg1kZ38O6cxB+fMGCAXKrDIGvN/D+PylHIw+lpEUYSIoz2JBNrqg
         VMb9K8EuFIFG0VKi+o8LSbNGMOGGY4Sp9Z9TzAlo9Y2bNM+HY52RJJuOrlF7Nfi6Dfrh
         t0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996813; x=1688588813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tKjU/2r3qMgeLj2k8dyTieJqoI1dF86ICpniNXMZQoI=;
        b=ep7AUtwfqBavmF1XtAOJM+i68eGjc3JvznUY/T0f326hGYuB7iKNpYNxzmLgoJ4MYl
         ckmE0wVLHrn37GLTQ/V4TGVQt3XUbNsplw8QDPgRtG+OEXd6lic3dzoy1prPTAvk5Lax
         86aBAH86kgbhuRQUbNRBSI81qrgoEIfw5zS9O20FNnXdE44Y1XRRZkUprFFb7R47XD3/
         awR15J3pTOnwVVFEEPqe6IGbB8w63/qwjcDwCbIISBzqouplubDjGSgjuQxOZJOpPgd9
         Us8tFU73jWg2LDnkaEDRABblAWfXaBxF7Ghu5l7gXB7a9ECjkS/wnpfWREAQBfi97C4b
         FTig==
X-Gm-Message-State: AC+VfDzueD0jatgZ9NnVwZrU7HMnPWCA/XYu6YDt3Ng9Xhem+LbPaXOm
	q8zHPwUkqfV1QMSlXNQlZgFAksOM4D54xA==
X-Google-Smtp-Source: ACHHUZ7MES5Z4539UcSoFyEqIuz108Y2gw68XGdkdTgUKqx8KjdZxvQLnUmg9CN67Z5AFBEJYSIkTw==
X-Received: by 2002:a2e:3308:0:b0:2a7:a616:c39 with SMTP id d8-20020a2e3308000000b002a7a6160c39mr164540ljc.48.1685996813366;
        Mon, 05 Jun 2023 13:26:53 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:52 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:37 +0300
Message-ID: <20230605202634.42175-7-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132654_672304_FF4C957F 
X-CRM114-Status: UNSURE (   9.54  )
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
Subject: [PATCH 06/17] MIPS: pbl: fix linking errors with CONFIG_64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For some reasons, object file format was not passed to the linker when
linking PBL, leading for a bunch of "ABI is incompatible with that of
the selected emulation" errors. Fix it, and also remove duplicate flags
being passed when linking barebox proper.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 345e703d33..bad6e574c4 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -45,8 +45,8 @@ mips-ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL
 endif
 
 KBUILD_LDFLAGS += $(mips-ldflags-y) -m $(ld-emul)
-LDFLAGS_barebox += $(mips-ldflags-y)
-LDFLAGS_pbl += $(mips-ldflags-y)
+LDFLAGS_barebox += $(KBUILD_LDFLAGS)
+LDFLAGS_pbl += $(KBUILD_LDFLAGS)
 
 #
 # CPU-dependent compiler/assembler options for optimization.
@@ -100,7 +100,7 @@ KBUILD_CFLAGS += $(cflags-y)
 
 lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
 
-cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
+cmd_barebox__ ?= $(LD) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS)                         \
       --whole-archive $(BAREBOX_OBJS) --no-whole-archive        \
       $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^);	\
-- 
2.41.0



