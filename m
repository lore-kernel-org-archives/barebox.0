Delivery-date: Fri, 20 Jun 2025 09:43:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSWP0-009DAZ-0o
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 09:43:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSWOz-0002di-NW
	for lore@pengutronix.de; Fri, 20 Jun 2025 09:43:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qkm4MUPYtNagP4VCZuvOU+kNcLYK1X/FqwBIVVY2sx4=; b=Sjrqv/26Ki7JodVySRv6cwsfQy
	K7NZhilVvaA7P9VYZUKBaWFQBQmrTZ+gCRRRE1nUwj5dn90dmdSd2OywTK//hEyDkOx0bRbTJmCV2
	FYAvzuxMeY/xRAi6oAxVC5YPXKU9z/4Y7mzg23l5YfQ2mrH+5iQbDjkynp1Ujwt50O/dbDmMgZq8G
	W3+yk/ahZxtRoWJ273dwj9PKKvOv5lGFNsop6kQXC5fuXQ/enhFbPbQOkSrkvAr8EvTzdSo0vJsQJ
	X5lb7T18CIuKJLbKPSsBYlYJir7GNtDkzxiB7f0UW/jBOlRNu4fbKjjtkfXbMJ9A23yUss+u/Xkfx
	m5WPok/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSWOR-0000000ExrJ-3iLo;
	Fri, 20 Jun 2025 07:42:35 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSWO2-0000000Expt-2Vgl
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 07:42:11 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-32ac52f78c1so14330841fa.3
        for <barebox@lists.infradead.org>; Fri, 20 Jun 2025 00:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750405328; x=1751010128; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qkm4MUPYtNagP4VCZuvOU+kNcLYK1X/FqwBIVVY2sx4=;
        b=la/yzsOHMgNA7/K6oInROShzxZfN8M53sw2lBRaGiEyxdhuJH7Pnkl9cpNZiqe66EZ
         LFXTB7t6qGk6KIIO16QncwaRw/fn1+rwrioYAYSruSrqAe6n9zxrn//FlJ8L+LFjzb7X
         hMFATv+QQ8JtULK8YWSDXmbrJsz3eCj1FZ6WZdtSEJ6a9DcaO4LSiOtretn7L8HcnEzS
         RFnqtBOzFmqK7rgsBQceNFiAN/jBMyT0sffowTJINbFdcIhhTYjmWVM91nlt7kJ23Q36
         R5uO8y90muvQqrZ6vi31G4j4pWBGA9SF8/e6b5r9g3ECObBwyfmHXdY+Z74wNNK+1PdE
         gSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750405328; x=1751010128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qkm4MUPYtNagP4VCZuvOU+kNcLYK1X/FqwBIVVY2sx4=;
        b=C06HAlllRCH2Eyjsem7HR86gG4DEiz69o5/cYsfm8ayKtmtak4z9o8wqmRBr3GXijd
         ub3RBlmo4cUpdRbFV+9uneaaFpPfi2qGzr+/eIiNEW517+rvOahaxH1hOknaRaFBDdfs
         Y7FGxWre/2ezNxr+lVNqOEYX1YrC4mKZwdSwGpcFM68jny7yya3mpAMuWuUPSv+cE+Eb
         JQbzAbF0fgrkOLKmKvT6BOmt8wKeFh0ed31X3aRdnNFDLP5jCVJ4o56dM+kMcTJaM4tS
         h95V83zbCB/fBDae1jbkoNAQAza8yvzYSrGYXTpRlVAmEzt/40AcM7SzX37vqQYsoMrz
         LnHQ==
X-Gm-Message-State: AOJu0YzUqy82PcBzWjPhYE8AyIWy/oKkSE/hL6Xg70H0D5VnsLORXoIf
	jtJrhlDfTyVXDlGXDtW76+F4rCeK5rCBdfXNiY2D2QErdTcf8rTanp4qag4oMQ==
X-Gm-Gg: ASbGncu0sOcRhpVkk7ZtKvFE9g36tNhdX0+fb7GYVrBovWQaInl3eVpup+ujvuu/s8L
	5yTOAvGeRv/ls1Levd07YTysLyEzhDHXmzdxfw+mdtqmZvqAMprA7sgr0sXGkXxISoS4lSBCSai
	xRytRANcFJrFjtBpsWn1BSmAsGMF7uiGzCCAY2MEnqBuhb+sm2CTvIRgd8ff43ikZd6Ti2B0Thp
	6jojQWgoCjeYh4XtHsFE8tkV3+ldGiOrHIwpRf692Rh3nYyNIGmYEef+D1piBF67pQWpcnm94Y/
	PlQbVeaCWyf3FhhwIvABdsT2PW9O19vmMLX27ExmcWl1RU/zxowks+UDoZHQKVLtkasyugNSOwQ
	KFlTP5nNV
X-Google-Smtp-Source: AGHT+IHsdie0iKl1YYll+0+SYsstIdT+A8/06WtsbzW0TBXt56fp0bDaJHmPe6tGWe/zET1e30pVzQ==
X-Received: by 2002:a05:651c:4201:b0:32a:826a:c9d9 with SMTP id 38308e7fff4ca-32b9918e7d6mr3393561fa.5.1750405328175;
        Fri, 20 Jun 2025 00:42:08 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b97fa69c4sm1955391fa.41.2025.06.20.00.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 00:42:07 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 20 Jun 2025 10:41:57 +0300
Message-Id: <20250620074157.19047-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_004210_638137_883F89EA 
X-CRM114-Status: UNSURE (   8.65  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: boards: sama5d4 xplained: Use proper header for image start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch to using the SAMA5D4-specific entry function and barebox header
instead of the generic ARM entry points. This aligns the board with
standard AT91 bootstrap practices.
The board is already marked BROKEN, so this refactoring won't cause
regressions but improves code consistency with other AT91 boards.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/sama5d4_xplained/lowlevel.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 183bd9c5a9..38dc07a973 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -4,20 +4,12 @@
  * Under GPLv2
  */
 
-#include <common.h>
-#include <init.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/ddramc.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-#include <mach/at91/at91_ddrsdrc.h>
-#include <mach/at91/hardware.h>
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+SAMA5D4_ENTRY_FUNCTION(start_sama5d4_xplained, r4)
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE);
-
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
+	sama5d4_barebox_entry(r4, NULL);
 }
-- 
2.39.1



