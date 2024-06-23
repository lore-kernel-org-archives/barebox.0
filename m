Delivery-date: Sun, 23 Jun 2024 22:50:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sLUAC-00B62H-1P
	for lore@lore.pengutronix.de;
	Sun, 23 Jun 2024 22:50:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sLUAB-0000ha-R5
	for lore@pengutronix.de; Sun, 23 Jun 2024 22:50:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+hDSiEFOQpniSZtKdePCHxwWsEuXwIVvLSNtnkpPsj8=; b=CjrhN2vyi/Okcf
	tQj/tpVssTVnF2XmsC0D9ANJLK6PdBkaNRBZY9f9T2eG4rnq6ghQBl9V8X+UOR1SKMkbBy9NoNmXi
	03T3Cw6/j/Y41UwTVkxxVXT1yX5U++hm2dXW4p1OGKYt+VB8NLN3Hbpa0ZhxXs0JD41CTyCJyISuX
	V6HGQq9c/ATzgYpFCWwhf1IGFu+0L8ga5DftPrT24kU4yZre9GId1JaVz3+G1ZsdaRsQWGYl1P/ia
	mHAKAyRGrNEXvzBabwY2jNjeoFk4WfhHhQwPGXsxqaYPymkUkPkrp621321OcZS32gCev6e30NaIf
	El6nSPxtUTybOKGkMfvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLU9T-0000000EmZU-2tkF;
	Sun, 23 Jun 2024 20:49:31 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLU9Q-0000000EmYz-21nR
	for barebox@lists.infradead.org;
	Sun, 23 Jun 2024 20:49:30 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2ebe3fb5d4dso32164491fa.0
        for <barebox@lists.infradead.org>; Sun, 23 Jun 2024 13:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719175766; x=1719780566; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+hDSiEFOQpniSZtKdePCHxwWsEuXwIVvLSNtnkpPsj8=;
        b=KKzj//LvaGLUUO9vgshA7flKfSduDMp6/7WqyzIqhTPCdI+bUqt9N44M1gpG+A4V+u
         TARp5Nb5gVpO/zX8L2LdVB6kr50WAa5HU6hEE9wOkwvanEnncCJcFSMnL1pRrrzGGKbH
         G/p4XHVOFaKDttJ07/bTxcd9SqUumvJ+r+NPPjwcAmMHnYhA43JriA7hxSW1YjGngqzo
         2XaX1GEIv9am81KCjQoQGJJj8g62Z7p4RPSyZzQzwpq+LPl+1b5MGy/mJzbZCdFOZPE7
         7J5Thopew1KkhP73WizkZitJ6vAjKvOzWIvkRytrktholIa/p70i4LoyLCRfMsnHFzaK
         WbCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719175766; x=1719780566;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+hDSiEFOQpniSZtKdePCHxwWsEuXwIVvLSNtnkpPsj8=;
        b=fYyERbhy8vb7AP/3pWvT9MgEuXBzeqTjWDnd4zwlUgW7s72d/8M2TvZRgqeUvjjXTw
         r+o5wtcXWcdpEtyyznN2F/7hiCAer9PNps7oP1EPDaOLRxvKUpjxg0mzBvrEuvQNHiUz
         v0QuLUbNHJP1MNaE+DjBLyg2I3ZS+BEQzG10ILlxaucuQiaCgCbk+GbKZzbeSNVIFAoj
         BDyp4FRT1CaLzWEmGtoVUwheLZzlU5i6x5gexdWiO1GkZVPXhs5nn/71DpUcT6xZQXmA
         z2TJLqrQkWO9atGAsImmNjztl1D2fAi4PmTsor5JIunUvPpQieoJc1rwmjlvka4kWXuI
         QvUg==
X-Gm-Message-State: AOJu0YzZG7GJ7obDgGjpA4SIIoLanLv0weDHw3XHyNm4Ko9/WQ1PHE9Q
	toMm/lUvqdt7jgXrTsZueREdZwtU5mNv/5XWiVjKWSLSheRfW0Ba0X7/X7o52Nk=
X-Google-Smtp-Source: AGHT+IE2StEPow92ysi/ZCFMPinfDBJENXPpoehjCYbVOHz0EKFhq62/alkSJD4KxCka+EXjOSdkvQ==
X-Received: by 2002:a2e:9f08:0:b0:2ec:3c7e:3b3d with SMTP id 38308e7fff4ca-2ec56be6b08mr9401811fa.26.1719175765342;
        Sun, 23 Jun 2024 13:49:25 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec5d37deeasm3167791fa.57.2024.06.23.13.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 13:49:24 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Sun, 23 Jun 2024 23:46:53 +0300
Message-ID: <20240623204805.44070-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_134928_546221_9D33A8E6 
X-CRM114-Status: GOOD (  12.22  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] MIPS: use more consistent type for memory size values
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch from using u32 to unsigned long for these. It is unlikely to be
actually utilized on 64-bit builds, but this feels a bit safer,
considering that we work with the whole register width (32 or 64 bit,
depending on the config setting) for the corresponding value on the
assembly side.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/uncompress.c | 6 +++---
 arch/mips/lib/reloc.c       | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/mips/boot/uncompress.c b/arch/mips/boot/uncompress.c
index 9344679a6b..0630d03c6b 100644
--- a/arch/mips/boot/uncompress.c
+++ b/arch/mips/boot/uncompress.c
@@ -19,14 +19,14 @@ extern void *input_data_end;
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-void barebox_pbl_start(void *fdt, void *fdt_end, u32 ram_size);
+void barebox_pbl_start(void *fdt, void *fdt_end, unsigned long ram_size);
 
 void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
-					   u32 ram_size)
+					   unsigned long ram_size)
 {
 	u32 piggy_len, fdt_len;
 	void *fdt_new;
-	void (*barebox)(void *fdt, u32 ram_size);
+	void (*barebox)(void *fdt, unsigned long ram_size);
 
 	puts_ll("barebox_pbl_start()\n");
 
diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index ec351b66f7..be8267a0bb 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -41,7 +41,7 @@
 #include <asm-generic/memory_layout.h>
 
 void main_entry(void *fdt);
-void __noreturn relocate_code(void *fdt, u32 relocaddr);
+void __noreturn relocate_code(void *fdt, unsigned long ram_size);
 
 /**
  * read_uint() - Read an unsigned integer from the buffer
@@ -106,7 +106,7 @@ static void apply_reloc(unsigned int type, void *addr, long off)
 	}
 }
 
-void __noreturn relocate_code(void *fdt, u32 ram_size)
+void __noreturn relocate_code(void *fdt, unsigned long ram_size)
 {
 	unsigned long addr, length, bss_len, relocaddr, new_stack;
 	uint8_t *buf;
-- 
2.45.2



