Delivery-date: Thu, 01 Aug 2024 15:48:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZWA1-00596z-1V
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 15:48:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZWA0-00012c-Qr
	for lore@pengutronix.de; Thu, 01 Aug 2024 15:48:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F+jN7rkS+YlO81ntk9Bx0RRPoGo6wpGnHc4waWrWLNQ=; b=0x2d8c6XgcOJpQ5Ad4dos4vulw
	RGoKjJWThkqU0tPh2t6uaMS39m57ySO1/S2kDXFYqKKVhxOPaIdmH0ij8djrAwCbmxkqrt3/kwEp7
	hj1kK+jmR6BG3YfHXu9LQK/053LAIYh/sx3tn7/DHe4VW4g/3dY3cotVPTep1BiP3LB1tJUiimaGF
	solT4S0i9w2OojWe4xS2qyKW/978Xf0kcphHm5vBuUNP0Z1CjIX9l5jrFfIJCsv4xvvEU5hN+H8rF
	DB3KjnytHvGO8wNxNDrM+l0Onms4rO7DjaEla3YHJPWIYqetaXSW5zyWmP4CZnoGuDXM1bbfUen6Q
	8Mgdsbqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZW9M-00000005Z8V-1NEk;
	Thu, 01 Aug 2024 13:47:24 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZW9J-00000005Z7l-1LvK
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 13:47:22 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1fc52394c92so61893275ad.1
        for <barebox@lists.infradead.org>; Thu, 01 Aug 2024 06:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722520040; x=1723124840; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F+jN7rkS+YlO81ntk9Bx0RRPoGo6wpGnHc4waWrWLNQ=;
        b=lfTI/RqMX6fQUGLBiAic8v2HqBh/6Hfr35UNTwBn3CRWRY9dEolqaWbznjJe3raDsq
         wJSZ+cu54C5IzKaPcCJ+gApaRWPUELDluKe9l5JHNnQ9L3mRoXFw+Eqkc9weQLPxiKDU
         /P3soZK2pVhCp6CD1tN0XGw+hB/1J3y1JywV3E+shnK90cmYxNrXocnlHLnooU15xpU7
         5U9xJBtdBNFtPEjN2FwUPitcxlqK3hFG+GycInbLzYpMlmzmeQhURNCwdYqO4UuqxgJ+
         BIHxOza2bNMQ0DiCF4qGHwjZ8N3YmC7fy2VOT5rX9cd8Q8fFle16rwejH38W2In+0sh1
         BoQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722520040; x=1723124840;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F+jN7rkS+YlO81ntk9Bx0RRPoGo6wpGnHc4waWrWLNQ=;
        b=XX4mtZ8Ttztq45WHhdAaNztDA/X1Qy8JbrsJ8btaSJ2yN75UteDY2LEq9FH/8zy/Kp
         TmH/Ie7HM97IPtYTYx2/WJL87iQZ0nTTD9q9s9Sr3XOgSmjAee2JTUEa0M2k9hvgvU0R
         xvbC/A02oGTnH64xwv5wLr2rBMgjk1CubUHiWQPS74tSJNKK/5VffLS3l1oaqvZ12ExL
         eOyyflZdgUYlJdK0JCId+88j+5WdwAKaSDD5X6mEB71C8nJbAhCvFzrL/27ysgt/aWck
         9hXkL0r74O5e8KTkG/pUYydaou8t+PNahO5mEeYoTtup4KJzMt594rY6Pp4l+0pbe6RA
         o6Hg==
X-Gm-Message-State: AOJu0YyDff7RNa5z7uSS/dg4fbvS61YVBH3Y3TsAG03lNTOYuaw73WMe
	a0XJd+mYXtKWPVjIwLOeGQQvH2wK+/MxPB+h0iDDzWnIgmnx3boxPGJ3eQ==
X-Google-Smtp-Source: AGHT+IFk91pUl4RXoZg762PFu6jykpRbLtHTqpAfLlFCAVeEX4+YPiTIS4FfYHZ9TEI1OFVQU8H/AQ==
X-Received: by 2002:a17:902:e80c:b0:1ff:50b0:f5e3 with SMTP id d9443c01a7336-1ff57292a15mr2490655ad.28.1722520040002;
        Thu, 01 Aug 2024 06:47:20 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ff622asm139336525ad.301.2024.08.01.06.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 06:47:19 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Cc: Anand Moon <linux.amoon@gmail.com>
Date: Thu,  1 Aug 2024 19:17:06 +0530
Message-ID: <20240801134707.11356-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_064721_383461_62D39A3E 
X-CRM114-Status: GOOD (  15.43  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] Fix Kconfig coding style from spaces to tab
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/Kconfig     |  2 +-
 commands/Kconfig | 10 +++++-----
 lib/Kconfig      | 16 ++++++++--------
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 2212b89288..ad47dbf78d 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -17,4 +17,4 @@ config ARCH_HAS_CTRLC
 # by default.
 #
 config ARCH_DMA_DEFAULT_COHERENT
-        bool
+	bool
diff --git a/commands/Kconfig b/commands/Kconfig
index 5b512f1bba..b72344f021 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -97,10 +97,10 @@ config CMD_DEVLOOKUP
 
 	  devlookup [-v VAR] /dev/DEVICE [parameter]
 
-          Detects the device behind a device file and outputs it,
-          unless a second argument is given. In that case the device
-          parameter with that name is looked up. Specifying -v VARIABLE
-          will write output to VARIABLE instead of printing it.
+	  Detects the device behind a device file and outputs it,
+	  unless a second argument is given. In that case the device
+	  parameter with that name is looked up. Specifying -v VARIABLE
+	  will write output to VARIABLE instead of printing it.
 
 config CMD_DEVUNBIND
 	tristate
@@ -2331,7 +2331,7 @@ config CMD_OF_PROPERTY
 
 	  Valid formats for values:
 	  <0x00112233 4 05> - an array of cells. cells not beginning with a digit are
-                    interpreted as node paths and converted to phandles
+	            interpreted as node paths and converted to phandles
 	  [00 11 22 .. nn]  - byte stream
 	  If the value does not start with '<' or '[' it is interpreted as string
 
diff --git a/lib/Kconfig b/lib/Kconfig
index df9ba6ccc9..44133a54f3 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -45,22 +45,22 @@ config XZ_DECOMPRESS
 	select XZ_DEC_ARM64
 
 config XZ_DEC_X86
-        bool
+	bool
 
 config XZ_DEC_POWERPC
-        bool
+	bool
 
 config XZ_DEC_IA64
-        bool
+	bool
 
 config XZ_DEC_ARM
-        bool
+	bool
 
 config XZ_DEC_ARMTHUMB
-        bool
+	bool
 
 config XZ_DEC_SPARC
-        bool
+	bool
 
 config XZ_DEC_ARM64
 	bool
@@ -152,7 +152,7 @@ config CRC_CCITT
 	  functions require M here.
 
 config CRC8
-        bool "CRC8 function"
+	bool "CRC8 function"
 	help
 	  This option provides CRC8 function. Drivers may select this
 	  when they need to do cyclic redundancy check according CRC8
@@ -204,7 +204,7 @@ config GENERIC_LIB_MULDI3
 	bool
 
 config NLS
-        bool "Native language support"
+	bool "Native language support"
 
 config BLOBGEN
 	select BASE64
-- 
2.44.0



