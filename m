Delivery-date: Tue, 10 Feb 2026 12:44:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpmAX-0009oa-2r
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 12:44:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpmAX-000166-DV
	for lore@pengutronix.de; Tue, 10 Feb 2026 12:44:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mfLqn6hGPWySAQYA87uLJ//mTu75i3GTieVQK/WhMQ8=; b=4CmuK9WJuEwNJrYzRvXJ/uYe5V
	WYyR5MdzemNRaNl+d9jepv3Se2uCGOjCnlpNJpNtIcUsxCK164Zx6XxQnQbsjHd+xanNzU+mkIbST
	FRBz8E7Oqqx42FP2PtnPxOp/Q2S0tR4KcSTtLV0n9DepfLezE2lCKJCO5ewrRSav4Y+ulfO5BOo7j
	QJbafb8zjvFAhIUKYZEWjzvHVeDolgL6bdu1K+4gCsEKwLFGcErBo1btRRQQTZ3ANk4gnYA/QthUV
	Z5hZGkwtqCtl53pgYLqrDb1UtQQMGiKbKcUr/4acAAS3nVh9nUn1i/gXYAzv32LBwHrlHtiGbdjdV
	ARbOOSMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpm9x-0000000GtjY-1uiw;
	Tue, 10 Feb 2026 11:44:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpm9u-0000000GtjA-330o
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 11:44:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpm9s-000119-9r; Tue, 10 Feb 2026 12:43:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpm9r-0004Zc-1Q;
	Tue, 10 Feb 2026 12:43:55 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpm9s-00000005h4s-04KA;
	Tue, 10 Feb 2026 12:43:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Feb 2026 12:43:54 +0100
Message-ID: <20260210114355.1357220-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_034358_766354_9D67E4B1 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] ci: container: set LLVM_SUFFIX instead of CROSS_COMPILE_llvm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To compile with LLVM inside the container, the expectation so far was
that the user would do:

  export LLVM="${CROSS_COMPILE_llvm}"

This is confusing as CROSS_COMPILE is gcc-only and needlessly
cumbersome. The Makefile also accepts LLVM_PREFIX and LLVM_SUFFIX
variables. The utilities are already in PATH, so just set LLVM_SUFFIX to
the correct. -${LLVM_VERSION} suffix.

Users will then have to only set

  export LLVM=1

and GCC builds continue to be unaffected as LLVM_SUFFIX/PREFIX are only
evaluated if ${LLVM} is non-empty.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index 6e4515f7d582..fc1d8f5f9671 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -107,7 +107,7 @@ ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/power
 ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv64-linux/bin/riscv64-linux-
 ENV CROSS_COMPILE_kvx=/opt/gcc-kalray-kvx-v5.2.0/bin/kvx-elf-
 
-ENV CROSS_COMPILE_llvm=-${LLVM_VERSION}
+ENV LLVM_SUFFIX=-${LLVM_VERSION}
 # Workaround for https://github.com/llvm/llvm-project/issues/112458
 RUN ln -Ts /usr/lib/llvm-${LLVM_VERSION}/lib/clang/${LLVM_VERSION}/lib/linux/ \
            /usr/lib/llvm-${LLVM_VERSION}/lib/clang/${LLVM_VERSION}/lib/x86_64-pc-linux-gnu
-- 
2.47.3



