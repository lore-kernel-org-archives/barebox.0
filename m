Delivery-date: Mon, 25 Nov 2024 16:10:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajF-000FKV-02
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:10:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajE-0006uf-Vp
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:10:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tNGJWPWACHBHCSYpomu31U8HsdanYc2uz9PlqzG8vJM=; b=GE5LcJEq1NvY16bnwaKEHaNsBj
	4mdL7EoJtzZTUqzsgNKBdfaOQ+VZIYFMNXfcNPatXo9p3w5w1Z9f1IEySL3kXGbbCa/lmgcRtmwf+
	ZFgUXqSq+NP5rp+WQ1EbtL78cPzhwwhCWHh8V0TjjciXkHe2b4r/p9vYlCXgaLu/S8NPpdkHt8Pm2
	i69f/r2Ujvj3coy9zZJCzQVAVXgs/QK9+Dmz5cN4ChqT58dmR4Ihqe6u47O8+7xUQ13MoVGpAE0dM
	pFSR4TE9+kWXQmxXuMS08Pb1N4TXym/7XCEw66NrwtRDWcALSM2v3c4USLZCGcq/Wi6v74XQc6ziH
	4Ttm0yIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaij-00000008Oz6-1UkD;
	Mon, 25 Nov 2024 15:09:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaih-00000008Oxx-1z1M
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:09:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaig-0006cq-CH
	for barebox@lists.infradead.org; Mon, 25 Nov 2024 16:09:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-00069k-1G
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:09:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-001HUO-1Q
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:09:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 25 Nov 2024 16:09:41 +0100
Message-Id: <20241125150945.166979-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_070947_509222_D4EA4BF9 
X-CRM114-Status: GOOD (  11.03  )
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
Subject: [PATCH 0/4] add first LLVM/clang support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We can't compile all of barebox with clang yet, because we use
GCC-specific extensions, especially C-code in naked functions, which we
is judiciously used on 32-bit ARM platforms.

Nevertheless, sandbox can already be used with clang and it's useful for
incoming support for libfuzzer, so let's add support to Kbuild.

Ahmad Fatoum (4):
  sandbox: use host system's UBSan library
  common: implement CC_IS_GCC and CC_IS_CLANG symbols
  fixdep: sync with Linux
  Makefile: add LLVM/clang support

 Makefile                 |  45 ++++--
 arch/arm/Kconfig         |   3 +-
 arch/sandbox/Makefile    |   4 +
 common/Kconfig           |  16 +++
 lib/Kconfig.ubsan        |   3 +
 lib/Makefile             |   2 +-
 scripts/Kbuild.include   |  31 ++--
 scripts/Kconfig.include  |   6 +
 scripts/Makefile.build   |   8 +-
 scripts/Makefile.clang   |   9 ++
 scripts/Makefile.ubsan   |  33 +++--
 scripts/basic/Makefile   |   2 +
 scripts/basic/fixdep.c   | 297 ++++++++++++++++++++++++---------------
 scripts/cc-version.sh    |  52 +++++++
 scripts/compiler.h       |  20 +--
 scripts/include/xalloc.h |  34 +++++
 scripts/mod/sumversion.c |  19 ++-
 17 files changed, 411 insertions(+), 173 deletions(-)
 create mode 100644 scripts/Makefile.clang
 create mode 100755 scripts/cc-version.sh
 create mode 100644 scripts/include/xalloc.h

-- 
2.39.5



