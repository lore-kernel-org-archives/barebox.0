Delivery-date: Fri, 16 Jan 2026 20:43:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjY-0024Sm-2u
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjV-0001e9-2S
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3menaVMdqrCFHKYjPjGFm3g85BTsnFCXeiH7zVEgvlA=; b=jFFDCjgUezvdwGeCm7XXNWKDmI
	f/1LWyBobfJQPdwNirIZ4SWz5//cAmP1hYBzZifygQWdnC9a1MRsDtPaBrAroQq/R92drKUOEYVYV
	QhHhfQVTVbUoPjJzLIr/+7pxc+PwtClLYkpJ9ZpLSBGBDJC4C+5FDITLx5UJ55qZHQOIAATpHKSIv
	0RfU6bMBKqbDq7OxG78obI2tJ+2IQGvaFsZSCyqBjUyaNTXNg8jfJNDUX8hc+XchbAgHcW5d6kIO8
	g7QpcgE+douYIXXtPm6o1I58TjJBMK7Z1kNnTuZzmHwMbLSdFUVCNFIHgKPTOVC06g1FlQLt4qzrr
	sjji5vBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpil-0000000Ehuo-4BN9;
	Fri, 16 Jan 2026 19:43:00 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpih-0000000Ehmu-2SnY
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:56 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-b8010b8f078so397524566b.0
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592573; x=1769197373; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3menaVMdqrCFHKYjPjGFm3g85BTsnFCXeiH7zVEgvlA=;
        b=EswMdICrdSBFirLuAADEHAVu9U+RhDGJbjoiYc7OxvUKtzPaI6tsFVY+haQDT/RpXn
         Ev4s9px3fmnZGTINixlhc1+lQWwRNeMhbucL8mzruVrMDg1m1XQ/H5lSdZFcfvb83NAc
         45OTT5DSIJgGoRS8OSStBovQhFBaHW9vqqWtr567ODdqouJU8xKwPs0fkn1b4De/GZqp
         Cm67KXLXLdbQhjO5mkT+puhKEeD9j/iEpME8K1AoLahC6pFA7kcpz2o7LN+4hdb+kmor
         8Ep9qgODGFQrMKVmmUV/79jg9tOpPrmTz+iF0h+EFuHhXao2HW3vVCUsPmcY3eBcuONi
         QImQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592573; x=1769197373;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3menaVMdqrCFHKYjPjGFm3g85BTsnFCXeiH7zVEgvlA=;
        b=ILf1HG6gtrPwsQg4VnH4bbzJvSrrj4g9bBK6jpXRnHvO+hpcuI994yac6QAHhXVVqs
         XC4QF3q1T52pe0bbfMBkOesD1kd2l2Gnerrrt4XvRd1no1ZiGrM8v1OPgKEBkK6IYSoD
         SqtyU7KtEUJZ5F8WuaHiXxgSE2tyRaUYqsxZnmue1fcL1+azh5ZrcplWH/7lxS2qfd/x
         bL+DRvtu/aYsJGG0YGTjrt4aTvztL+bQFkStCXn7/dw+/dX1p1riVYeDNfuhRV0cQSBB
         tJE07kvcmtZAZGZggNRI4BO8pH10XnEvyZ981AiAWeUMiz8PS1EAV5yqEAD4DbkLvo4N
         Xu5w==
X-Forwarded-Encrypted: i=1; AJvYcCXQabuR4fHUJqcV8JM/IPHGDsBL/OVWkw2/readhIwKXSDqfGY810UM28pPJ48+0SGOQfLCt57w@lists.infradead.org
X-Gm-Message-State: AOJu0YwQhBCFbUjZApfIsxF567+RWi4f5uR0TrkB75Jv/gL1PGJFrcfr
	6kYEem1AgmoEuxtJ8IjccI05Qf4/AI3rjsuuS92YE2Xrv7dhuUS9eSGuZVTFaQ==
X-Gm-Gg: AY/fxX6dGoznkVQHlhAPByYX3cbyVR1kJUFUH6V0+WET9zmckCLuu95+itUCd/2HLjC
	lZuxGW4l7/ighj530u41aYJYUyf+k7iEPOUk7SL+H5+cno/6UjqdaG0PetfD2Mo39Cxv3gxDr6O
	WTWR7RDmQOkXGJVLSaMJfUouB2cvLIGILBBuEP9glOIha+hpSVNkgVqSUSSuVrp3Z22Pt26xaBn
	rJWa6/JrKWpBtt8giy+WZTHukQ/xFVarL9PjHWdhrvAdqSnjdUt37ayQnKtIjykIbiIWFqd6ZGy
	U4qH+/bGcPsL6l76SFnRxa+F47XwzGEXyXHmUNaIyU77ira8oCffCOZ/kK24i4EXioJa8vs+0mA
	XGeLBaUFO7B/HhTSWhvcvmEZPTBX3mYpibEe/+xTGipaZxPumraGyygRuURM3FaDfwDe5H4t+mx
	UfAIzzFIEY2xtbicTISS1YDdVndsC3425GH6fYAsYPryhXp2YzUWUuCts/3EN5g1TIr5+p4jU7p
	cHrWsEjvKuew4bqYORa2IXToYgjtRTCKv5D9bVbn4wKF7OR3ERvq2/haxAhr+rMCn/Gzo7fxKat
	MraViShujgVpOBXwD9DUKKWDcn9v2iOcTj7N4zRcQw==
X-Received: by 2002:a17:906:f5a3:b0:b87:1ffc:bf9b with SMTP id a640c23a62f3a-b87968aa44bmr324150066b.3.1768592573249;
        Fri, 16 Jan 2026 11:42:53 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:52 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-11-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=692;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=Iik0mEOb3e6bT9pd2AzRWaLQHHfjBEiqwmIJKFQyC70=;
 b=ylg2+Axq27PsMjiICWRHH8FBxZldtOf6FexLgAOjLDdo6ILYORqt7iPvcaiAJACt/UDyMVjaI
 HuaLvbbXQXmANxnuznHjKLgPBY/lmb4SNHJDeDL7mQoxUIfQRcmwU5E
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114255_638276_76F8EA18 
X-CRM114-Status: UNSURE (   8.58  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/14] mci: sdhci: rockchip-dwcmshc: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add compatible string for RK3562 DWCMSHC SDHCI controller.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index c4c03f703a..0bc6824c80 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -352,6 +352,9 @@ static int rk_sdhci_probe(struct device *dev)
 }
 
 static __maybe_unused struct of_device_id rk_sdhci_compatible[] = {
+	{
+		.compatible = "rockchip,rk3562-dwcmshc"
+	},
 	{
 		.compatible = "rockchip,rk3568-dwcmshc"
 	}, {

-- 
2.43.0



