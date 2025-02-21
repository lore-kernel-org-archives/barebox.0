Delivery-date: Fri, 21 Feb 2025 18:14:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlWbz-005CC3-1G
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 18:14:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlWby-0006H3-4f
	for lore@pengutronix.de; Fri, 21 Feb 2025 18:14:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GFrv/honQFeSFXuoxlCkLJ1wuWZl53Uqceeaf9nbWPE=; b=nYqoEp8c4pz3nQNuZ+XPrwNaAk
	mTpZDOD3RtOqWX8IMlVR3NlzJ0kU6cPyzQ1fng768t3oL24DlL+4gStJ+9nguhMY1zjZzRNVr0pDw
	uW7jIGaDM1C29k8mGOyNN3wwLCnck6YGSVM5lA3JwcZrmb26Hhevi2BzESK74Lvr5uV82mXyPtd1x
	uVsbpC91a8okpzt8xjgomsXH6PRoKJ0hdKDTVL0XzhIY+1twOSyV6VYk7pVXSPlCB54bSCbctmerR
	pNQvwhGYzAluF2W+F/SpboDJzAfd0kcgevWU1Dab5Fez9pXUCMoUe3tGYe8KRgg69sQ4TE/L0hQYe
	r2UsozPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlWbR-00000006L9s-0w0b;
	Fri, 21 Feb 2025 17:14:17 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlWbO-00000006L7p-1RxC
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 17:14:15 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-43984e9cc90so20696665e9.1
        for <barebox@lists.infradead.org>; Fri, 21 Feb 2025 09:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740158052; x=1740762852; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GFrv/honQFeSFXuoxlCkLJ1wuWZl53Uqceeaf9nbWPE=;
        b=HBDIJ/zisPNmDgDJnk+/+kvpqT+hj3pfIY0oDCPAqqywOO8mBHubH+evvrLiwODkfC
         OUfKH60OjmYpfxoFSagVJRrEh/GPAOy0Lngg87m526MkP4tDwlrZJ/AXBqtbZaHBeMJv
         Gd8k3aMO5C/fEt++CfaJbigJGYVa5JSH2fZyDqDeimvVKtwLpi+0rwvIPr20rVfceXIL
         oyqx1vAaICL8F5HTh3hz0Q4PEl48kwn1QF2Q4gXyTXUiHzPOJNdKDZoZpkj6WBLIlXMb
         GK8PlaJ9SCQW70XlfrkKVgd9wPQZyivR7H4vbQV1Q4gaOE9VbH4EgXzxpBisivDvunHW
         2eZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740158052; x=1740762852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GFrv/honQFeSFXuoxlCkLJ1wuWZl53Uqceeaf9nbWPE=;
        b=acKf32+BCfb2JCvtYDSvCBYot+GKUNkRcLarlqkzgrkzraMR82SteF1MVUYaNsmimS
         OLKDegnZUOr0CrfFOSRHrm0SrxigB6jS7IxFLexJPQqBLatjGU9l5XZjPFtZPlm6oTBt
         AZ4JGTAe+1CY5/qdEG+wSVf8JUsQoacCLMGcmUfK+vS2+0/mogD3PFqKeS6MDlcR5kpr
         8MhIaugmqvJL0MXMY9MpsTjSHD9tel2jpyYAPOAXvTAHHvgNF2kTcpM5iWfBEXJ8Pm+p
         +kqD/bh8hSU6+3oOZhn3w7Z8TjzUKy9lcDtrXchWxR8e+StnSLctr3l+1IJzykK+9dST
         kJkA==
X-Gm-Message-State: AOJu0YyZTXRecPrsUOJUw23vkrUQYqVEfwCBexO4R3R5LAg75xy3hSxX
	jshEVw3G63TTjiNyaa1JCyIe9GjmliLMm4iOuKDvwfzRffxICNYZtUeR1A==
X-Gm-Gg: ASbGncs6HQ1UlwFYqbgnRqsxfPnmQpJdSozsdoejv/Acjtg1suDlvCzUAnrh49K/l8I
	Mf2l/j8P4NcQuNstyxIvR4eSlRmXmJ95FILmSlZEEwlq1Z6Efo7C/fStP3JNk3saIzqy+azUYvs
	iR46kcFcr/JSigzkmAF+Ny+KUeBIKxKsrYvs/AebVsWTrHgf9/glN3DMavJ0TyWrb6/Icd7Yyy6
	vTG3XhS6mcCWjACJeReXIW0ovnAtHnjoQ8A0eDXkwNTJ6cQxDaM4R4SoYaEHv09rfcWK/IdsDH3
	YgWxSGKp3O3m3iJx7dvA45poUBehVTDipCngmPAwkXzDlnuGBfAwTbPGL4tX
