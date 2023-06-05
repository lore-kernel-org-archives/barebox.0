Delivery-date: Mon, 05 Jun 2023 22:28:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoO-00CCTH-V3
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoM-00010p-E2
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xRnJF7yXT9tejWnMH/ao9HMHya+sMMtRWRHljB64AzU=; b=kx6ronTO9IDWor
	5NHYosnIczMnemuRp+mvp0UR9wVffFVRRtYnnJazqzLMl58QvR8cBe8FU5yc3BahWTe2m4/wCGBl2
	jd29tf+5FXT8qK3Toc//qi9nt3dEMOJQSkRipOaDRq58ZNvvmheKjI0BOLYs6y+8WEP/lxo3I0y3h
	3VFfiTV8wZcl3Nz5bgNRhseIvk8Go4Hf+f8OCl11nupi1e4FTkUFoLtlwBIfupyX6dtc5ZwnsTxfa
	R/snPuLuVQt+o6fXIer/zstNwOjtj6LAzU+OAZDBlM/DhzY7r0uV+zrTYhhl72GQuN3pHxmtNv08n
	Ezp07x8lxPb7oE154E5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn0-00Gh64-2H;
	Mon, 05 Jun 2023 20:26:54 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gmx-00Gh4Z-1q
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:52 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b1badb8f9bso35456511fa.1
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996807; x=1688588807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xRnJF7yXT9tejWnMH/ao9HMHya+sMMtRWRHljB64AzU=;
        b=s5AHt00L9rnoJ6H1p2RB7Ov5eKWpfgo97Ua7v54jm3I3dethgFecQfLBZu6GDp4GYZ
         iLyrNWd0CTPyHQHTaFmprQMeXhG2r4qXCKVShcz3VfXPfWmNVe6H7hlFERlgn9+WpyaY
         8OY1cOQJp9r2nkSF5xHcrHWfHxhOxpsVMYuJnXZECkgwbUq3ByLb07UCvE5oue5q85IK
         2R9UFf1D4YzFjp3V89EY+zzfbeH8/sUPo6bN081CpRqf/fIBtAAcoYl7r3klqi/iJBR7
         Hfkm3xmXsA7MXqsCgMpmWtMrqkHXPvM2PirAC7RTqnA44dh2xyRNTDjsPypojB4bleqe
         Dniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996807; x=1688588807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xRnJF7yXT9tejWnMH/ao9HMHya+sMMtRWRHljB64AzU=;
        b=KLsjf5MV3adu3/F9aMrSQoxl+k43aAePKD0GTfnZ08KlCWT+gGFE8fMoPIFt1xqciI
         PXtTC7ErpqQh/cYFLyQHYNIOhnnH565TAruNbNnjFG8mIwpsdKdefz4pmgo7lJO72UwC
         eMehUvOfBwgfsvf6py33WHtH8iVjqhtmDaJILAGI/8YQiudUyQhtOYgOyPm9+a0SyxHy
         4cp0YgCQWLbaGgEMa9GWmULfDl4ZsyXSx+8CIVxLng0eRkAwEo3j7TCqVec6VCMK4GYb
         LMP7v0YlMs8IUt2ANKcVaxJE9Eq3xkQx5fHI6mroi7JJvnEa/0NeSd80Uo0XXYIDbVXz
         PoRA==
X-Gm-Message-State: AC+VfDwyPJHgBsiB3YNAQ8Nkqm2iqLFnBsuOxFwrLygiqm48x30/RJAz
	ssw92lfrSTMb/p9YxTD1/hovJcDbUQFWkA==
X-Google-Smtp-Source: ACHHUZ71TQHmAcecssGGpMeDsXPGl/7TpmyTbnNX7N5EIaEKtqXiphvkRFa/Av01/GtAxTNjfScdmg==
X-Received: by 2002:a2e:3308:0:b0:2a7:a616:c39 with SMTP id d8-20020a2e3308000000b002a7a6160c39mr164424ljc.48.1685996807077;
        Mon, 05 Jun 2023 13:26:47 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:46 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:31 +0300
Message-ID: <20230605202634.42175-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132651_632535_0B4C8D24 
X-CRM114-Status: UNSURE (   9.27  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/17] MIPS: fix and improve 64BIT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The existing 64BIT support for MIPS was somewhat incomplete with no
board having MIPS64 CPUs specified to be available as targets. Define
Malta as supporting those and fix all the compilation and linking
errors. Make some optional features available with 64BIT too.

Denis Orlov (17):
  MIPS: malta: allow to choose MIPS64 target CPU in config
  MIPS: malta: use CKSEG instead of KSEG macros
  MIPS: reloc: fix relocation with CONFIG_64BIT enabled
  MIPS: o32: provide ta0..ta3 register definitions
  MIPS: pbl: use o32/n64 compatible register definitions
  MIPS: pbl: fix linking errors with CONFIG_64BIT
  MIPS: use MIPS32/MIPS64 generic instruction macros
  MIPS: malta: fix GT64120 base virtual address on 64BIT
  MIPS: fix addresses of exception vectors in 64-bit mode
  MIPS: fix *ADDR macro usage warnings on CONFIG_64BIT
  MIPS: Makefile: sign-extend TEXT_BASE value on CONFIG_64BIT
  MIPS: enable 64-bit kernel segment addressing on CONFIG_64BIT
  MIPS: traps: fix passing wrong sp when returning from exception
  MIPS: pbl_macros: use generic load/store macros in
    copy_to_link_location
  MIPS: add 64-bit support for optimized string functions
  MIPS: make setjmp/longjmp/initjmp available in 64BIT builds
  MIPS: main_entry-pbl: fix conversion warnings on CONFIG_64BIT

 arch/mips/Kconfig                             |  6 +-
 arch/mips/Makefile                            | 14 +++--
 arch/mips/boards/qemu-malta/lowlevel.S        |  4 +-
 arch/mips/boot/main_entry-pbl.c               | 11 ++--
 arch/mips/boot/main_entry.c                   |  2 +-
 arch/mips/boot/start.S                        |  4 +-
 arch/mips/include/asm/asm.h                   | 10 +--
 arch/mips/include/asm/debug_ll_ns16550.h      |  6 +-
 arch/mips/include/asm/dma.h                   | 16 ++---
 arch/mips/include/asm/io.h                    |  2 +-
 arch/mips/include/asm/pbl_macros.h            | 62 +++++++++++--------
 arch/mips/include/asm/pbl_nmon.h              | 10 +--
 arch/mips/include/asm/regdef.h                |  6 ++
 arch/mips/include/asm/setjmp.h                |  2 +-
 arch/mips/lib/genex.S                         |  8 +--
 arch/mips/lib/memcpy.S                        | 37 +++++++++--
 arch/mips/lib/reloc.c                         |  7 +--
 arch/mips/lib/setjmp.S                        | 48 +++++++-------
 arch/mips/lib/traps.c                         |  2 +-
 .../mach-malta/include/mach/mach-gt64120.h    |  2 +-
 arch/mips/mach-malta/pci.c                    |  2 +-
 21 files changed, 156 insertions(+), 105 deletions(-)

-- 
2.41.0



