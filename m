Delivery-date: Wed, 02 Apr 2025 07:58:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzr7e-007Hlp-1y
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 07:58:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzr7e-0000V8-3A
	for lore@pengutronix.de; Wed, 02 Apr 2025 07:58:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HF8LIlELgWgUf02cL1m0V6kjwjhDuvgjXPWjbJ/BHdg=; b=37KszCHdIYRwgujh/SCFdJxnHz
	0x6N9sIEMDJuvKB7yBvBKMhZubxxaCq2yAG83QIfEs+0f3HNBqITfJu50HbvwhZM5DiIKQklQfpn6
	vDWpsaFaPTB0qlEM7tH3cewJSCRXWNsJZOnGkyLHlvC25U5cv/E8xXEb/G0OH3NTEv1SNSKbC+Q2N
	VpYUksI8hn0c7s2pDTZKh5OsJyfbXF4zD6CcSnjZstC+lCcNFoHBjP/X1ttlsN2FQ4SPm/e8botWM
	wMAe6PLG0pC1QkFiFCk1YkxqX6x0lPEdGgFgLy1uyQHKS/6Rz+E4SneC6uIh+AoQ8tCS2WXxmb3Ll
	fsjHSPzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzr7C-00000005Ci1-0NlW;
	Wed, 02 Apr 2025 05:58:18 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzr79-00000005Cga-1lpm
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 05:58:16 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5499d2134e8so7122791e87.0
        for <barebox@lists.infradead.org>; Tue, 01 Apr 2025 22:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743573493; x=1744178293; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HF8LIlELgWgUf02cL1m0V6kjwjhDuvgjXPWjbJ/BHdg=;
        b=jZ81N1fYKH/V+nU/a/wdodlO1FdvgfWjmhgwM3uaXhZdDdyg6MSwrmdCibJ/WOYJ9E
         s0ae1Qw2a7De/4Y1qslnTdPu/0C+tAaY2i1wnUYlxNDE01m8dy7EekJALHj8JEnCnjsq
         aKoULbAun0aIFsb5EIJWNJ1a3hSuQOiVAbODtBt68ji3nGLKBFnQNSksdypr0qZ3lPck
         o8fY8TG+ICLKeDpWIAhJNTRJs6P4antfIFkcPkQTq4cZq4AJ+J2DYgbVlRmPLph8zmAI
         Qm4i2nN5ChFboar/hCb2stZMmNxsXLajh1HFq7BCV1mNpLaEXKTMvsbWw5KlLWjBxMlp
         GdYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743573493; x=1744178293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HF8LIlELgWgUf02cL1m0V6kjwjhDuvgjXPWjbJ/BHdg=;
        b=r7aUIR9u97eNzKCRMoCuIhakjEBBgPVgx+VgHpTkGpr7/CtTtPDY9X9q70dbMQ8GZs
         WVjtVZldBu9JPG3pOJzX/y8TlGHnpe+KiyGbwyoZ0XBLyYFB4DTqZkpq5b1ltV9dDp94
         ADGL0/gSgVBtDdryITZCjoQ4cfvVr1cOzbqr54Wiv2VD7SMh2O4EljIjmit28cgfYN2x
         2m1H2Bls+gfTAyP9kdFufxE1MJTiihLGFWGXsk5zfaE82QtSYZAJxlcz80xXPBmbVIar
         nuhvcw+wvl8htoS4fDLTTRI2DTJ0MGPM6rAJW0BK3fTWcFEM5WqgNvB8uOGXyes07oyF
         g3qw==
X-Gm-Message-State: AOJu0YyrR0bfLHL2YpK24wbbRrlgvPuM9utBQOTj72YWP+H7ZnxkgNpn
	ujh7Ws4UuVtQoKgWpcjR+/zN8RnYEv9s2LgDVhSGcrA26+fxHQP3fG+SeXaQ
X-Gm-Gg: ASbGncs6XgNCER0yJ6kZwFcdEtqKuJ45WHGMRR6/uiGwuFCNiqY/Cm+snIOTjfiIXFZ
	QkVRsutWkn70KTDGYHL/mA7GvmpZ+UPLEx3s/feWHWpzkzyNWRWbG/Hkgd5TCi3EZ/irY0vcUnD
	we3zLwj92KLMhZflNzEYF8vtoSgYBoRtgR4xULWfH+g2t6/s6i1ggRSBSyzzu55q64y2+5Eky6u
	G3bdwZbUshnv5UW/u4GYQWPLkh1N5Dy6h2tpq0R08rFjQq6GFThdnWn5GjTg4HGf9yxeivwAvo+
	9kBZVsiv7v1/6+E+67mCNR/rHZPJQnXZVoAE9LZssKorW/9a8Pgx0mdLvEZpfnS++dI=
X-Google-Smtp-Source: AGHT+IG3vjRTlswDsomEojxpNTklFjNzBs1lZbYl4bDgygeCy85XmwXo8VGr7KG9QpRmQFdIpyLOeg==
X-Received: by 2002:a05:6512:31c5:b0:545:aaf:13fd with SMTP id 2adb3069b0e04-54c19c9a0a2mr362539e87.51.1743573492961;
        Tue, 01 Apr 2025 22:58:12 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb1cfsm1543232e87.23.2025.04.01.22.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 22:58:11 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  2 Apr 2025 08:57:53 +0300
Message-Id: <20250402055753.26640-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250402055753.26640-1-eagle.alexander923@gmail.com>
References: <20250402055753.26640-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_225815_460815_3CDC44F4 
X-CRM114-Status: GOOD (  11.26  )
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
Subject: [PATCH 2/2] ARM: at91: sama5d3_xplained: Fix lowlevel barebox_entry() call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let's use the sama5d3_barebox_entry() call for the sama5d3_xplained
board to properly save bootstrap R4 register.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/sama5d3_xplained/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index d66b10fa8f..2a0fed1141 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -59,5 +59,5 @@ SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained, r4)
 
 	fdt = __dtb_z_at91_sama5d3_xplained_start + get_runtime_offset();
 
-	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
+	sama5d3_barebox_entry(r4, fdt);
 }
-- 
2.39.1