X-Google-Smtp-Source: AGHT+IH+GL2+ndZEwCepHKca97T9hSAc/phZfy0YIjvgtk2ncT+qQ28ZksfPmoTex+FY7Tt5WSwAwQ==
X-Received: by 2002:a5d:47a9:0:b0:38e:dcd1:3366 with SMTP id ffacd0b85a97d-38f61611206mr7044601f8f.20.1740158052347;
        Fri, 21 Feb 2025 09:14:12 -0800 (PST)
Received: from fedora.. (93-38-135-177.ip70.fastwebnet.it. [93.38.135.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f561bee3esm9240313f8f.21.2025.02.21.09.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 09:14:12 -0800 (PST)
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Cc: Stefano Manni <stefano.manni@gmail.com>
Date: Fri, 21 Feb 2025 19:01:09 +0100
Message-ID: <20250221180109.14129-2-stefano.manni@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250221180109.14129-1-stefano.manni@gmail.com>
References: <20250221180109.14129-1-stefano.manni@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_091414_382946_69291046 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: boards: fix nand bbu_handler device paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bbu handler for nand now takes the device
path as parameter and no longer use the hardcoded
value.
Make the change accordingly to all the boards
using it.

Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
---
 arch/arm/boards/digi-ccimx6ulsom/board.c  | 3 ++-
 arch/arm/boards/gateworks-ventana/board.c | 4 +++-
 arch/arm/boards/karo-tx6x/board.c         | 3 ++-
 arch/arm/boards/phytec-som-imx6/board.c   | 4 +++-
 4 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/digi-ccimx6ulsom/board.c b/arch/arm/boards/digi-ccimx6ulsom/board.c
index ef6828c02c..9765c65839 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/board.c
+++ b/arch/arm/boards/digi-ccimx6ulsom/board.c
@@ -11,7 +11,8 @@ static int digi_ccimx6ulsbcpro_device_init(void)
 	if (!of_machine_is_compatible("digi,ccimx6ulsbcpro"))
 		return 0;
 
-	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+	imx6_bbu_nand_register_handler("nand", "/dev/nand0.barebox",
+			BBU_HANDLER_FLAG_DEFAULT);
 
 	barebox_set_hostname("ccimx6ulsbcpro");
 
diff --git a/arch/arm/boards/gateworks-ventana/board.c b/arch/arm/boards/gateworks-ventana/board.c
index aa2137a971..9c0012b359 100644
--- a/arch/arm/boards/gateworks-ventana/board.c
+++ b/arch/arm/boards/gateworks-ventana/board.c
@@ -72,7 +72,9 @@ static int gw54xx_devices_init(void)
 	if (gsc_get_rev(&client) < 'E')
 		of_register_fixup(gw54xx_wdog_of_fixup, NULL);
 
-	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+	imx6_bbu_nand_register_handler("nand",
+			"/dev/nand0.barebox",
+			BBU_HANDLER_FLAG_DEFAULT);
 
 	barebox_set_hostname("gw54xx");
 
diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index f964ddefd1..1e14a75272 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -110,7 +110,8 @@ static int tx6x_devices_init(void)
 	 * this board has eMMC or NAND.
 	 */
 	if (sbmr1 & (1 << 7)) {
-		imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+		imx6_bbu_nand_register_handler("nand", "/dev/nand0.barebox",
+								BBU_HANDLER_FLAG_DEFAULT);
 		of_device_enable_and_register_by_name("environment-nand");
 		of_device_enable_and_register_by_alias("nand");
 	} else {
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 2db3fa1db8..7e6f61bc36 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -259,7 +259,9 @@ static int physom_imx6_probe(struct device *dev)
 		imx6_bbu_internal_mmcboot_register_handler("mmc1-boot",
 						"mmc1", 0);
 	} else {
-		imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+		imx6_bbu_nand_register_handler("nand",
+						"/dev/nand0.barebox",
+						BBU_HANDLER_FLAG_DEFAULT);
 	}
 
 	defaultenv_append_directory(defaultenv_physom_imx6);
-- 
2.25.1



