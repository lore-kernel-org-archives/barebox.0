Delivery-date: Tue, 25 Jul 2023 07:08:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHJ-008zt0-5t
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHD-0004FS-Ul
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKNcffC/3psTBDe4/0a3Qu4XAZ30bO4Eij74bAgciGE=; b=Fc8EJbf/amg4n8
	COAuYFW+/ptZQgad5ogDQsC3IG1HjO/rEBT6F6ZLHCjrxCwisfvUjGIVDII5AlAd++SED8cJuQ0Ka
	KJdy0qkEWMVFSsnU/4QY0hBr2xdYXVizGrcmKM4Ee1EzNwFKa26rzNBijV/6gBrYx0BamB47TZwI8
	hdJI3Ud84CuasHnjmvoZYReoX5cUTTx/1lAdytTodpUe051inyerw0IjwF2dOZgb+llKKSk249kgA
	6ehrDKNbXPRgAw6cciDZsI419VKS20fHSVB+TU65afcA7UU0XnVbl+2ly+RPZIOV/+0nGHT0xZI2Q
	vFWvllPvck2S8wCfb8iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFt-006FID-2Z;
	Tue, 25 Jul 2023 05:06:41 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFq-006FFa-24
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:40 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so12740573a12.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261594; x=1690866394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pKNcffC/3psTBDe4/0a3Qu4XAZ30bO4Eij74bAgciGE=;
        b=eoEzu0fwKp/xtLKGpD8fxGd6RclvhbK8Qrgc2gnYJG/EowG9XY+xtrdcTi4Yx0feOK
         ehDUgIqFqW2wXrvoaWfCvY+5hFDfOIh/mvEle9bbaHrbVj3dsm5a5pf67Yo6E0eKFlNd
         yvC5d7LGP2+okV2hoIQb86wD5DRRK7MzjeKfsIhmg13b4AQDrENMbOjONhoL/+UahO6C
         bsMsO0n9h8AjNh9t1idkAR6CVbokH3ezqF4to262LLxEjdcQKrGk4e/iX9w3TDt83F9N
         UUSpDxZFx2BWvHbf5xR4d0E/OT57FAGNKwi82WX6CRMFbMJ9OlKU/TFAg+/n2tU3CnWC
         aChg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261594; x=1690866394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pKNcffC/3psTBDe4/0a3Qu4XAZ30bO4Eij74bAgciGE=;
        b=chxjejA35JxSHuJ+YxOhQl0idwXQ6jESBaPcbI97F4nzELPsa0R58dnV+swBOtzQ7s
         Hf1BzbiUgmzCkXQIBLNGeMP7w0Ehe4lfDcKfYNgWk7mAoMeojieLbd0uaCxMFkbIUyB8
         9iO98NQp5e33Tl4trZtlEBp33zBowTvPl5BAW3wjauIrOW+8mxmEaOfUszFTAaZ6ExpH
         UiC5EzcPdztkYsX51bWpOsH07ujHGLU7xTaDPXrsqgKHCvXeOCnExWkN5MEjwloilPxo
         JcYMCPX7Hgh0ll/hgPMcOceIxqYfZXUt1nmxYyq/PsOZxZbbvTlQYTqQaAOOhgMAKwCQ
         KRNQ==
X-Gm-Message-State: ABy/qLaynHmmfJaoSu/oDhZUZ+SUuFu8q+qcA4pupdBdkjQB2DMHmM2K
	gd7XJmbgsVM29xqEvYpvpma/KkbrcGE9b13AeojK1A==
X-Google-Smtp-Source: APBJJlGUaZNaI7d2OX/bt2RMkWctmAizzr/DSNAbTuUgZA938/5SyzVEVJS8bWHYhjs9sIe/5qjD/Q==
X-Received: by 2002:a17:907:8691:b0:988:565f:bf46 with SMTP id qa17-20020a170907869100b00988565fbf46mr1320297ejc.32.1690261594578;
        Mon, 24 Jul 2023 22:06:34 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:34 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:05 +0300
Message-ID: <20230725050618.3451-5-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220638_680074_7B504F87 
X-CRM114-Status: UNSURE (   7.79  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/21] MIPS: barebox.lds: remove extra whitespace
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/barebox.lds.S | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 1259a4e94f..0720f9295d 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -3,7 +3,6 @@
  * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
  */
 
-
 #include <asm/barebox.lds.h>
 
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
@@ -67,5 +66,4 @@ SECTIONS
 		. = ALIGN(4);
 		__bss_stop = .;
 	}
-
 }
-- 
2.41.0



