Delivery-date: Fri, 07 May 2021 00:10:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCT-00034W-2D
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCS-000526-3i
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MKWnKfwAqPJ5Bagp14lTggVF2Z4yXEZF60rguaI6bP4=; b=T185dIaHpUa0rQN7Kg4SMkMtb
	GgcvS0CyAZjyxzG52JoNj70p4EpbKV9/ua6bWBcNkLdnuQ/lXsiPEjnJ2ZTmGuLBvVyt+7hOxrmyq
	uE8bmu5hqAFXvpNOIMbCYz4Av3M1BOG9u2d4vy4Lxm2E2XMJtzcTUMUFlco9OM/xTOU/FPQjBFkJM
	i9S7B7PoOyuQ5PQdqe+JQIsQEZgMPerHKUEVCBA4OFD8y9F5rvlgRcgbaBGgZZUFAmZ6j2orvn4Qv
	h8neGhaG9aUmQ1fUmgHCzbcFq/l8y7v3yXKvJJMeIfBlWnSmjbBRICT7GCZMYq/kZvYlKa+kqP2Cc
	9D1sR0LYQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemBH-005RPr-29; Thu, 06 May 2021 22:09:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB3-005ROQ-PL
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=8b7kZDN0ANAg4DyKeV2VXzvsMGrcnnb4KrzPVpnbgoc=; b=hjlDpC/TGnt6aZpHMz7fPmY9bo
 WTo/TBKErwqtbMoHqqOsnyyy0uZAVeGHJ4uuoV2J3Hb38MC8DEGDHow9TzxroGpWNVFlTd6ENlTBh
 PdDw/ikF5pVIRg3Ft5EbWvJaXUoWomYx00L0HbvME/NCgf5kIJoShPxJNAR1rzE2Z5/2Vkhk9MSFs
 Smhky/GoJMPW5a+QrlR4F72jtkwiyXcepudtQuurwXKiEgJHd5I9rdqMbyOZNLrBOHGAwsODkF3Ks
 Uqq5kTAXVUI3si33kG6dwg0dXehoCHAqqzKL0nZpuVqqDR0+eLvZqJMm+lL6Rh3d0a/5qCovvGT+N
 2Rs6noUQ==;
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB1-006QOB-87
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:00 +0000
Received: by mail-lj1-x230.google.com with SMTP id y9so9041224ljn.6
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8b7kZDN0ANAg4DyKeV2VXzvsMGrcnnb4KrzPVpnbgoc=;
 b=ULjQAOPbVSkzfSzDfRJ4IDyUSt+A33HnoPS93S0RdKJh5wOXbHWUMrR2n8T0qAFE0S
 rRXKc84JAI/cLOcL2HhrzgQIli9mKKNm5M2yIeRNd3PXhpXus96vXcUZ44KUIYqvLlu0
 D+pM0oCvXaskBceQ6bx2XIumkXBquewE6A5aBCXXZa0BfbpjVSBEF5Shs6TtDlp5IZEP
 J3+wE+/r0Acx4ER1GaoyOMOoy0xVp2TV1/4iTfzymvLGb6iXYtsfmuxxVjKIYcgGn1sM
 p0eyU5pWlR1PY2uKp7LpKKYfW8xJfMZAweX+HHKOgaMTREeNqDMIDNhdHdHGNYdJ7c1u
 OS4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8b7kZDN0ANAg4DyKeV2VXzvsMGrcnnb4KrzPVpnbgoc=;
 b=pUtUF0bSVoNk+KUbK5EyYFmqqkhNQ3MBtJ1HuwWsjjwJ87zarbVdHckvojgD+xiSPF
 v8dSMyunTVG5+qY/1lfgfOM77YN7FG0eaIAKeopRKFDChw8pS8MQKMln6GEK7HlM8pXR
 ej4ROZyHeF68P2/dAYBqNSKAm3+TM5m18N94lzq+dzqEuFK+/bp5voSSQSIT4RhRXJYD
 0b/FDnCr7PlRt20SuBdRLN2/WVmpuVGEJe8Ht81iMKdJWXPxBdmJ8mpjGQcpP+MwoQXO
 IuEWgdhVCI9xdVbkhpMK+xEJY5xxLYwCwRbepV+th7EIE4QcZzgmpbHhxLf6O6OdiuYL
 grHg==
