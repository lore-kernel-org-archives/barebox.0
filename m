Delivery-date: Thu, 19 Jun 2025 13:33:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSDWk-008vZg-1v
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 13:33:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSDWk-0008DM-0B
	for lore@pengutronix.de; Thu, 19 Jun 2025 13:33:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZmIqUlxGDbEVCoQWYNffkdtKBeS0vMjBdmVLFwc8cHE=; b=YrMkUA7C312yxbjsuELimbl8RQ
	uMPFX7d/zGj3sKl8/jjbWwfroorVoQfEaNxqliOWGws4jgles0ELRV860502dQyPvSFxUktwD9BpP
	Xyg3CKHLUDq1hm5tO7oQ2PC4W2yrmwbOs0LU6npeTGtbT797vTj6rVtxjPVi8/fV2ChJ67K41brqS
	MaZK7bQXHoJp3KhdxSwXSI7TMLfnAK03L0llUkbPV9HQzg+NPCBdcE/Wu4XEyvOsLrweGU/AtC4YS
	mYFSqv9woXitFsqi6AO7xV7lyQFsBEMp3tZS2RoFGHz+CZkBgfOP1rCP7nqV2feruu9JqwfrlyCwk
	THAxGBPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSDW8-0000000CtVA-2WrN;
	Thu, 19 Jun 2025 11:33:16 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSCbg-0000000ClKp-0RDW
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 10:34:57 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-32b7113ed6bso5944721fa.1
        for <barebox@lists.infradead.org>; Thu, 19 Jun 2025 03:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750329294; x=1750934094; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZmIqUlxGDbEVCoQWYNffkdtKBeS0vMjBdmVLFwc8cHE=;
        b=JN6zztC9PtEPEUoj/Addspb52EqkDu2pjYmhKV93oU+q+jXbcFQHPngZ2ZeNHEnYbp
         fztzliG+e33gnV/Xg7EvcinWK3tQLl4FJga6sGzD4syv4rg86agNV4NeMOW57Tb1+5u7
         bFVv4KtQeV+Oy/eBaCit8cMCj+TDUqH9LiVEGmavz3TIq1axdaX//cZTfdIIzwqxO/1q
         fYJVuUFfgfTxx1805vZsgf7XJ0kxY5wMUcujhI1uSSW/W6vL1gyhipYahQVMMPTTl3Lj
         bb5akyBcmy7XSxMlbQvmRn0HR6Ruj1n5eTAv1LqB+ttywIKzRX2D04l9D5EOfH+dwdMT
         FG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750329294; x=1750934094;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZmIqUlxGDbEVCoQWYNffkdtKBeS0vMjBdmVLFwc8cHE=;
        b=fTw46jVDy2DUIhz+/Rfo6DGGcPZS69fIMvp8g7gq3hZMSURu+jLzUnWWDoUIp1h+fj
         /r0QF7jPHvIDxWcRt6c3xYuDETGHUIYSAXGCUV0moDxjacPyP+X/fvlTFxffRJfVbgWW
         nbyeWaSz5G0qBDiWlZaZVaJP+RHgM5H3weeyd4/UBJoGyr/tWXccDIorv+SyTVOhrUQT
         gs8yK4qGgJ5dF4uDe19yhxQjJWIYDx5aQralAObJT98/QY3sser5k7qsTqO4y4RSIMWC
         htBd/CGw0aqJum7IW0EDNVdqEFh3yUsDVHGUGz8JdY3F0IGigS5B6BAvMA3IJgByY1Ia
         z1WA==
X-Gm-Message-State: AOJu0YxyH8aZzDDG42Qgm4L77HMV2+iM9LPnfuCsZLiKk/bvgBDlF/Gm
	2XoR4sn8aCMa7B1Ff+B5KyTaCC8tPTDKOr0dkaywMEbSJPthiNHBCoC4B0wx0A==
X-Gm-Gg: ASbGncuv+aTwx7yGQbPHrZUdjqhi6FJRe6uN5sPv9CpcNBTbhDVqyCPO+oxvxq/sozJ
	ivvKYO0mo62mBIY5+fK36LaLvRVgyr8nZpWXD95AhmJKn1pL/obC+A2NZSk9bKWs8iSvlodZbNl
	buOrZ4aOZKcyBjcfQAee7odGSE7XAC7SHP5Q6sduF6fyH1JgKocmifMUHmAkSGosfSV79yillVK
	4hqBaA0hQpG6x+nni6VlYQz1uj2Yokdd7506szGY9+9pk8MkuJsPfcC7JTM3Dd0HsXifhXmZpcN
	fkhyp77HexWVwH9abpRVe7ALakd2lN+aRwbXX1+46rRTYtfZlJsixICHW+FOinxDQ4FIdprH+5a
	OySg94fPA
