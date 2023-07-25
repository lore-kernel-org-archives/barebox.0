Delivery-date: Tue, 25 Jul 2023 07:08:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHK-008zvm-RH
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHH-0004Je-VC
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jCXxOe3Hr7ocd/bxMP0LPObF5dWP8gdAjvL51E4IXwM=; b=ftGWtvldLI+OBj
	FasqcdKDD5cnzGomReY/PogyiBushKpXLFQH6fHGNY8pFBitIioQG050GfuxhDY0FToOstU/7jP7V
	xt3bpVOUpwsgVWL3klSPWQsyG8g7Fdm/8azrYUt63hPdGHzyONvPHZT+2efAhlmflYfOaWerGQaOH
	gpRHhUDAbK3PP/a9L9yCL9V9teFc20/50Laccmo2NPqJnWBNmERRZrF5VaSnYJdloBavN5jLq1X0R
	yBphbt1T1szd3f3dPqRo8MRLr0NCmi1W6RghhUySOD+ineZnyLzRVzCIQQouEb3mBhnnwgTpFIFz4
	j09PLGTmjONR88NmkfOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFq-006FGY-1d;
	Tue, 25 Jul 2023 05:06:38 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFm-006FEl-1w
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:36 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-52227884855so3394144a12.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261590; x=1690866390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jCXxOe3Hr7ocd/bxMP0LPObF5dWP8gdAjvL51E4IXwM=;
        b=OW3J8ZOsCTbUq1MOBw7jE/GROqovFZsNQA6undk9RoToGKGcyAZcvilRW07bm7HQoV
         v3ByzsHNcvVvjOaDggABYoeigy7tEghY0rISXAwRwYaiHkMQlQxriV/jNRUdpm3U+8Jy
         ML3TcoVsK2kW70hHk7w7zQkR+WK8pwgHwUFp2mfP1k6JnIVl7mG2EvISk7Xvpc5Z4dwd
         QT9W1xX3uAAov15vp/arHe8S5en1tWBmRl5YtgNnXLUC130ymhzE8/6hO46aUw0KWyC9
         /BSY7J1wM0dx09zWBR47kW9mPqTnPhXcKkRrYHiDWuSODNNG+oalYs4g5H3LMHX8qwEI
         ssfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261590; x=1690866390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jCXxOe3Hr7ocd/bxMP0LPObF5dWP8gdAjvL51E4IXwM=;
        b=Cri1fa6k0xU7mod1CHiykKZYJK0EEB77ANzsOBFaqQ6t+pj+luX7eFInFGJi0VbP5w
         aM2umFKfcSzPriEcOQEEMalF5fssHTZNWZY0qKIO3SrUDERlOj5HyyS63w0UyVJGyKvO
         xW7OzzBu3DsXfh89UnPesEnf+fO7LxzqfV38TdKhaEY+augtXmK5cW16U9d79emlKM0i
         Xy2yyfCyUk/RpOJ/CTCA3DgtCZz+GqxUJR4rxsGYMhqx4ILKxOWsXVaXc7KSRyEIcKXX
         JGwQRtbPa9wvIhlxDU/InMVJoDuD8sDFzrHPK8tFQFXZNfJ679KHf8Ie6UF3YT74NBMe
         2Jww==
X-Gm-Message-State: ABy/qLY4Gs86KS56gWt3g+I7vUaS/Ar5J6G1bu65j1PXju4zjK5cJRnU
	M4i8Gvn7i9MnPFlKSyRufidoTF/E9FLmKe+eDbiSuw==
X-Google-Smtp-Source: APBJJlEketkhbtgoJm+bH5WxwsV7xluwEwa4ZHPd3onp89VcryqMljM4x52ftHed3QBV3gWymEXviQ==
X-Received: by 2002:a50:fb08:0:b0:521:e544:e7 with SMTP id d8-20020a50fb08000000b00521e54400e7mr9436953edq.6.1690261589530;
        Mon, 24 Jul 2023 22:06:29 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:28 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:01 +0300
