Delivery-date: Wed, 02 Apr 2025 07:58:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzr7e-007Hm4-2p
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 07:58:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzr7e-0000VI-Bd
	for lore@pengutronix.de; Wed, 02 Apr 2025 07:58:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8pr6r5cx7rtnLIAaIo7/2AS3iL96JHlxLksyLgYC868=; b=dGdatRhpzCNJHWHRUGClqmt6Tg
	hH5tKKv8CqKLdL/HbezycRIUuazqMiWocvzYk5vytlCHRX5ZO/h3KhwUK/flzuMlhyAL4+WQAD9RO
	Dr2sdGZwPfyjLtIiVCFpP8XkfUZ1Zs6akC/lDrZgtS5va2gvGe8JWyUpvJ7c3clPLx5SSLy7JdHJE
	xP1ltyI868BnSgTjzvMLyhPEEmlUA4xobzgJ7mF8VNMFB7EA59AbXC6fmTkpQeYsyadjgt8EASTx6
	qSGUKSSHPRya0eb+UmJxdqu09gRZqUfM13+a322AmXUHl8pXRqwL838R4DZmGlnyPa2X4R/NG4ENO
	3oB56lhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzr78-00000005CgU-0BC8;
	Wed, 02 Apr 2025 05:58:14 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzr75-00000005Cg5-0x1D
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 05:58:12 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5497590ffbbso7562247e87.1
        for <barebox@lists.infradead.org>; Tue, 01 Apr 2025 22:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743573489; x=1744178289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8pr6r5cx7rtnLIAaIo7/2AS3iL96JHlxLksyLgYC868=;
        b=CwBGAX2GbU1Z7SqibhYR8sKZXJ8lzb8LtNhiHEnawOjUh86PuTLt48aJVbqTWJsPbb
         CXrBjy/kdrp8gP6QpgDWuei4D/VJZQZST9O2Fov8RSgoWvIIXFwYtgfRXtZhRS0WesD3
         bi4nOZ35kcFO7QeWUTHKrtBlv7in2VDFnZclr7gZhQO9UvyPPDG5htPF3Bjl4THuY7Zk
         JQcjfnTjm/GO4VhAv442YQ/DOMJKyllM38xOnsE5K9SGHxTCYDn9Fz0oUHb7d0X7Fa3F
         OOiPOMLg93DUtc9zzsq4KnmPfNYG96Dl5GJilocw+2Ix+RgTM+RkDAb9TBuQkLAGF54t
         dTLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743573489; x=1744178289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8pr6r5cx7rtnLIAaIo7/2AS3iL96JHlxLksyLgYC868=;
        b=AlVExaa8jYYIHQN9iX5WPSVgcfX9T1lIx2t/n5+QakV4Zwja9U2LSQhPA7CjV+qkVO
         h8Xyy2ZnA3RKLhLBPykTmp04qcvEcQ2GRfG9x0yCHKoRRv7eBp0xjV5GvWqjhlBtBHZa
         xSSnRsml+xoFsjrplkrXLdLrjic4Y+aLGZQ+o5SlfuktRgsdEQTnBUNBRSL+z1yD1p+n
         rQ7HDERFxpJsCrD3OkaKTZEPH3wb3pc+5lccQDALUSsd/eV75mCPx6RcZrZH2CqQ0i8E
         6ewoeUI4W1C/u+/ShtKePUm71jro7gxYRlUHSt/cF4juNNjGCtic/mKcDxoE2vHG60+v
         34qA==
X-Gm-Message-State: AOJu0YyXY6gysEzfKcZSng0ygkKxDCAIjU691a+c2kg290OYVP8AxNnl
	nvN6/9CBYo66wGNWaE45zfugT+YwJV1b94Vg/c80RDydYFyXYlEnwdZdlKGu
X-Gm-Gg: ASbGncuusGalDAyE9yGTVRpJEklLSu9C312BTZg4Ys/9wZxIygewITkCoAxW5ubnmpt
	yj9mz3beAr6edX6XHELp9y74Qy/a8h7iti0Q9yJE6UHdZrpcfx5RnkRhOyEVj1zYb+lOXc9ttYo
	QChxXDg+Umip0NsyXnAdQs6tui/SOdLFc4FWGi9vc3BDWytbGg4LodYITyv4QrvZkUy0KEG7xBL
	BrpiWoqHd1/2uJAFl4Lmf7a3h77HUZxUYn2ii8OwREbUeUmRcwkA7OE44ZYe5m/e0HZegvN0kNI
	PCwmYBTNOR+Ofm0wYC+ShJg3CjtU1hO/h2+waNvAJgzvpoM28nlzGN4G7twthCaQ+dQ=
X-Google-Smtp-Source: AGHT+IHsbIyumTEq55GzLPsiG00foM+ff8IpNxCbSAVBmpvrs2Qn4PKTMSdU7uz8eDNMoT6pOGATUQ==
X-Received: by 2002:a05:6512:696:b0:545:1082:91a1 with SMTP id 2adb3069b0e04-54b10db968fmr5048328e87.7.1743573488677;
        Tue, 01 Apr 2025 22:58:08 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb1cfsm1543232e87.23.2025.04.01.22.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 22:58:06 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  2 Apr 2025 08:57:52 +0300
Message-Id: <20250402055753.26640-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_225811_264533_948BE889 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH 1/2] ARM: at91: Remove at91sama5d3_get_ddram_size() call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since all barebox sama5d3 boards now support devicetree,
we can remove the separate at91sama5d3_get_ddram_size() call.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/ddramc.c      | 2 +-
 include/mach/at91/at91_ddrsdrc.h | 5 -----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 494a045249..313d0c3325 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -31,7 +31,7 @@ void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata)
 {
 	__sama5d3_stashed_bootrom_r4 = r4;
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(),
+	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(IOMEM(SAMA5D3_BASE_MPDDRC)),
 			  boarddata);
 }
 
diff --git a/include/mach/at91/at91_ddrsdrc.h b/include/mach/at91/at91_ddrsdrc.h
index b9b0eb20b3..b344be4d1f 100644
--- a/include/mach/at91/at91_ddrsdrc.h
+++ b/include/mach/at91/at91_ddrsdrc.h
@@ -357,11 +357,6 @@ static inline u32 at91sam9n12_get_ddram_size(void)
 	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
 }
 
-static inline u32 at91sama5d3_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC), true);
-}
-
 static inline u32 at91sama5d4_get_ddram_size(void)
 {
 	return at91_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC), true);
-- 
2.39.1



