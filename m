Delivery-date: Tue, 19 Apr 2022 09:38:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiRu-007ans-6c
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 09:38:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiRp-0006ix-Qp
	for lore@pengutronix.de; Tue, 19 Apr 2022 09:38:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mS/to+BE61Ix8GJFk6GywPV1A/tkhTJsxELi+VuS1Y=; b=3xkkqt7YhL4Oe7
	eFIL4bVTChJW6l6VfncyIHd9GjR6bfxhzm08qL4DWbVEHt/rk7gjAGe58trzbUvCruRV0U4dWl3jc
	jwZhZ/5TAxBFOZB8Q1ZKtu9wJYk6iNYdlOruR17jBgskFQkzcjydjnE0tnTFiAR+O5qEZaQ7RzrCr
	VUMU7PIuDmIHiVJh35duCrjKUBr/jezJjyFJWAeedWRaDHzBhn3+4wESxB/RgDLLl504l6wHyHDno
	Ve7EmHpYX7E4f424kdHD1PLYD/qaP0xJ+THOSr6B2hydQZ5wQw/1SD0Yzg323iUEHLnubSzdMpb7j
	aXu2I3/TXx2ay4bAMw1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngiQC-0023Fs-7P; Tue, 19 Apr 2022 07:37:12 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngiB3-001wY4-AK
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 07:21:35 +0000
Received: by mail-lf1-x12c.google.com with SMTP id o2so27757978lfu.13
 for <barebox@lists.infradead.org>; Tue, 19 Apr 2022 00:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VTtpK2kcjlS/n7ke9zWFdt1Uff7ZGqULhC5BDgefobw=;
 b=U4q1v45Wt5yecuEyYQU/BRqGHRuOVgXEvzRMNz57FulZyGijpJSXpXN9arK8o7DTyC
 ibDF7zopxwuq/WqkU9P97CdIpoO98yayPZ0+1wMSgXZyhRW9wGtq4ALRFH/l48TV5IP/
 iKfJWY3jQi4+aeG/Sg50NHWRKhPL+riLxIyjjOjflBzBCg2QzVj14nMtLOCcRCLqWyrl
 njR27+2LN8XuK5fpGC3+3Hvv2c9SfxR6Zj7pmtbDAcN2DEq7mS+3shfs+bzmR18fWDAA
 J4z58R177ESIEaA7hlCumoI13353qaCY8HFv0Sk4MHOW3zaDxNjjzcS+31rFDXPMNtGy
 PTsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VTtpK2kcjlS/n7ke9zWFdt1Uff7ZGqULhC5BDgefobw=;
 b=tRwE2d5F9n+yrQ8kkhGE5qgLoxOAS2JleHpmqllmMhxvRw2mzCUXBm2WlV82Qgd4O0
 FpZ6LJjgiiMmWt5P0xxqNzY4Q6BfBOpJxB0Yvq3RMsLluEIzRsSXBNXzDgm0wl5pRVoj
 fQXzdgnB/NPawVtFWIQUbU7oUxoMLGZQx7+WKK5mwOt6d8kXbG4cuWfgsu2Or/u1BP7h
 tz3Kt4gvYiV6/ClUG8yZmRm83AYpEE4JpsfQ7m60YYYuK594TILeT5vbAXijANWRnuYb
 uH/rk8JdmgJyoEMZ72D1DChCp6tL5JfHcikRvehK/NJSZOKdLSxWv1LNO7eu3UV6E+VQ
 rDyA==
X-Gm-Message-State: AOAM532QIaUqD8Y/uIkx+9FCY3Y0hrfYedFVWCHiRxhgJGiBDconjqN7
 UHMf6QrjvDSZ8qdHBXmLL3OaswuxXU45ug==
X-Google-Smtp-Source: ABdhPJwB43YSG5TV23c5Og1lxml0hoXUp34m+ICHKitwN4XYogxVz7zSjzjNBflHSHnyb8rJpWTTfA==
X-Received: by 2002:a05:6512:2209:b0:470:2a60:ef04 with SMTP id
 h9-20020a056512220900b004702a60ef04mr10462061lfu.632.1650352891517; 
 Tue, 19 Apr 2022 00:21:31 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 a13-20020a2e88cd000000b0024db9dbf11fsm666178ljk.130.2022.04.19.00.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 00:21:31 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 19 Apr 2022 10:21:23 +0300
Message-Id: <20220419072123.28590-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220419072123.28590-1-eagle.alexander923@gmail.com>
References: <20220419072123.28590-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_002133_425452_7953FB54 
X-CRM114-Status: GOOD (  13.82  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: CCMX51: Add support for 16-bit memory module variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Modules can have memory chips with a bus width of 16 bits.
Let's separate the binaries for initializing different types.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 .../boards/ccxmx51/flash-header-x16.imxcfg    | 61 +++++++++++++++++++
 ...-header.imxcfg => flash-header-x32.imxcfg} |  1 -
 arch/arm/boards/ccxmx51/lowlevel.c            | 12 +++-
 images/Makefile.imx                           | 10 +--
 4 files changed, 78 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/ccxmx51/flash-header-x16.imxcfg
 rename arch/arm/boards/ccxmx51/{flash-header.imxcfg => flash-header-x32.imxcfg} (99%)