X-Gm-Message-State: AOAM5316BZXdNQA0MqtLJLr3OXPw+j+q02nMc1uyRSqPE0BIGVBPcDPe
 aiKyvBpPJ3hCHlC5stVpVy9BycyqLxMYRw==
X-Google-Smtp-Source: ABdhPJwN8LxnAloImlcK/XOxfgIre3Dv/YomKwvIWLMIKzfy0chAla3AY8OdgioxoHXFwI38MaSzOA==
X-Received: by 2002:a2e:9b97:: with SMTP id z23mr5123875lji.359.1620338934697; 
 Thu, 06 May 2021 15:08:54 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.08.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:08:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:25 +0300
Message-Id: <20210506220834.223350-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150859_308759_FBA93954 
X-CRM114-Status: GOOD (  12.59  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/11] RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly
 mutually exclusive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                         | 22 ++++++++++++----------
 arch/riscv/Kconfig.socs                    |  4 +++-
 arch/riscv/configs/erizo_generic_defconfig |  1 +
 3 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a4aa799acf..dcff00d63f 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -38,6 +38,18 @@ config ARCH_RV64I
 
 endchoice
 
+choice
+	prompt "Privilege level"
+	default RISCV_SBI
+
+config RISCV_SBI
+	bool "S-mode (supervisor mode), use SBI calls"
+
+config RISCV_M_MODE
+	bool "M-mode (machine mode)"
+
+endchoice
+
 source "arch/riscv/Kconfig.socs"
 
 config CPU_SUPPORTS_32BIT_KERNEL
@@ -97,14 +109,4 @@ config NMON_HELP
 	  Say yes here to get the nmon commands message on
 	  every nmon start.
 
-# set if we run in machine mode, cleared if we run in supervisor mode
-config RISCV_M_MODE
-	bool
-
-# set if we are running in S-mode and can use SBI calls
-config RISCV_SBI
-	bool
-	depends on !RISCV_M_MODE
-	default y
-
 endmenu
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index c6875738d0..f767942f34 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -3,10 +3,10 @@ menu "SoC selection"
 config SOC_ERIZO
 	bool "Erizo SoC"
 	depends on ARCH_RV32I
+	depends on RISCV_M_MODE
 	select HAS_ASM_DEBUG_LL
 	select HAS_NMON
 	select USE_COMPRESSED_DTB
-	select RISCV_M_MODE
 	select RISCV_TIMER
 
 config BOARD_ERIZO_GENERIC
@@ -15,6 +15,7 @@ config BOARD_ERIZO_GENERIC
 
 config SOC_VIRT
 	bool "QEMU Virt Machine"
+	depends on RISCV_SBI
 	select BOARD_RISCV_GENERIC_DT
 	select CLINT_TIMER
 	help
@@ -23,6 +24,7 @@ config SOC_VIRT
 
 config SOC_SIFIVE
 	bool "SiFive SoCs"
+	depends on RISCV_SBI
 	select CLK_SIFIVE
 	select CLK_SIFIVE_PRCI
 	select RISCV_TIMER
diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/configs/erizo_generic_defconfig
index 247a179130..16168eef66 100644
--- a/arch/riscv/configs/erizo_generic_defconfig
+++ b/arch/riscv/configs/erizo_generic_defconfig
@@ -1,3 +1,4 @@
+CONFIG_RISCV_M_MODE=y
 CONFIG_SOC_ERIZO=y
 # CONFIG_GLOBALVAR is not set
 CONFIG_STACK_SIZE=0x20000
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

