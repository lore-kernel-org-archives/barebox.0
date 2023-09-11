Delivery-date: Mon, 11 Sep 2023 17:10:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYg-00Bcvi-9z
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:10:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYe-0005PL-DG
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:10:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gW9BDS5eJftY5Kt5s+h6nt+oBpWRFsSREJKuEhne584=; b=wdZTkcHwz3r6NLJ3HQ2qJlCfkF
	rI8aZArivnJPppUjFPspwS93TbNO6HGHDP2t2zpQVA9YxEoB91djGvRzrp+clZvGWuadI3ZjjL4r1
	3wHEE5TPyQ/ffVjaSlR6L6y8oNQSeYnNHjHN5v8D3U7obk6A8tNY/ZZTn28Iubxo5zgm7WOEQ/y0t
	yhfEx8cgoMR2bjw+VAtRU8B8JhA5tFXT7f+97pdZa/ybgQEhvtMt5gsSbXeE/O5PRl6bBVJyuxaKz
	C2cS7sk5fuXhWlx8NNvR6KtPvoGUt05rF3iv8fC4fd2lzqFANqCSYwmJgQGhGKhaQIr2fz05G0VqO
	JHzDB0IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXJ-000pS1-2a;
	Mon, 11 Sep 2023 15:09:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXG-000pOx-12
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:09:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiXA-0004yD-3l
	for barebox@lists.infradead.org; Mon, 11 Sep 2023 17:09:04 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-005a6R-No
	for barebox@lists.infradead.org; Mon, 11 Sep 2023 17:09:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX8-00F2rT-2F
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 17:09:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 11 Sep 2023 17:08:55 +0200
Message-Id: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_080910_359799_55A9E387 
X-CRM114-Status: GOOD (  10.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] add stack protector and guard page support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GCC's strong stack protector feature is increasingly used as default in
many distros, because of comparatively low overhead. This series adds
support in barebox to catch stack frame overflow as well as a guard
page feature to catch stack region overflow.

Ahmad Fatoum (5):
  include: move PAGE_ definitions into linux/pagemap.h
  ARM: mark early C setup functions as __prereloc
  lib: add stackprotector support
  ARM: mmu: catch stack overflowing into TTB with stack guard page
  commands: add stacksmash command for causing stack overflows

 Makefile                           |   3 -
 arch/arm/cpu/common.c              |   2 +-
 arch/arm/cpu/interrupts_32.c       |  21 +++++-
 arch/arm/cpu/interrupts_64.c       |  38 +++++++---
 arch/arm/cpu/mmu_32.c              |  16 +++++
 arch/arm/cpu/mmu_64.c              |  15 ++++
 arch/arm/cpu/start.c               |   4 +-
 arch/arm/include/asm/barebox-arm.h |  18 ++++-
 arch/arm/include/asm/reloc.h       |   2 +-
 arch/arm/lib64/string.c            |   2 +-
 commands/Kconfig                   |   6 ++
 commands/Makefile                  |   1 +
 commands/stacksmash.c              |  58 ++++++++++++++++
 include/common.h                   |   6 +-
 include/linux/compiler_types.h     |  21 ++++++
 include/linux/pagemap.h            |   8 ++-
 lib/Kconfig                        |   2 +
 lib/Kconfig.hardening              | 108 +++++++++++++++++++++++++++++
 lib/Makefile                       |   1 +
 lib/stackprot.c                    |  32 +++++++++
 lib/string.c                       |   2 +-
 scripts/Makefile.lib               |  10 +++
 22 files changed, 350 insertions(+), 26 deletions(-)
 create mode 100644 commands/stacksmash.c
 create mode 100644 lib/Kconfig.hardening
 create mode 100644 lib/stackprot.c

-- 
2.39.2



