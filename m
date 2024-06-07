Delivery-date: Fri, 07 Jun 2024 02:13:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNEA-001sts-1x
	for lore@lore.pengutronix.de;
	Fri, 07 Jun 2024 02:13:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNEA-00086G-05
	for lore@pengutronix.de; Fri, 07 Jun 2024 02:13:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TbpSNSG2OJXlvXezcl655646V+JkLBtFJOdFTG72A4=; b=jaP6u0HqYFjEb5
	MMNzWk8h/iGUQpVtmidJ5jNbDVlW7lVH7uScJW6J0FtQuL29IO5jmy1YNoibBjqd0d9vGoKbLjYvX
	rHYMW9FClsUx63UrWJjRYynbQEAGBtEHCSJSm6ZhIGum9MOpIxLTsYK9Od/EN3YtVcBhl4W5A6KTQ
	f3Y1DJqbKJkeoKfyWsHa7cAs8CWrIonxNqy/RrvYjOt9LT2aguiwx5yR8n/+Is10WG5NdUJOM2cnk
	vDILe0ueghvogKLa/SuHKH6T4qrWTjwllFStOB7wtuCj0AQfllRKP75exEVzWW+nxgXZgohRnJGot
	cJE1kTGUt0JFwzdlt7WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDc-0000000Bmqk-0nIl;
	Fri, 07 Jun 2024 00:12:32 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDW-0000000BmoT-3BqQ
	for barebox@lists.infradead.org;
	Fri, 07 Jun 2024 00:12:29 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52b936c958dso1862808e87.0
        for <barebox@lists.infradead.org>; Thu, 06 Jun 2024 17:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717719136; x=1718323936; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1TbpSNSG2OJXlvXezcl655646V+JkLBtFJOdFTG72A4=;
        b=JACLibqIp4CzRyP5qNSlJ26JtEl2ackDqMlZShsxS+MlndF6NIHa0wsl1n/pJ70uFl
         DT74fKibpG1ckE+GaYyAnKwA0zwe1VGN45q+BNtlKan9xbjsEMMlpNnIyAy977cT/Ic5
         SEbsthYjq7iUwW+XlM/aEZTuXLmnc/8eCq2t2C2ZfnNTBZqrBOu6COnPqouvxpB9cVtw
         XiyjnxkXUkrWYdwJowjab0/4sxNkCUr6nCUIe9GU+kpJ5VRoZQSGQUf0aQZeamf4dX7/
         yMXtGflX5G2NSlq5sPTSsjqDnUVxFj3rGOdwCvYEV/ItatL/pmFa731uuRohrzw9Thym
         OCAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717719136; x=1718323936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1TbpSNSG2OJXlvXezcl655646V+JkLBtFJOdFTG72A4=;
        b=PWepu43V0tR/ZTW+HgVD98TmdB+BCl/OXmNuugeE5yQxuNaVapxy7e9Q+/cpeU3M7g
         CP36tWr8IPgeWrm4vW+AsUe9FKE+ftcFcrk0tZ5KZi/aJghq0Cyfd0+ZCpRPNcw11aJ5
         4CzJmKY7ezqIE+VuST6Kv1ayr04hHeMnlMe7idvVHmQMlX3DYQbmRY1ZO1TvwDRrHdZw
         KquakPwnneg5NWs/nfpBPlrcDzXeVrabI1E7oRznZWj1Lv29WDHua2gF2oc3yGcKGky9
         M1HXQeKuEckLdLhBL6320BCJAweZS7hTQ06L7BlQNNJW0+vei85PwH/0gmsSjnEbz91z
         nXNQ==
X-Gm-Message-State: AOJu0YzQa0ZmaT02RUFgvHz4LWwDNmYnqhoeyiXwcPa9VInN2obfLNQF
	5jQgzzCXNwdy0LU7/gun8Tj4/7GohIgR0zaAqZS1ZGgIpp/6EVuj4IyE5Q==
X-Google-Smtp-Source: AGHT+IFBvy+wZyi6s2/VbrYXKLwQxD3f3Q9LhLo+1Pc0q3/ghtT1YcZx9SXr/IDbAFPRrCeLi7bcJg==
X-Received: by 2002:ac2:52a7:0:b0:520:85cf:db7f with SMTP id 2adb3069b0e04-52bb9f7aa6emr553977e87.28.1717719135521;
        Thu, 06 Jun 2024 17:12:15 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb41e1db0sm342594e87.18.2024.06.06.17.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 17:12:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 Jun 2024 03:12:56 +0300
Message-Id: <20240607001259.107805-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240607001259.107805-1-antonynpavlov@gmail.com>
References: <20240607001259.107805-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_171227_004780_47B72BE7 
X-CRM114-Status: UNSURE (   9.76  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] pbl: enable image verification for MIPS and RISC-V too
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 pbl/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index d1877a988d2..5ff2a6ad3c3 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -54,7 +54,7 @@ config PBL_FULLY_PIC
 	  the code sections.
 
 config PBL_VERIFY_PIGGY
-	depends on ARM
+	depends on ARM || MIPS || RISCV
 	bool "Verify barebox proper hash before decompression" if COMPILE_TEST
 
 config BOARD_GENERIC_DT
-- 
2.39.0



