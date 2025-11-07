Delivery-date: Fri, 07 Nov 2025 15:42:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNfP-00GKKi-1x
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:42:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNfP-0000Ec-1Q
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:42:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=//zvICvYKFJt7Hc/XkfJxk2lppgGfXuVUy2sW0JBNBo=; b=Ekjpu8bBpWjQa6
	J2yZBdjheBieDy3sfPRuijabDLUE5CG5glT/7wq4p+rdXD6/ewDQkpU2CvL+kZbSiC0jfNoCzmlM9
	FNoFTwH8GB+xSLBg6e4t1oB5FHxPMlgCCx086sZsr+Pm7eud/gXR1kjSWaMSoodopeJvvRMQyivNH
	Q69bURMU//zI7gTmqnnZheA+x2eXeMr9FS8nzsrQwAM5jYqZY89hNoooPJ+gOFcKIIMC6EHJPgxQh
	xibX5ThqXx3OscMW+OpQk33IxPGWn7A57kqAqU8oX0/Mh33bmywiTQELPMrH8BXLe8S5NM/j+WCHL
	ZAS0j3d3mR0p26nqRmbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNf0-0000000HWLe-2R4N;
	Fri, 07 Nov 2025 14:41:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNey-0000000HWJy-0vJB
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:41:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeQ-0008Gk-Kt; Fri, 07 Nov 2025 15:41:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeP-007Xpm-28;
	Fri, 07 Nov 2025 15:41:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeP-0000000BST9-4AP6;
	Fri, 07 Nov 2025 15:41:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 15:41:08 +0100
Message-Id: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAQFDmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1NDQwNz3ZLEnJz8ZF0zi2QLMwsDs5RkU2MloOKCotS0zAqwQdGxtbUA1NU
 dnlgAAAA=
X-Change-ID: 20251107-talloc-68c86806dc53
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762526477; l=1653;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HLqgnLb28Jn8Xi3LURXVF8gzTRH4clvwCg3En5tvCOI=;
 b=Oy3QwkVDexyZHd9pO1JVAdh/VeTGl76chpxcZ7surzl6BUbueTKi47jzzOqu1T5EgzjIrMXmW
 u4VXisyDlxyD4TpBydTge6FDM6xVGCplonLSqyL+/f9Ic7IudXlE/yv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_064152_260792_5A213B43 
X-CRM114-Status: UNSURE (   8.88  )
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
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
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
Subject: [PATCH v2 0/4] talloc and memory leak debugging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This picks up the talloc series previously sent by Ahmad. I also added
the memory leak debugging patch tooling for sandbox.

This series includes my review comments to v1.

Changes since v1:
- pass originally allocated pointer to malloc_usable_size()
- align talloc allocations to 8 bytes
- Use __lsan_do_recoverable_leak_check() instead of
  __lsan_do_leak_check() to keep barebox running after memory leaks have
  been detected

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Ahmad Fatoum (4):
      lib: add talloc for overlaying a tree onto allocations
      test: self: add talloc selftest
      hush: fix memory leaks
      sandbox: add memory leak debugging tooling around LeakSanitizer

 arch/sandbox/Makefile         |   2 +-
 arch/sandbox/os/libc_malloc.c |   9 +
 commands/Kconfig              |   9 +
 commands/Makefile             |   1 +
 commands/checkleak.c          |  52 ++++++
 common/Kconfig.debug          |   6 +
 common/hush.c                 |  41 +++--
 include/malloc.h              |   6 +
 include/talloc.h              |  43 +++++
 include/xfuncs.h              |   6 +
 lib/Makefile                  |   1 +
 lib/talloc.c                  | 415 ++++++++++++++++++++++++++++++++++++++++++
 lib/xfuncs.c                  |  20 ++
 test/self/Kconfig             |   6 +
 test/self/Makefile            |   1 +
 test/self/talloc.c            | 153 ++++++++++++++++
 16 files changed, 754 insertions(+), 17 deletions(-)
---
base-commit: 594850b2de53300ae25c103e4ec88b2dac418106
change-id: 20251107-talloc-68c86806dc53

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



