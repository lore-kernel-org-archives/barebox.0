Delivery-date: Tue, 05 Aug 2025 13:47:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujG8T-007HWu-2U
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 13:47:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujG8T-0000Th-8i
	for lore@pengutronix.de; Tue, 05 Aug 2025 13:47:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IimXw2hyhu4LCZZrmz9Y45bywvqPRI+6MkNHiL7pmIo=; b=z1YWQsBLrZlE63
	MXHrEvq0ybLMJosY5x0wmw8ZoAs/3g60GoaGZTAD7REYvvmsenbw4RAMsVjQcgr8FM9PSzvWJI9G9
	G2wH74uvxh/gM/+ge2yzG37jgr+h7FGQVpZ1ou4+88K50JUlO+bu+I4JT2V1YF6Yg+8CkajR02YjD
	lLhFsagX9MIjKoWDUukpFf/cjYRjvX3NyS4KrIy1XkCo3m9lBXWiJKm9Z7ovDAjvags/Fs0ftt7u1
	1/i4AfrrfmYMGISIGocMsndDzVlrfyrDTbkAohRf09QfSiOsteFv6R4hhCiqsd42eSOc79NoFdWDE
	SO/x5Zc0VkUTDk0kzQhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujG7q-0000000CcYQ-436A;
	Tue, 05 Aug 2025 11:46:38 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujG7N-0000000CcVk-1tK8
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 11:46:12 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-458b8a63233so17754715e9.3
        for <barebox@lists.infradead.org>; Tue, 05 Aug 2025 04:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754394367; x=1754999167; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IimXw2hyhu4LCZZrmz9Y45bywvqPRI+6MkNHiL7pmIo=;
        b=W6V7tHA18Ec+6/l5YvnW132vuY+M3nQI7ZTSh8Lh6mVCakAVA+w6EiX3kV3ne9+SOZ
         w9pwXPKs1dnPOEFvcwtAptN8X3oMXX9B26G/F7FNFCZX366UupGhVrvkIHZsCY6jA/Yx
         ezT1mo2Gez0ivzG9ttRSmjPETDnbggv9pZXxysgJD5+z/vffh4R1LZBCCeXNuHSPFldk
         Xz7HaRki/nNBX67tg1EafkIc59pqXl6ltS4n7PGuJpUffb4mY0AqepPq28oWzFTkIASN
         Zsa0c5EFWb66RC0v5lDL2hmTyEHd6pu3aZX97U5CF8m21hskevhtp3FdzxxSdHPkSXuG
         W3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754394367; x=1754999167;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IimXw2hyhu4LCZZrmz9Y45bywvqPRI+6MkNHiL7pmIo=;
        b=OLlqY0lqUjTcp+4aZKAiK6bZx4RkYEZ2vf2Iag6DI89JbcP+oPqx0deMUEHibp7qNq
         4m9PWQWR46GWecWv8zLp01Z6ne/qg6Z/TOKgjwnUrVIKvjSeDJgox+JANWQEMY3DYwr3
         HE9LvaVKIefCY0Q7qW4aXCAG4kqSgI6TRQO9Q5PQAdAziYeibfwou5OUwFUC6gu3LyTC
         Nmy8QMWjMkUhV7NCAx0rhJ880Xsz3LHMYjrvTHNb2zFJwAEF+SxvHFGDnF9m2HzSNESf
         tWHQBQ+q8cx59zOGoiTKHR8m6Ws0duuiKZtKCwJX84JyyIPn1r1Uawghc8sx3N9PBxa/
         QYOQ==
X-Gm-Message-State: AOJu0YzpHwV8fIhLdRhUcbKCKb/v6DBvJ/q6DT5qVpxcuDjXacJVqbHm
	r4RDk8sU1DJxYgpDQzyszJ0zooj5DYF86jbBAL2W91cCAGfBusA8e3UFu7tZrh12
X-Gm-Gg: ASbGncsyNlDcBE/cgmIuM18X4S5uBJspDnZnnA+4sJcBi9yTvszvIkA6yo1TMZgx6hs
	cXbKOKRlMalf3WO2HslNxqxK3gwhH9158oqJgG0kVvNtXjqJCTMaZcgS7LK1ZdmjwjAlGldbttK
	WdAldmbZW+sfahrsiLTmVMUzxifw+UTou6GuXsNBeZpQyQ1qEVAqkWpXXD/M4RvZRs/Jwedyaz4
	Ih3O39+CbXot70Vu/cMiRP34eRj8s79RdKvNWax5x9jsHkneVEPXQ7y95DJxHqawAAhZ4XCTv1u
	1sFdIAV7ND6s87WKbp9KgTM4l8bblx8XCg/Vswv8A1hTfcn5tN7DuZQz6RvKS2IUNoznQ1vKFqV
	jjn+Av2yHeN4EePFV1vqnOsy8yrbZ6DK94SrcaREUHVT++CsqYFhgBQEmVs/fj74=
X-Google-Smtp-Source: AGHT+IEcYEQvZk1KZjEzQfA8yAUHYLhvpr2JrLTYRGqAFtOp4CYJdTaKOaUufR7mgoOHX4pLO2droA==
X-Received: by 2002:a05:600c:6304:b0:456:19eb:2e09 with SMTP id 5b1f17b1804b1-458b69e0380mr101199055e9.8.1754394366627;
        Tue, 05 Aug 2025 04:46:06 -0700 (PDT)
Received: from fedora.. (2-224-27-56.ip168.fastwebnet.it. [2.224.27.56])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458b866392csm83717485e9.2.2025.08.05.04.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 04:46:06 -0700 (PDT)
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Date: Tue,  5 Aug 2025 15:45:29 +0200
Message-ID: <20250805134530.14763-1-stefano.manni@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_044609_489651_E1814DB0 
X-CRM114-Status: UNSURE (   9.09  )
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
Cc: Stefano Manni <stefano.manni@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: nand: add manufacturer ISSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
---
 drivers/mtd/nand/raw/internals.h | 1 +
 drivers/mtd/nand/raw/nand_ids.c  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 191244801b..07129af7a7 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -33,6 +33,7 @@
 /* Kioxia is new name of Toshiba memory. */
 #define NAND_MFR_TOSHIBA	0x98
 #define NAND_MFR_WINBOND	0xef
+#define NAND_MFR_ISSI		0x9d
 
 /**
  * struct nand_manufacturer_ops - NAND Manufacturer operations
diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
index b9945791a9..249bfd4a36 100644
--- a/drivers/mtd/nand/raw/nand_ids.c
+++ b/drivers/mtd/nand/raw/nand_ids.c
@@ -185,6 +185,7 @@ static const struct nand_manufacturer_desc nand_manufacturer_descs[] = {
 	{NAND_MFR_STMICRO, "ST Micro"},
 	{NAND_MFR_TOSHIBA, "Toshiba", &toshiba_nand_manuf_ops},
 	{NAND_MFR_WINBOND, "Winbond"},
+	{NAND_MFR_ISSI, "ISSI"},
 };
 
 /**
-- 
2.25.1



