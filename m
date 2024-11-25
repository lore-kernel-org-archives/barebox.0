Delivery-date: Mon, 25 Nov 2024 16:35:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb80-000GH9-0b
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:35:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb80-0004zE-1Z
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:35:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RwWqDOWg1QNur3c8YwUUcXgfcfRYaVu2dtSO9rWdnkM=; b=LdNuj6Tvuy11SMIOdv573VoQBY
	94apjbouGpmjsbQnvVRzRUf3USsEQNUfbzlA9XwZfG7jrcrjtXjRKRAZWS6qqRF0cyRoWn4EsKtYX
	9XgJhZcl2rw55QzrWbruqBQexExSgHer+nFKnI3Tv6so6rOVfnP5wY95N36o+xhCU8nmQJYpNvyTS
	7wtAlb83Ckb5naM2oY6tmuCjsLMi//A3F1yiVPKXZSHwr4XB6Dsw1SwS2lhfYvnOEnGz8N2JnHDpE
	iDnUnhv8NdHgwrREmP/DH0mrz69O+EHDI8ExlN0TdTiRhDUp8LWkB3oCTFwsG0OiECBRKPEggqIva
	GEEyZ+8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7Y-00000008VvL-3PsO;
	Mon, 25 Nov 2024 15:35:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7W-00000008Vsf-0GHy
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:35:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-0004Y8-Qb
	for barebox@lists.infradead.org; Mon, 25 Nov 2024 16:35:24 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7T-0006V5-2m
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:35:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7T-006GiN-2z
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:35:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 25 Nov 2024 16:35:14 +0100
Message-Id: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073526_099376_E320E8CD 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] sandbox: use native setjmp/longjmp/initjmp implementation by default 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In order to implement initjmp, we have two ways with available
functionality: The sigaltstack we are currently using and
makecontext/swapcontext. makecontext/swapcontext are unfortunately
deprecated in favor of POSIX threads and the sigaltstack runs afoul of
AddressSanitizer when compiled with clang.

This series fixes this by using the already existent assembly
implementations

Ahmad Fatoum (9):
  sandbox: asm: support inclusion from sandbox os support code
  test: self: setjmp: add simple initial testcase
  sandbox: source/invoke um Makefiles provided by host architecture
  sandbox: setjmp: mark C version as __weak
  sandbox: use native setjmp/longjmp/initjmp implementation by default
  sandbox: retire HAVE_ARCH_ASAN
  bthread: move asan fiber API into header
  test: self: setjmp: make compatible with ASAN
  bthread: fix use of ASAN fiber stack switch API

 Makefile                           |  2 +
 arch/Kconfig                       |  3 ++
 arch/arm/include/asm/setjmp.h      |  2 +
 arch/arm/um/Makefile               | 12 +++++
 arch/kvx/include/asm/setjmp.h      |  2 +
 arch/kvx/um/Makefile               |  6 +++
 arch/mips/include/asm/setjmp.h     |  2 +
 arch/mips/um/Makefile              |  6 +++
 arch/openrisc/include/asm/setjmp.h |  2 +
 arch/openrisc/um/Makefile          |  6 +++
 arch/powerpc/include/asm/setjmp.h  |  2 +
 arch/powerpc/um/Makefile           |  6 +++
 arch/riscv/include/asm/setjmp.h    |  2 +
 arch/riscv/um/Makefile             |  6 +++
 arch/sandbox/Kconfig               | 10 +++-
 arch/sandbox/Makefile              |  9 ++++
 arch/sandbox/include/asm/setjmp.h  | 44 +++++++++++++++-
 arch/sandbox/os/setjmp.c           |  6 +--
 arch/x86/include/asm/setjmp.h      |  2 +
 arch/x86/um/Makefile               | 12 +++++
 common/Kconfig                     |  3 --
 common/Kconfig.debug               |  5 +-
 common/bthread.c                   | 67 ++++++-----------------
 include/asm-generic/setjmp.h       | 27 ++++++++++
 scripts/subarch.include            | 11 ++++
 test/self/setjmp.c                 | 85 ++++++++++++++++++++++--------
 26 files changed, 260 insertions(+), 80 deletions(-)
 create mode 100644 arch/arm/um/Makefile
 create mode 100644 arch/kvx/um/Makefile
 create mode 100644 arch/mips/um/Makefile
 create mode 100644 arch/openrisc/um/Makefile
 create mode 100644 arch/powerpc/um/Makefile
 create mode 100644 arch/riscv/um/Makefile
 create mode 100644 arch/x86/um/Makefile
 create mode 100644 include/asm-generic/setjmp.h
 create mode 100644 scripts/subarch.include

-- 
2.39.5