Message-ID: <20230725050618.3451-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220634_643151_5E339526 
X-CRM114-Status: GOOD (  10.71  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/21] MIPS: semi-random code improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Denis Orlov (21):
  MIPS: addrspace: rectify ksseg segment naming
  MIPS: addrspace: simplify the header
  MIPS: main_entry-pbl: remove unused variable
  MIPS: barebox.lds: remove extra whitespace
  MIPS: reloc: mark relocate_code() as noreturn
  MIPS: cpuinfo: use appropriate format specifiers in printf
  MIPS: print BadVAddr CP0 register on exception
  MIPS: malta: merge GT64120 headers
  MIPS: pbl_macros: use .asciiz instead of .ascii + .byte 0
  MIPS: malta: remove duplicated barebox magic code
  MIPS: pbl: put mips_barebox_10h into ENTRY_FUNCTION
  MIPS: pbl: make sure to disable interrupts/watchpoints on entry
  MIPS: pbl: do enable 64-bit addressing in PBL
  MIPS: clean up barebox proper entry point
  MIPS: main_entry: properly set XTLB handler for 64-bit mode
  MIPS: main_entry: remove exception vector array
  MIPS: c-r4k: prettify code in __BUILD_BLAST_CACHE_RANGE
  MIPS: c-r4k: generate blast_*cache functions via macros
  MIPS: c-r4k: do flush secondary cache
  MIPS: c-r4k: remove extra function declaration
  MIPS: reloc: use IS_ALIGNED macro to check for an alignment

 arch/mips/boards/8devices-lima/lowlevel.S     |  2 +-
 arch/mips/boards/dlink-dir-320/lowlevel.S     |  4 +-
 arch/mips/boards/img-ci20/lowlevel.S          |  2 +-
 arch/mips/boards/loongson-ls1b/lowlevel.S     |  4 +-
 arch/mips/boards/netgear-wg102/lowlevel.S     |  4 +-
 arch/mips/boards/qemu-malta/lowlevel.S        | 17 +----
 arch/mips/boards/ritmix-rzx50/lowlevel.S      |  2 +-
 arch/mips/boards/tplink-wdr4300/lowlevel.S    |  2 +-
 arch/mips/boot/main_entry-pbl.c               |  4 --
 arch/mips/boot/main_entry.c                   | 41 +++--------
 arch/mips/boot/start.S                        | 46 -------------
 arch/mips/boot/start.c                        | 17 +++++
 arch/mips/include/asm/addrspace.h             | 47 ++++++-------
 arch/mips/include/asm/asm.h                   |  4 +-
 arch/mips/include/asm/cacheops.h              |  5 ++
 arch/mips/include/asm/pbl_macros.h            | 20 +++++-
 arch/mips/include/asm/stackframe.h            |  4 ++
 arch/mips/lib/barebox.lds.S                   |  2 -
 arch/mips/lib/c-r4k.c                         | 68 ++++++++++---------
 arch/mips/lib/cpuinfo.c                       |  6 +-
 arch/mips/lib/genex.S                         | 29 +++-----
 arch/mips/lib/reloc.c                         |  6 +-
 arch/mips/lib/traps.c                         |  3 +-
 .../mips/mach-ath79/include/mach/pbl_macros.h |  4 +-
 .../asm => mach-malta/include/mach}/gt64120.h | 13 ++--
 .../mach-malta/include/mach/mach-gt64120.h    | 17 -----
 arch/mips/mach-malta/pci.c                    |  4 +-
 27 files changed, 147 insertions(+), 230 deletions(-)
 delete mode 100644 arch/mips/boot/start.S
 create mode 100644 arch/mips/boot/start.c
 rename arch/mips/{include/asm => mach-malta/include/mach}/gt64120.h (92%)
 delete mode 100644 arch/mips/mach-malta/include/mach/mach-gt64120.h

-- 
2.41.0



