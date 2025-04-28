Delivery-date: Mon, 28 Apr 2025 11:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9Kys-00081V-0T
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 11:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9Kyq-0006Yh-NA
	for lore@pengutronix.de; Mon, 28 Apr 2025 11:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gFI99GJWmH0cbbi9Njs3HBM/64dmBHDVx+/nMGtAD8Q=; b=A9Kxa/hcx6ZZD1jnVWQaIddL9g
	JwDWePA4qBHyuTN/iBcZK3DVgoHny/cXS4PQoQoJTeCoca56TJBR2oCo3idHkL58xPXY+gFUCvIGn
	4Nx4bYCZud9BesLt4P8acNQwcb9IB/Z+dKlrrd1TMA/P2X6W3yUww0pOpSq+rM8xPXjrQsNyk1dGQ
	0WzP6sKp+eWOvJXs0ogsr2FZIcHWQww/VtpiGCNKtYViCly35fuC/gdk4hfwvV0kud42yM3jHhwWK
	svowOg8pT4VZr3nF2s2t7LNB6bSafs0j0Kit6ZieUwuz8sEy/+hYeCvIEEdKKnYMsmxaFoeuFPNU3
	AkvUstgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9KyG-00000005gEE-0jVB;
	Mon, 28 Apr 2025 09:40:16 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Kjo-00000005bO1-1kja
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 09:25:21 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-54addb5a139so4926725e87.0
        for <barebox@lists.infradead.org>; Mon, 28 Apr 2025 02:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745832317; x=1746437117; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gFI99GJWmH0cbbi9Njs3HBM/64dmBHDVx+/nMGtAD8Q=;
        b=L/Tk2en65IO50k8EyGQgUXe7e9sdmLPTejTZPCIHva7ZgHnIorjTIQYpUpcB1+HEPt
         KkJZ037i3ZvPOuy27pnQLkXHW3TF9/SGcZK574iCHtyPksFYOaNrr/g7C9u+NIVQIOe6
         N4fGrZ2jRl/6vob1NhJtlrOExBIWJB65Q0WRWXU/pRbirEXawY0jbAIqvDgDPc6g/k4H
         U00W0ytoNNEcVxyr/uMXGEFKF2TOy1yOfqWIAsAnM3p6oxvF49M26HODzv8SvnyT9xnk
         DQlpvsoPLGKx0LSQGGDzHjsnjx/0y12rarTkvhvqSeBo+/xLSApl97ytXMmfQ3LA821+
         WZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745832317; x=1746437117;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gFI99GJWmH0cbbi9Njs3HBM/64dmBHDVx+/nMGtAD8Q=;
        b=G5edYhB6pzmtcc3lrvGc1LURrooP7ynvIkAwWmG7a04UPVyt/NRYHFJrhGoh9m3N3Q
         bgsGEjR4FToRKRbMLzAgcWRRjxTNqBJBEDSO1BmpXZnw02fdMizwmMVwEFsXtNR1vSk3
         7MC/37wBBZRWk73JvUOwrC/cBGbXjOzB5zuCLpwy0xZStkppJozp7xV/EijxK5Bwmd43
         P8ZFi7/tdAmAE9kuq62Q6bSbCIEh9DKB2X83mO4Q75V4INmbGtYjRl8lz6veur9MBm6O
         i0Z5tc/OpR9fevsBtHHjKccE/p1CedDX8OTXXCuiQY4XPnOtjF4DFQ0Hz/y6dow+hazE
         8IqA==
X-Gm-Message-State: AOJu0Yx4lZB8bkP9PbV0+bX2Z1GJliVezHoCINdJJaVu7o9HPOjrhsfm
	iER0+uhwTxQNXpEzgu4Gx7yJdscmsxcXM3AxqEdA9mmEtixDuJeJm5JBaA==
X-Gm-Gg: ASbGncuIA7Y6MxGJuf+lqJeZGrYtnsfWFTQKQlOdHKAm8AnsA28DU+Rf1TDL4R3OLFb
	fozG1CMDvjyYVs5ADYhDJM5rzpJS3QIwkXWuSewTCH+o32lpCmw3SuzN2lWhlcFwCLfmMH6cleh
	P11v+E0nU7VYYHehOet1z39mrlyqtTWTsnPH4PYJk/j979pw4KYSXcX9k2Avo0tm6G8IVFVfI2i
	c9mZdXwaXdwLmTbMK0JdyyS/dvzzulP+1f/cWcP3q8HwvdEtYOZBgWPynk3Kr73RbphTnRe5Hkc
	Wi/nm+CGFi17mo8qpbbOCON5nyXLptGN35m8ReV7Yo3K8InoAEsXwPxwDvrsIrg=
X-Google-Smtp-Source: AGHT+IGEGEtyGeDLtFpkZPsAaEMvewoYAlROisfkmusNs/cYRzjmsGwRwWgyVxL5jJHuGU1PlO4SxA==
X-Received: by 2002:a05:6512:3e05:b0:549:91c6:96a8 with SMTP id 2adb3069b0e04-54e8ffbfa9emr2276957e87.7.1745832317184;
        Mon, 28 Apr 2025 02:25:17 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e903aa6dcsm938500e87.236.2025.04.28.02.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 02:25:16 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 28 Apr 2025 12:25:06 +0300
Message-Id: <20250428092506.27200-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_022520_460353_0E465719 
X-CRM114-Status: GOOD (  10.99  )
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
Subject: [PATCH] clk: Fix incorrect rate comparison in clk_set_rate()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The original condition in clk_set_rate() compared the current clock rate
against clk_round_rate(clk, rate). However, when the clock driver doesn't
implement .round_rate(), clk_round_rate() falls back to returning the
current clock rate via clk_get_rate(). This created a situation where:
clk_get_rate(clk) == clk_round_rate(clk, rate)
would always evaluate to true when .round_rate() is unimplemented.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/clk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index bd36878280..8ecfe35094 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -169,7 +169,8 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-	if (clk_get_rate(clk) == clk_round_rate(clk, rate))
+	if (clk_get_rate(clk) ==
+	    (clk->ops->round_rate ? clk_round_rate(clk, rate) : rate))
 		return 0;
 
 	if (!clk->ops->set_rate)
-- 
2.39.1



