Delivery-date: Wed, 18 Jun 2025 08:38:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRI-008WfX-0q
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 08:38:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRH-00038L-Iy
	for lore@pengutronix.de; Wed, 18 Jun 2025 08:38:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lcH3FSTokhzW/wBJ//DYBhH7GVkJknUqaHZNcDUBXx8=; b=USlQIcvoNGVPNxGMzHdMT1SoI2
	V4vKkOYL98FtB6OZBzAsf8pvniCg5owfuL41vVE/8rdrHUsoEiDmNeKycB/oYzhWXD5ANjNDeLxEi
	jQrCTs94X4qinq1AjFHjpMKnQv7Dsn6o8NeszVnSctC1fSeR6apiubKs+fe85OYQs4UFa2VvhRQZp
	6C7E7sklRsVbkZFm87ogqSZlENYoY/bUNzzVilogy2Xbp4OX9c4ioxmxTEcSwtbvjTg0iQRA+4qFp
	rVUJOoFXAhYHN+AL+YvskK5wn9ojW58kV5K6k+x8Plb6uiPPT+S5vnyJ9pvkuvupHynQqllmCV4bA
	gWwAPJug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmQj-00000009Buh-27Zc;
	Wed, 18 Jun 2025 06:37:53 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmP7-00000009Bim-3dlM
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 06:36:14 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-32b8134ef6aso654721fa.0
        for <barebox@lists.infradead.org>; Tue, 17 Jun 2025 23:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750228572; x=1750833372; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lcH3FSTokhzW/wBJ//DYBhH7GVkJknUqaHZNcDUBXx8=;
        b=MQnYSFzlTJnqOvsRMzlhWW0TVb0ioFBzknbwMlXJGjdk/34FzCa5aN5rrMwL1q7joY
         A2kKce3vPBEvSbzyFkiirAUnnX9g/cl+48bn7kSiwN/hXP1Q99rF8m+imyB59ptTrSuv
         +Iss9aYciXxuWiRuWKI2I6C7x3KtwqgPAmrd3IxoqtZ3rRNq/FO3YFX5GR1x2OFarlZg
         wSUGCQZt2/HVWQ/K17ws5/JA15b/0GKeeAi3RIbqviMpRUwFfPK0pEh6PKsJdWa6aXLY
         7QPF9L7uZSItd9+JUVwJshE3QtWfJr2DK2M1dSmfuVYXMODwLbJz22fNZTUL5UmlJK8B
         bPxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750228572; x=1750833372;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lcH3FSTokhzW/wBJ//DYBhH7GVkJknUqaHZNcDUBXx8=;
        b=ODi0KTIOl0WmThquZAZQeov6pJqsqo2zaXmeDQ1QXoHInyiGntphLTlTahwYHDRC5T
         bEAuak/VJK9iKNksASqiK41qfg3ThCJt8fKJMcu6qHjorZzEZU7l0ftbMleboS3EYKnk
         vtmlW+PUkELfzbwRDiajOUclUpkPzTQaqCeTllwbMW02bRORY+Mq1oS4koHnQlzXFeav
         UwefPdeYCtc7FSV1+gGT1xYllTAa2j/QTp9qQ7f7cyFCW/ffTq9svUzUrHxFxjBv24v0
         p0+gfp0txtyukwQnnFwM1SR6yEK4fgxKdk+Xv8zrOlfMVtOmSPTlWa9zp0zZmIjm/t5U
         hPiA==
X-Gm-Message-State: AOJu0YzFvT2SDyJ4vwIHyubTMJmB72XsKoQnSPg5AXo8WHFz4R0MpuCq
	VHHielRTI53rGxAJANwrVayW4vK5YqHz7CbN3gCl6RB64J8CV3JEunlnHp3K1A==
X-Gm-Gg: ASbGncuSIa/bA4UYDS7DUiL4HExFwzO3LFe1OK6oQy4dYVUPyFCkTiXRu5tjO7aslPO
	Zf//kpKQlIX7Nx9J27fX2fL6IZwhOzoI2xSqXe+iVcqrmIUA6zrdSUnAk0T4LgFAliiOSUxZunx
	bHuFqT8I22TujTmq4iR38OuQsq+L9qGgvPyljJ4U2GKlUg1szEF9zfQ83SW56tdvr/vFAxyPYl8
	TsYK9avEGc//pyrGbdLJx68uQLUyKjNxXYwMHmSz5qroye7/6rBpfmBe17TEFQ33rl/cl0e5yGP
	/lZ+2hURy0cxjhL4yMFlV6DrPTut2fVCd9v+7vI0LcXa65KxzCg9X27GpEZVMIzWPhxZkSPUTZX
	MzCcDL0un/g==
X-Google-Smtp-Source: AGHT+IHHxSj9MaCangHk7Sm0J9kcDC+FMh2mfvl89GkurW9d/Ol5+RgRwYIusH03lqhYaIwA2dcAQg==
X-Received: by 2002:a05:651c:1505:b0:32b:4fd4:f1b5 with SMTP id 38308e7fff4ca-32b4fd4f515mr37591371fa.27.1750228571350;
        Tue, 17 Jun 2025 23:36:11 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b3c7decb8sm19038121fa.49.2025.06.17.23.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 23:36:10 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 18 Jun 2025 09:35:49 +0300
Message-Id: <20250618063552.23777-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250618063552.23777-1-eagle.alexander923@gmail.com>
References: <20250618063552.23777-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_233613_903464_0D582150 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: sam9x5ek: enable missing DT and clock options for devicetree boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AT91SAM9X5EK board uses devicetree but was missing critical Kconfig
options required for proper DT-based operation. This patch adds OFDEVICE
and COMMON_CLK_OF_PROVIDER Kconfig options for this board.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index bb04c1267e..db79ad2d26 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -581,6 +581,8 @@ config MACH_AT91SAM9263EK
 config MACH_AT91SAM9X5EK
 	bool "Atmel AT91SAM9x5 Series Evaluation Kit"
 	select SOC_AT91SAM9X5
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
 	help
 	  Select this if you re using Atmel's AT91SAM9x5-EK Evaluation Kit.
 	  Supported chips are sam9g15, sam9g25, sam9x25, sam9g35 and sam9x35.
-- 
2.39.1