X-Google-Smtp-Source: AGHT+IGhPeQ9uJTSwZTItZ2KGw1u/7FeTsl9IeE57+Ids/oHrsiSxP7E4GLFggRSOZHj0ncbRUnB1Q==
X-Received: by 2002:a05:651c:4ca:b0:32b:50d8:f122 with SMTP id 38308e7fff4ca-32b50d8f261mr58041631fa.40.1750329293333;
        Thu, 19 Jun 2025 03:34:53 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b8b231538sm1730281fa.41.2025.06.19.03.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 03:34:52 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 19 Jun 2025 13:34:40 +0300
Message-Id: <20250619103440.76796-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_033456_141842_7777A5D6 
X-CRM114-Status: GOOD (  12.31  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: remove unused soc type/subtype getter functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The functions at91_get_soc_type() and at91_get_soc_subtype() were
used only within the setup.c file. They provided simple access to
string arrays but added an unnecessary layer of abstraction.
Since they are not used elsewhere, we can safely remove them and
access the string arrays directly.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/setup.c | 22 ++++++----------------
 include/mach/at91/cpu.h    |  2 --
 2 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index e726495726..5969c32e54 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -281,12 +281,6 @@ static const char *soc_name[] = {
 	[AT91_SOC_NONE]		= "Unknown"
 };
 
-const char *at91_get_soc_type(struct at91_socinfo *c)
-{
-	return soc_name[c->type];
-}
-EXPORT_SYMBOL(at91_get_soc_type);
-
 static const char *soc_subtype_name[] = {
 	[AT91_SOC_RM9200_BGA]	= "at91rm9200 BGA",
 	[AT91_SOC_RM9200_PQFP]	= "at91rm9200 PQFP",
@@ -330,12 +324,6 @@ static const char *soc_subtype_name[] = {
 	[AT91_SOC_SUBTYPE_NONE]	= "Unknown"
 };
 
-const char *at91_get_soc_subtype(struct at91_socinfo *c)
-{
-	return soc_subtype_name[c->subtype];
-}
-EXPORT_SYMBOL(at91_get_soc_subtype);
-
 static int at91_detect(void)
 {
 	at91_soc_initdata.type = AT91_SOC_NONE;
@@ -353,9 +341,9 @@ static int at91_detect(void)
 		panic("AT91: Impossible to detect the SOC type");
 
 	pr_info("AT91: Detected soc type: %s\n",
-		at91_get_soc_type(&at91_soc_initdata));
+		soc_name[at91_soc_initdata.type]);
 	pr_info("AT91: Detected soc subtype: %s\n",
-		at91_get_soc_subtype(&at91_soc_initdata));
+		soc_subtype_name[at91_soc_initdata.subtype]);
 
 	/* Init clock subsystem */
 	at91_clock_init();
@@ -372,8 +360,10 @@ static int at91_soc_device(void)
 	struct device *dev;
 
 	dev = add_generic_device_res("soc", DEVICE_ID_SINGLE, NULL, 0, NULL);
-	dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_soc_initdata));
-	dev_add_param_fixed(dev, "subname", (char*)at91_get_soc_subtype(&at91_soc_initdata));
+	dev_add_param_fixed(dev, "name",
+			    (char*)soc_name[at91_soc_initdata.type]);
+	dev_add_param_fixed(dev, "subname",
+			    (char*)soc_subtype_name[at91_soc_initdata.subtype]);
 
 	return 0;
 }
diff --git a/include/mach/at91/cpu.h b/include/mach/at91/cpu.h
index ca85e8be6e..7114b5d63f 100644
--- a/include/mach/at91/cpu.h
+++ b/include/mach/at91/cpu.h
@@ -158,8 +158,6 @@ struct at91_socinfo {
 };
 
 extern struct at91_socinfo at91_soc_initdata;
-const char *at91_get_soc_type(struct at91_socinfo *c);
-const char *at91_get_soc_subtype(struct at91_socinfo *c);
 
 static inline int at91_soc_is_detected(void)
 {
-- 
2.39.1