diff --git a/arch/arm/boards/ccxmx51/flash-header-x16.imxcfg b/arch/arm/boards/ccxmx51/flash-header-x16.imxcfg
new file mode 100644
index 0000000000..6d77324fc8
--- /dev/null
+++ b/arch/arm/boards/ccxmx51/flash-header-x16.imxcfg
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+soc imx51
+loadaddr 0x90000000
+ivtofs 0x400
+wm 32 0x73fa88a0 0x00000200
+wm 32 0x73fa850c 0x000020c5
+wm 32 0x73fa8510 0x000020c5
+wm 32 0x73fa883c 0x00000002
+wm 32 0x73fa8848 0x00000002
+wm 32 0x73fa84b8 0x000000e7
+wm 32 0x73fa84bc 0x00000045
+wm 32 0x73fa84c0 0x00000045
+wm 32 0x73fa84c4 0x00000045
+wm 32 0x73fa84c8 0x00000045
+wm 32 0x73fa8820 0x00000000
+wm 32 0x73fa84a4 0x00000003
+wm 32 0x73fa84a8 0x00000003
+wm 32 0x73fa84ac 0x000000e3
+wm 32 0x73fa84b0 0x000000e3
+wm 32 0x73fa84b4 0x000000e3
+wm 32 0x73fa84cc 0x000000e3
+wm 32 0x73fa84d0 0x000000e2
+wm 32 0x73fa882c 0x00000004
+wm 32 0x73fa88a4 0x00000004
+wm 32 0x73fa88ac 0x00000004
+wm 32 0x73fa88b8 0x00000004
+wm 32 0x83fd9000 0x82a10000
+wm 32 0x83fd9008 0x82a10000
+wm 32 0x83fd9010 0x000ad0d0
+wm 32 0x83fd9004 0x3f3584ab
+wm 32 0x83fd900c 0x3f3584ab
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x0000801a
+wm 32 0x83fd9014 0x0000801b
+wm 32 0x83fd9014 0x00448019
+wm 32 0x83fd9014 0x07328018
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x06328018
+wm 32 0x83fd9014 0x03808019
+wm 32 0x83fd9014 0x00408019
+wm 32 0x83fd9014 0x00008000
+wm 32 0x83fd9014 0x0400800c
+wm 32 0x83fd9014 0x0000801e
+wm 32 0x83fd9014 0x0000801f
+wm 32 0x83fd9014 0x0000801d
+wm 32 0x83fd9014 0x0732801c
+wm 32 0x83fd9014 0x0400800c
+wm 32 0x83fd9014 0x00008014
+wm 32 0x83fd9014 0x00008014
+wm 32 0x83fd9014 0x0632801c
+wm 32 0x83fd9014 0x0380801d
+wm 32 0x83fd9014 0x0040801d
+wm 32 0x83fd9014 0x00008004
+wm 32 0x83fd9000 0xb2a10000
+wm 32 0x83fd9008 0xb2a10000
+wm 32 0x83fd9010 0x000ad6d0
+wm 32 0x83fd9034 0x90000000
+wm 32 0x83fd9014 0x00000000
diff --git a/arch/arm/boards/ccxmx51/flash-header.imxcfg b/arch/arm/boards/ccxmx51/flash-header-x32.imxcfg
similarity index 99%
rename from arch/arm/boards/ccxmx51/flash-header.imxcfg
rename to arch/arm/boards/ccxmx51/flash-header-x32.imxcfg
index 185a48fe18..6480aa590e 100644
--- a/arch/arm/boards/ccxmx51/flash-header.imxcfg
+++ b/arch/arm/boards/ccxmx51/flash-header-x32.imxcfg
@@ -59,4 +59,3 @@ wm 32 0x83fd9008 0xb2a20000
 wm 32 0x83fd9010 0x000ad6d0
 wm 32 0x83fd9034 0x90000000
 wm 32 0x83fd9014 0x00000000
-
diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index 367925e398..49bc7bfe32 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -33,7 +33,7 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
-ENTRY_FUNCTION(start_ccxmx51, r0, r1, r2)
+static inline void start_ccxmx51(void)
 {
 	extern char __dtb_imx51_ccxmx51_start[];
 	void *fdt;
@@ -49,3 +49,13 @@ ENTRY_FUNCTION(start_ccxmx51, r0, r1, r2)
 
 	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, fdt);
 }
+
+ENTRY_FUNCTION(start_ccxmx51_x16, r0, r1, r2)
+{
+	start_ccxmx51();
+}
+
+ENTRY_FUNCTION(start_ccxmx51_x32, r0, r1, r2)
+{
+	start_ccxmx51();
+}
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 18cabbf041..8cc20b1137 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -88,10 +88,12 @@ FILE_barebox-kindle-ey21.img = start_imx50_kindle_ey21.pblb.imximg
 image-$(CONFIG_MACH_KINDLE_MX50) += barebox-kindle-ey21.img
 
 # ----------------------- i.MX51 based boards ---------------------------
-pblb-$(CONFIG_MACH_CCMX51) += start_ccxmx51
-CFG_start_ccxmx51.pblb.imximg = $(board)/ccxmx51/flash-header.imxcfg
-FILE_barebox-imx51-ccxmx51.img = start_ccxmx51.pblb.imximg
-image-$(CONFIG_MACH_CCMX51) += barebox-imx51-ccxmx51.img
+pblb-$(CONFIG_MACH_CCMX51) += start_ccxmx51_x16 start_ccxmx51_x32
+CFG_start_ccxmx51_x16.pblb.imximg = $(board)/ccxmx51/flash-header-x16.imxcfg
+CFG_start_ccxmx51_x32.pblb.imximg = $(board)/ccxmx51/flash-header-x32.imxcfg
+FILE_barebox-imx51-ccxmx51-x16.img = start_ccxmx51_x16.pblb.imximg
+FILE_barebox-imx51-ccxmx51-x32.img = start_ccxmx51_x32.pblb.imximg
+image-$(CONFIG_MACH_CCMX51) += barebox-imx51-ccxmx51-x16.img barebox-imx51-ccxmx51-x32.img
 
 pblb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblb.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

