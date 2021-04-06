Delivery-date: Tue, 06 Apr 2021 17:02:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lTnDu-0008PA-D7
	for lore@lore.pengutronix.de; Tue, 06 Apr 2021 17:02:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lTnDt-0004nT-NY
	for lore@pengutronix.de; Tue, 06 Apr 2021 17:02:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X5qIxQMG0rD4KUerMegEzPJvvcMQPLQmQntyXQr2CJY=; b=Od9C766Qnlx/LX5nwS6kkEOG7Y
	dLa2zw+8+j6P+RNEuTQuWBvIeeb3NU6OAJZ6XRzNcGCPnyL5MC0iNmmrhfERCFE7In1rI8uKlCDTp
	XjnEFzSYaadsCCJDW+eJ+tsHIn//pH9y+Nmw/kX4G6CMv63vHlx/yJQRnYlHCdL698hfVUJVn0rl/
	2UybTMTMKP75pJZSzCDN7uLy/R7XGHNqUhx75BF0uxGJBSUg143x2s8AP39u07cHpv8oU+FVBinmO
	D6hK1lZHdXaFeIryx0ytseUAHZW3UfzbnMDCIVDn1YDetkyvnOJTPRfttMJ5cG8ncv+c5hfk0UcrO
	o/xUjN9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTnCd-002t85-FT; Tue, 06 Apr 2021 15:01:15 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTnCU-002t74-IZ
 for barebox@lists.infradead.org; Tue, 06 Apr 2021 15:01:08 +0000
Received: by mail-qk1-x729.google.com with SMTP id c3so15229119qkc.5
 for <barebox@lists.infradead.org>; Tue, 06 Apr 2021 08:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wpB5GmXBsGsvQmYgqdKaccm+fgTpYBG0D58lpvy/uJE=;
 b=VCS7G+TQujPXW1NPaquZUzYH9XdUXQoKTeweRARdocByumuTJNE/J7tVmS8k7uPPRu
 BoZEdyNe1yMncTYe5IobZ8EU/YPs18SXSVZKdMreOJdKiL/wu7rZA1Xm0+2M335ytBhH
 r6HIKytq56JuHMK/E5IEQ+JDGdTuIK7JUGeWR4YcGHACC+Nw+GV+10fuRfYmmiQvEXbP
 mR0LcR8H4IHKgaDSTZwRioodXsOzVZdH0DMfGIS0jbU52nH/hgPDWG/ZEzPGfCwuS5rm
 WAnmg6RKYUK13WbUPl0UxklGfMBLh1Fz9BMp5+gc4+nOtB9Ir3sDS5v2qv4OwgInSw4w
 3Scg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wpB5GmXBsGsvQmYgqdKaccm+fgTpYBG0D58lpvy/uJE=;
 b=epElohcAvSzGf6Gs4hH3AWx2HiYmyBQVJIwoHQAaMOo6JTXpEeMfl6Io9QfhRcBG6l
 PWAyr7u0ysZc6uL5V+CrIfhKc47kDdetWaScUlrN1ByeQtevRvConXvv8Y3s19DcEv33
 UIE/XQCsPnK8ZQvQtK4zSYCpKKUmZRLdQ9OZruCkpBd814ZvFhRlC+xxfZgMMPgwsF7j
 OMUgN2T5RS8GkOIVNE8kK9zks8iMZVcetWY+n4C1Tx5AOGjRGh9KvTdUo/Z7h3+22moK
 Y/DELtmTSMgSSH53qJYIfhfxkDh4DnLIcSP570ZxS3DJ3TjIBFUKiOTf2uU9VnvD5ID5
 O9gw==
X-Gm-Message-State: AOAM532/82bLHcyG6K51C4Jr1Do4yUHsoTswpYl7+aQDy589+ywF3gA+
 xNIA9FDBb1vjo0g0tHwrWTFaQPyBTs8=
X-Google-Smtp-Source: ABdhPJyrTg00AWn21aDcEAM5TFyw7irHIfaUrw+QIykiYzSQpSDk5gO3T3G2puCxFTMDmd7sx4SmLg==
X-Received: by 2002:a37:ef14:: with SMTP id j20mr30722246qkk.471.1617721264707; 
 Tue, 06 Apr 2021 08:01:04 -0700 (PDT)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id 18sm16320673qkr.77.2021.04.06.08.01.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Apr 2021 08:01:03 -0700 (PDT)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: barebox@lists.infradead.org
Cc: Anees Rehman <anees.rehman@atlascopco.com>,
 Vivien Didelot <vdidelot@pbsc.com>
Date: Tue,  6 Apr 2021 11:00:52 -0400
Message-Id: <20210406150052.4193972-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_160106_689602_D1FCEE7A 
X-CRM114-Status: GOOD (  10.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: fix typo in sxb state variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Vivien Didelot <vdidelot@pbsc.com>

The sxb state contains a variable with two typos in it:
sucessfull -> successful, fix it.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 arch/arm/dts/ac-sxb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/ac-sxb.dts b/arch/arm/dts/ac-sxb.dts
index 8f2eec0fa0..8a030a5c66 100644
--- a/arch/arm/dts/ac-sxb.dts
+++ b/arch/arm/dts/ac-sxb.dts
@@ -68,7 +68,7 @@
 				default= <1>;
 			};
 
-			last_chosen_sucessfull@1c {
+			last_chosen_successful@1c {
 				reg = <0x1c 0x4>;
 				type = "uint32";
 				default = <0>;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

