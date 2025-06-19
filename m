Delivery-date: Thu, 19 Jun 2025 17:50:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSHX8-008zFO-0X
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 17:50:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSHX7-0004f3-Kf
	for lore@pengutronix.de; Thu, 19 Jun 2025 17:50:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bKVnMdXakW0Aba16OsSf2jQAFG3fjEXcwleSyANP50w=; b=aGoKnh9eC7B5zNvNyeILnH+0FE
	hZkSK1urE9PT/iWvtorZ6iZH/gsjxcjZysO0B8c4QH2FLd0uart3pT7pgn8bKPqzn/ZFYsBRwOlzp
	Rg+34lv3brJ38iU2E3FNpSraxAO0WWgQLcdkuPRVdDVkkaD3C0dwsOfWkrBM4RByciB3xEu/RObVr
	ghsgpLBFNlFBcYH5mYcBwBwz5cT1w9nTSDAXJ2oqUp0g/SxwZn135carn1ljxFHM1IjxYg7jaFCoV
	/kn9phwRh5+XeEzl3HGCE/YZKv0Hhq72a80X5OBFlyLHXJzwQTMo636pfMir/aVczriKzNctvlG8y
	lt11qyGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSHWT-0000000DZL2-0aYN;
	Thu, 19 Jun 2025 15:49:53 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSFSZ-0000000DCUH-3vWc
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 13:37:45 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-553cf020383so839274e87.2
        for <barebox@lists.infradead.org>; Thu, 19 Jun 2025 06:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750340262; x=1750945062; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bKVnMdXakW0Aba16OsSf2jQAFG3fjEXcwleSyANP50w=;
        b=HpG5B2gldD7y1+htymZKKt0z4Fu+pmK4Y0PnN3w/Gf/PtkSQTpxa4uFl6ldKhULaJY
         J93O4gR87Qfmhc3nDGPDJqC2Vyy7RgsHsa+dsBsJugDwng/dEYM2gDZvc1TPVhJstYLF
         bHZ8VxkodbCO2hUWjA22f+F+VJ0lS9vq5eG0eVZ5e29zTomcrxL6/BSfDTjV/XWFFvQ1
         g9PkmiVD86d0p7yKpNLU9sKbzLO9KUN9FunL43G5FB/ykZAJ1s6W9v2slzqrfx6jsx34
         2peDKXh6+uG3+BshlSvsj4nLKbVBdBCQwjXMwrJyPGf7Q6qWfnjSRpCgMX9/hY7fts6g
         LiSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750340262; x=1750945062;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bKVnMdXakW0Aba16OsSf2jQAFG3fjEXcwleSyANP50w=;
        b=reKEVmKR/TJtB6n4pm+OBFy5f548PiQ/h7adlftCF7my/oHl0uiOkPmCaVChWKF8hv
         hlCZyygo95dDZkhI+YTw4qjG/+k6O+QswXMHZWVuVBTc+lrT9Vn4LMLzY/p5HRTrDUck
         ML7cRx+Y8WsrkcuiAHN4fdkWMgasMlvyjUOIugL/s8ejDNIAK38nOpKGmChTzdZJ9WP8
         nv1ola2T85sJxAdpkUfKYv9Vtt/lpkbPLiBEqhK4MivRzMaiU0CMLDcNkzbMipS7GoYl
         moKT+XbdHuMPFdNb9eRTJIyuul9XO1bVhptTLVLNkMMCsqUv1MxhTSfgTVRimgv4wbLh
         VM1g==
X-Gm-Message-State: AOJu0YxqgIYuODlyv9zxzRsmlitwt8HDneof956PPk0NTThDHjHVw8Es
	pmH9sInrnr/DLjR+YpWuOdiTxkD3gA7sGVh06pSZkOBCJPkft6eGi9QkfylLvQ==
X-Gm-Gg: ASbGnctQy0b3mzptGWQVlapPqXGWiV19u+XLbzvTQP/gvl/6a2S7zSJhIyeCN0t68jk
	OiMEZDSAXUDVVj2o4Cr52bnU027lmWQ0tjxMZnJZ1cLw5m4lXallkhpM0Tx9uo7jFnvVulUPnNZ
	03BJcCC0oy6J3KUaB/Oe1Jb0mfUxcr01fY08U53ebgHhOyMicrcsktE4LdOmm0FjnzwUQXQC2FA
	YWMJTQx2CvyHQIPtTdwqmuDH+GI916zwTYnK2U6i5zS7p8ZQ/XKBUsiRoU2MUaNlXwXLZuju6Zr
	Baarvfax9VFK+drTmCNiMUq+qLaLfUwYM+i22G0Pd0R3Ap3UO84CmGcJLrequh7X+kPnEf0SliB
	DB3njOyqgbys=
X-Google-Smtp-Source: AGHT+IGEAkFAL6H/J+UIekip2l2lPC1HNB3UsT8shV3DqJDEDPmon/Gd1+iIZkkhRn7RgIOi9ToVRw==
X-Received: by 2002:a05:6512:39cc:b0:553:2868:6357 with SMTP id 2adb3069b0e04-553b6f4307emr6272138e87.50.1750340261314;
        Thu, 19 Jun 2025 06:37:41 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac116509sm2591277e87.4.2025.06.19.06.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 06:37:40 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 19 Jun 2025 16:37:30 +0300
Message-Id: <20250619133730.2980527-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_063743_974547_93D181F6 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: remove AT32AP7000 (AVR32) remnants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox does not support the AVR32-based AT32AP7000 platform,
so lets delete unused cpu_is_at32ap7000() macro and its comment.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/video/atmel_lcdfb_core.c | 3 +--
 include/mach/at91/cpu.h          | 5 -----
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 002ddb8d16..d7f33bdb4f 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -409,8 +409,7 @@ static int lcdfb_pdata_init(struct device *dev,
 				   !cpu_is_at91sam9g45es();
 	sinfo->have_intensity_bit = pdata->have_intensity_bit;
 	sinfo->have_hozval = cpu_is_at91sam9261() ||
-			     cpu_is_at91sam9g10() ||
-			     cpu_is_at32ap7000();
+			     cpu_is_at91sam9g10();
 
 	info = &sinfo->info;
 	info->modes.modes = pdata->mode_list;
diff --git a/include/mach/at91/cpu.h b/include/mach/at91/cpu.h
index ca85e8be6e..cd72e187d5 100644
--- a/include/mach/at91/cpu.h
+++ b/include/mach/at91/cpu.h
@@ -301,11 +301,6 @@ static inline int at91_soc_is_detected(void)
 #define cpu_is_sama5d44()	(0)
 #endif
 
-/*
- * Since this is ARM, we will never run on any AVR32 CPU. But these
- * definitions may reduce clutter in common drivers.
- */
-#define cpu_is_at32ap7000()	(0)
 #endif /* __ASSEMBLY__ */
 
 #endif /* __MACH_CPU_H__ */
-- 
2.38.2



