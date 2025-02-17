Delivery-date: Mon, 17 Feb 2025 11:55:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymT-003S0H-2B
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 11:55:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymS-0000J8-H3
	for lore@pengutronix.de; Mon, 17 Feb 2025 11:55:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tbWJyr79pGYZTJKWNHNvC/gcisz9s6kaQ80f6TCDYUQ=; b=mJANwPrL7+keXn42WZt/qWHDfh
	DHdN1h4nV+3Rbm63PnXaKj1dc22lOejkrjeYG04FKhyI+A/wjuANgQfuxki3GxlFCBZ7skn43R2q6
	64oyvgTsoT7YCu5mzy9vXbTPNJp2RKdYN1/b7mF+H4Px+2aRHHN+FRX2nRDSGZxlvtIJeYDXMidkk
	hjZ9VtnwvqGfSB0LvehsfTYXFzAsxEsErgeO5gWLmx7Cb3sJL/a3Kw1l5W0KIK3FHXgbyevSuIjeZ
	FgPrHUnPgVQq4+OhImaaRkHAAMvdBguWwxqrOE/IocfyessGMiXgmN3wUHe/JvUQOovgxnunRzA79
	Sa7Cwe7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjym0-00000004D3y-1FBu;
	Mon, 17 Feb 2025 10:54:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjydj-000000049p9-2GcH
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 10:46:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydh-0006b2-2W; Mon, 17 Feb 2025 11:46:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-001OO8-2n;
	Mon, 17 Feb 2025 11:46:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-007huG-2T;
	Mon, 17 Feb 2025 11:46:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 11:46:11 +0100
Message-Id: <20250217104611.1836442-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
References: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_024615_576553_8DD3E535 
X-CRM114-Status: UNSURE (   9.75  )
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
Subject: [PATCH 4/4] Makefile: clang: fail non-sandbox LLVM builds early
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The sandbox architecture is the only architecture so far that has been
validated to build to completion with clang and function correctly
afterwards.

Until other architectures follow suit, fail the build gracefully for them.

Note that in Linux, CLANG_TARGET_FLAGS_sandbox expands to
$(CLANG_TARGET_FLAGS_$(SRCARCH)). This requires that we have support for
non-sandbox architectures in the first place. Until we do, just make it
a no-op by setting CLANG_TARGET_FLAGS to the same target triple that's used
by default anyway.

Reported-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Makefile.clang | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 874110ea83ad..7e4dfb8622d3 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -1,4 +1,14 @@
 # SPDX-License-Identifier: GPL-2.0-only
+
+CLANG_TARGET_FLAGS_sandbox	:= $(shell $(CC) -print-target-triple)
+CLANG_TARGET_FLAGS		:= $(CLANG_TARGET_FLAGS_$(SRCARCH))
+
+ifeq ($(CLANG_TARGET_FLAGS),)
+$(error add '--target=' option to scripts/Makefile.clang)
+else
+CLANG_FLAGS	+= --target=$(CLANG_TARGET_FLAGS)
+endif
+
 CLANG_FLAGS	+= -Wno-typedef-redefinition
 CLANG_FLAGS	+= -Werror=unknown-warning-option
 CLANG_FLAGS	+= -Werror=ignored-optimization-argument
-- 
2.39.5



