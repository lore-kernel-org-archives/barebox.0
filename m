Delivery-date: Thu, 26 Sep 2024 13:23:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmay-002ypj-0C
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:23:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmax-0002ZK-1n
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:23:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vs75PEzlzfG45JmJ9L2vMaB7fxxCPMh8xYUBViUYdWM=; b=JSp/NqpXEx+rT/
	XzOArGPMzKupGSEADRHvko9AXeqr59gXcx6b5cmZsv0tWWvzlybs/cOFlzGzq60L1sTw+DXICfsgG
	C3Eo06FP2cHw3fau0X5/1bds67CqFr4ueaJk7GqyF+p+xeIg9ErblS89bzyVGC9Jy30HO6V6i/jb2
	Zb7p5wtenYh2EOvkcoOW5ClThCNSfGNsPdvgjGuLvD9ClOZ2zicSLYlz3xQOB7MbhdZno6OjNwADr
	AsVfASxndntZg49hiVIy6Nr+6vST6yVxMcf/0zaohJu6bu2X84KhMyBQG7ziIeIqo/OpmUnBmE0k/
	nSMT5nag8uYpfk6cVXeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmaL-00000008DVz-2QGp;
	Thu, 26 Sep 2024 11:23:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmUe-00000008CYg-0rzo
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:17:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-0006sm-NR; Thu, 26 Sep 2024 13:17:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-001fjm-7X; Thu, 26 Sep 2024 13:17:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-00FhS5-1u;
	Thu, 26 Sep 2024 13:17:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 13:17:02 +0200
Message-Id: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK5C9WYC/4WNQQ6CMBBFr0Jm7Zi2igFX3MOwKGWASWxLWmwgh
 LtbuYDL95L//g6RAlOEZ7FDoMSRvcugLgWYSbuRkPvMoIS6i1qVqINFHSPZ7r2hJWt9IqzImK7
 Ww6BlB3k6Bxp4PbOvNvPEcfFhO1+S/Nk/wSRRoOhrJcXtUVZaNDO58bME73i99gTtcRxfeKyos
 70AAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727349426; l=3300;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=S5i/rTEbQG7cNLk8ilKrMeMaxochyae9MH2FzhcAYnI=;
 b=sPzG66+HAetr5yadane/ayhrkuzJff+vpSRymRNrO2qSPABvYINSs2GyBUP0lN3rg4/9fJ2L+
 3MzgJYMxfaWAEaIoNJRui/oQ2jEP7p+JzJniOO27WxVSBQ/83CrAQCh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_041708_295118_847607B6 
X-CRM114-Status: GOOD (  13.31  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/10] ARM: add assembler optimized memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I realized that ARM uses the generic memmove() implementation which is
rather slow. This series adds the assembler optimized version for ARM.
The corresponding recent Linux code doesn't fit into barebox anymore, so
to merge the code the surroundings have to be updated first, hence the
series is bigger than I like it to be.

Sascha

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Add note which Linux version the updated files are from
- drop unused copy_template.S for ARM64
- Drop unnecessary AFLAGS_NOWARN
- restore the SPDX-FileCopyrightText lines in memcpy.S
- Link to v1: https://lore.barebox.org/20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de

---
Sascha Hauer (10):
      ARM: Use optimized reads[bwl] and writes[bwl] functions
      ARM: rename logical shift macros push pull into lspush lspull
      ARM: convert all "mov.* pc, reg" to "bx reg" for ARMv6+
      ARM: update lib1funcs.S from Linux
      ARM: update findbit.S from Linux
      ARM: update io-* from Linux
      ARM: always assume the unified syntax for assembly code
      ARM: update memcpy.S and memset.S from Linux
      lib/string.c: export non optimized memmove as __default_memmove
      ARM: add optimized memmove

 arch/arm/Kconfig                  |   4 -
 arch/arm/cpu/cache-armv4.S        |  11 +-
 arch/arm/cpu/cache-armv5.S        |  13 +-
 arch/arm/cpu/cache-armv6.S        |  13 +-
 arch/arm/cpu/cache-armv7.S        |   9 +-
 arch/arm/cpu/hyp.S                |   3 +-
 arch/arm/cpu/setupc_32.S          |   7 +-
 arch/arm/cpu/sm_as.S              |   3 +-
 arch/arm/include/asm/assembler.h  |  36 ++++-
 arch/arm/include/asm/cache.h      |   8 ++
 arch/arm/include/asm/io.h         |  24 ++++
 arch/arm/include/asm/string.h     |   4 +-
 arch/arm/include/asm/unified.h    |  75 +----------
 arch/arm/lib32/Makefile           |   1 +
 arch/arm/lib32/ashldi3.S          |   3 +-
 arch/arm/lib32/ashrdi3.S          |   3 +-
 arch/arm/lib32/copy_template.S    |  86 ++++++------
 arch/arm/lib32/findbit.S          | 243 +++++++++++++--------------------
 arch/arm/lib32/io-readsb.S        |  32 ++---
 arch/arm/lib32/io-readsl.S        |  32 ++---
 arch/arm/lib32/io-readsw-armv4.S  |  26 ++--
 arch/arm/lib32/io-writesb.S       |  34 ++---
 arch/arm/lib32/io-writesl.S       |  36 ++---
 arch/arm/lib32/io-writesw-armv4.S |  16 +--
 arch/arm/lib32/lib1funcs.S        |  80 ++++++-----
 arch/arm/lib32/lshrdi3.S          |   3 +-
 arch/arm/lib32/memcpy.S           |  30 +++--
 arch/arm/lib32/memmove.S          | 206 ++++++++++++++++++++++++++++
 arch/arm/lib32/memset.S           |  96 ++++++++-----
 arch/arm/lib32/runtime-offset.S   |   2 +-
 arch/arm/lib64/copy_template.S    | 180 -------------------------
 arch/arm/lib64/memcpy.S           | 274 ++++++++++++++++++++++++++++++++------
 arch/arm/lib64/memset.S           |  18 ++-
 arch/arm/lib64/string.c           |  17 +++
 include/string.h                  |   2 +
 lib/string.c                      |  11 +-
 36 files changed, 940 insertions(+), 701 deletions(-)
---
base-commit: 419ea9350aa083d4a2806a70132129a49a5ecf95
change-id: 20240925-arm-assembly-memmove-8eccb9affa1b

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



