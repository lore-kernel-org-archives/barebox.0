Delivery-date: Fri, 08 Jul 2022 08:48:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9hmn-00ACrV-2S
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 08:48:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9hmo-00085x-Re
	for lore@pengutronix.de; Fri, 08 Jul 2022 08:48:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cJZLn2Bx4ZOhGTVdIR6RXwjCU+iGkywIuDg5BnPE1QQ=; b=yyWbLUdAfvZyPy+z6Slx0p1ezQ
	Iom7eher2KeuyFizbx9PvhfZUF6ofTAUbCRflvbrPTJEln3o5G+tvfYfqukvOtXXowrlM563tyaW8
	VMlez5El+86s4vXES7BSgj+D4QJyPCn/MDiYDjazVj2RvyJ7DBvYFsatJnWJyBlk56E/Ft0MRnpZ1
	b0UW/hgqX7DEWyJurHGIuHBExWIhuLDjvmF/pAtHj+ax2JVgikwls15+lkT0Fo1+g5cF8ByNx+K2w
	K871k3++NneqORQnYxHxbc4Ue8yrpfBh6+gr5O2IDqu1NDtIYfHCB/ZQmM7ILg9bE+KerMAvOVxWn
	C/8kqbVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9hlR-00264x-Dm; Fri, 08 Jul 2022 06:46:57 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9hlM-002647-Ja
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 06:46:53 +0000
Received: by mail-lj1-x235.google.com with SMTP id w2so8517600ljj.7
        for <barebox@lists.infradead.org>; Thu, 07 Jul 2022 23:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cJZLn2Bx4ZOhGTVdIR6RXwjCU+iGkywIuDg5BnPE1QQ=;
        b=gQ0EBuWp27/fBqTvPYOQO7Cf4xsp1oJiKz93c9ljBTZqv+ZBkG46OKBld218k9d+OD
         8FAuzJK+jX1hiFfvHBqAca+fpWHVMweTNpFotv5LWmWJeCR54Q0DwMC80A3AGsmpL7LN
         VN5iIFp3nZ+d5esyZtHZD7kp4IsWeHOHWKaM+jFdPscOIqsT7rfsJqO4jblEcpL8w2Ai
         3qphJtdXeAkr6mW3BijljaqxO4sgDrtQKUKSDiKzZ5/E2/sZCONx15T8Q7UMylwuWjWD
         IBcmlr9adpPER5gEw88TNKDf3ThI2JG4wFKnq724067ixN3vRQD0icLuKFJTSXVZll78
         +BCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cJZLn2Bx4ZOhGTVdIR6RXwjCU+iGkywIuDg5BnPE1QQ=;
        b=cdgaW+InlAXKZkQXPnrK00KLsUV6QVQxZrIwXbueIKeZN3ab8cd/CEjo/yAOvO3US1
         bJBlSI4IXVjKYybN1v4NH8M7qNKTlgNPrfKYFQQ8kvW9h6MnN91u0ofokqKQujQU4338
         P57tdJBqHvNCoI3aYWT3WMZ4HyblhoHLTsxsA+KK8JCrQuz7Ijr/pM7+k0OlhnQO86rx
         eCQ2cUhqxLqZ5Cm11Puz+RWIlPY9lBVb7mSLiq4y5AshWfFytZ8CLHI6swpQByNeXIsJ
         iFVDsgZLrfnXhywUnNChiwxfPV07KXE8woKRyhOEi6u+jY3ha0jpZpvZ+SHBqX3CTHXS
         QiUQ==
X-Gm-Message-State: AJIora/NxDGPbN9FTRU1zV2HAuiEM0OXSD6q0gXhcAO+neTbgCWb/s1p
	Qq3B012DKpJK0GCFGcWcOdGtG7C1IcE=
X-Google-Smtp-Source: AGRyM1umttGePlbPTCpfijBSTO9ZkS3/z2pu78OUa/6Xmf8MxXm9+bp1xf6oZv3QbUKy17AH9AbuFw==
X-Received: by 2002:a2e:bc20:0:b0:25a:8b8c:8f32 with SMTP id b32-20020a2ebc20000000b0025a8b8c8f32mr1123105ljf.114.1657262808740;
        Thu, 07 Jul 2022 23:46:48 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id bp23-20020a056512159700b0047f65b60323sm7248588lfb.3.2022.07.07.23.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 23:46:47 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  8 Jul 2022 09:46:46 +0300
Message-Id: <20220708064646.10843-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_234652_698394_1FE61B6F 
X-CRM114-Status: UNSURE (   8.96  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: am335x-myirtech: Update to use upstream DT partition scheme
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/am335x-myirtech-myd.dts | 35 +++++++---------------------
 1 file changed, 8 insertions(+), 27 deletions(-)

diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
index 1ea0f2a440..54050816fc 100644
--- a/arch/arm/dts/am335x-myirtech-myd.dts
+++ b/arch/arm/dts/am335x-myirtech-myd.dts
@@ -22,33 +22,14 @@
 
 };
 
-&nand0 {
-	/delete-node/ partition@0;
-	/delete-node/ partition@20000;
-
-	nand_parts: partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "MLO";
-			reg = <0x00000 0x20000>;
-		};
-
-		partition@80000 {
-			label = "boot";
-			reg = <0x80000 0x100000>;
-		};
-
-		nand_environment: partition@180000 {
-			label = "env";
-			reg = <0x180000 0x40000>;
-		};
+&nand_parts {
+	nand_environment: partition@180000 {
+		label = "env";
+		reg = <0x180000 0x40000>;
+	};
 
-		partition@1c0000 {
-			label = "system";
-			reg = <0x1c0000 0>;
-		};
+	partition@1c0000 {
+		label = "system";
+		reg = <0x1c0000 0>;
 	};
 };
-- 
2.32.0



